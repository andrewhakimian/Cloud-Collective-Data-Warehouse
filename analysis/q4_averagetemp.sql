select 
entry_month, 
TAVG as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where entry_month = 'October' OR entry_month = 'November' OR entry_month = 'December'
group by entry_month