select 
NYC_weather_dim.entry_month, 
avg(facts_table.avg_temp) as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where facts_table.entry_date between '2017-07-01' and '2017-09-30'
group by NYC_weather_dim.entry_month 
having entry_month = 'July' or entry_month = 'August' or entry_month = 'September'