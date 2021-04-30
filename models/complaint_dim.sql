{{ config (
    materialized="table"
)}}

with complaint as (

    select
       
        unique_key,
        Created_Date,
        Created_Time,
        Complaint_Type,
        OPEN_DATA_CHANNEL_TYPE as Channel_Type

    from cloud-collective.Cloud_Collective_Warehouse.311SmokingComplaints 
)

select * from complaint