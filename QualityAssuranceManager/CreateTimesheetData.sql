#create a temp table with only work dates
CREATE TEMPORARY TABLE IF NOT EXISTS workdates AS (
select * from dates
where day_of_week not in ('Saturday','Sunday')
and date between '2018-01-01' and '2018-10-01');

## Generate some data by multiplying TeamMembers x WorkDescriptions x work dates
select TeamMembers.Id 'TeamMemberId', workdates.date, WorkDescriptions.id 'WorkDescId', FLOOR(RAND()*(8-0)+0) 'Hours' from TeamMembers, workdates, WorkDescriptions;


SELECT FLOOR(RAND()*(8-0)+0);

DROP TABLE workdates;