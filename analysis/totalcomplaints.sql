select borough, count(complaint_dim.unique_key) as Total_Complaints
from cloud-collective.dbt_cloudcollective.complaint_dim, cloud-collective.dbt_cloudcollective.location_dim
group by borough