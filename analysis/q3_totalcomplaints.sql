select NYC_weather_dim.entry_month, count(complaint_dim.complaint_type) as Total_Complaints 
from cloud-collective.dbt_cloudcollective.complaint_dim
full join cloud-collective.dbt_cloudcollective.NYC_weather_dim
on complaint_dim.Created_Date = NYC_weather_dim.entry_date
where NYC_weather_dim.entry_date between '2017-07-01' and '2017-09-30'
group by NYC_weather_dim.entry_month
having entry_month = 'July' or entry_month = 'August' or entry_month = 'September'