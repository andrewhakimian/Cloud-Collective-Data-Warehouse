{{ config (
    materialized="table"
)}}

with location as (

    select
       
        unique_key,
        Location_Type,
        Incident_Zip,
        Borough,
        Latitude,
        Longitude,
        Location

    from cloud-collective.Cloud_Collective_Warehouse.311SmokingComplaints 
)

select * from location