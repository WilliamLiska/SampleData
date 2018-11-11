#create a temp table with only work dates
CREATE TEMPORARY TABLE IF NOT EXISTS workDates AS (
select * from dates
where day_of_week not in ('Saturday','Sunday')
and date between '2018-01-01' and '2018-10-01');

## Generate some data by multiplying TeamMembers x WorkDescriptions x work dates
## Now, we could get better work distributions by using Mockaroo to make better hours per work description type, but that would be more than the free plan allows.  Maybe in the future.
CREATE TEMPORARY TABLE IF NOT EXISTS timesheetData AS (
select TeamMembers.Id 'TeamMemberId', 
	   workDates.date, 
	   WorkDescriptions.id 'WorkDescId', 
	   (FLOOR(RAND()*(8-0)+0) + 0.0) 'Hours'
FROM TeamMembers, workDates, WorkDescriptions);

## HoursToAdjust will store the necessary adjustment per day, per employee
CREATE TEMPORARY TABLE IF NOT EXISTS hoursToAdjust AS (
select * from (
select sum(Hours) totalhours, 
	   (8 - sum(Hours)) adjustment,
	   count(TeamMemberId) adjustOverRows,
	   round(((8 - sum(Hours))/count(TeamMemberId)),1) adjustmentPerRow,
	   TeamMemberId, 
	   date from timesheetData
group by TeamMemberId, date) overhours
where totalhours != 8
);

## Update the timesheet rows based on the calculation from hoursToAdjust
UPDATE timesheetData INNER JOIN hoursToAdjust
	ON timesheetData.TeamMemberId = hoursToAdjust.TeamMemberId
	and timesheetData.date = hoursToAdjust.date
SET Hours = CASE
		WHEN timesheetData.Hours + hoursToAdjust.adjustmentPerRow < 0 THEN 0
		ELSE timesheetData.Hours + hoursToAdjust.adjustmentPerRow
	END;


## To review the results
SELECT TeamMemberId, avg(HoursPerDay) FROM(
	SELECT t.TeamMemberId, t.date, sum(t.Hours) HoursPerDay
	FROM timesheetData t
	GROUP BY date, TeamMemberId) q
	GROUP BY TeamMemberId;

## To populate the final Timesheets table
INSERT INTO Timesheets (TeamMember_Id, Work_Id, Date, Hours)
SELECT TeamMemberId, WorkDescId, date, Hours
FROM timesheetData;

#DROP TABLE workDates;
#DROP TABLE timesheetData;
#DROP TABLE hoursToAdjust;