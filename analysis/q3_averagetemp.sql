select 
entry_month, 
TAVG as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where entry_month = 'July' OR entry_month = 'August' OR entry_month = 'September'
group by entry_month