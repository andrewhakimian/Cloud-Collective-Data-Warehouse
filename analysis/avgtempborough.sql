select borough,
avg(avg_temp) as avg_annual_temp
from cloud-collective.dbt_cloudcollective.facts_table, cloud-collective.dbt_cloudcollective.location_dim
Group by location_dim.borough
