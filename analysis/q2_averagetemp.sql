select 
NYC_weather_dim.entry_month, 
avg(facts_table.avg_temp) as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where entry_month = 'April' OR entry_month = 'May' OR entry_month = 'June'
group by NYC_weather_dim.entry_month