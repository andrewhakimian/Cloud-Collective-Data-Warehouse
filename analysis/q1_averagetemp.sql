select 
entry_month, 
TAVG as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where entry_month = 'January' OR entry_month = 'February' OR entry_month = 'March'
group by entry_month