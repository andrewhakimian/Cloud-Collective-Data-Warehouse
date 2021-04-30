with kpifcts as (
    select
        unique_key,
        entry_date,
        TAVG as AvgTempQtr, --Needs to be made per quarter
        count(unique_key) as SumComplaintsBoro, --Needs to be made per borough
        count(unique_key) as SumComplaintsQtr --Needs to be made per quarter
    
    from cloud-collective.Cloud_Collective_Warehouse.Weather, cloud-collective.Cloud_Collective_Warehouse.311SmokingComplaints
    group by 1 


)

select * from kpifcts