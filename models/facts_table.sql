with kpifcts as (
    select
        unique_key,
        weather_id,
        entry_date,
        PRCP as precipitation,
        SNOW as snow,
        TAVG as avg_temp,
        TMAX as max_temp,
        TMIN as min_temp
        --count(unique_key) as Total_Complaints--Needs to be made per borough
    
    from cloud-collective.Cloud_Collective_Warehouse.Weather, cloud-collective.Cloud_Collective_Warehouse.311SmokingComplaints
    order by entry_date

)

select * from kpifcts