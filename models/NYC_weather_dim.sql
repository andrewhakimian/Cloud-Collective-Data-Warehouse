{{ config (
    materialized="table"
)}}

with weather as (

    select
        weather_id,
        entry_date,
        entry_month,
        entry_day,
        entry_year,
        weather_desc

    from cloud-collective.Cloud_Collective_Warehouse.Weather
    order by entry_date
)

select * from weather