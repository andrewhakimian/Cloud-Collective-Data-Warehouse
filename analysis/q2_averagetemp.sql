select 
NYC_weather_dim.entry_month, 
avg(facts_table.avg_temp) as average_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.NYC_weather_dim
where facts_table.entry_date between '2017-04-01' and '2017-06-30'
group by NYC_weather_dim.entry_month 
having entry_month = 'April' or entry_month = 'May' or entry_month = 'June'