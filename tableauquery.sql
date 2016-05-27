select 
	DISTINCT ON (_background_tasks.id)
	'TASKID:', _background_tasks.id, ' - ',
    'OWNER:', _datasources.owner_name, ' - ', 
	'TITLE:', _background_tasks.title, 
    'STARTED:', _background_tasks.started_at,' - ', 
    'COMPLETED:', _background_tasks.completed_at, ' - ',
    'CREATED:', _background_tasks.created_at, ' - ',
    'BACKGROUNDERID:', _background_tasks.backgrounder_id, ' - ',
    'JOB:', _background_tasks.job_name, ' - ',
    'PRIORITY:', _background_tasks.priority, ' - ',
	'NOTES:', _background_tasks.notes
from _datasources, 
     _background_tasks 
where _background_tasks.site_id = _datasources.site_id 
and   completed_at >= CURRENT_TIMESTAMP  - interval '5 minutes'
and   finish_code=1