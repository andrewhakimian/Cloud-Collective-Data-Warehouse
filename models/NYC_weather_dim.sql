{{ config (
    materialized="table"
)}}

with weather as (

    select
        weather_id,
        entry_date,
        PRCP as precipitation,
        SNOW,
        TAVG as avgtemp,
        TMAX as maxtemp,
        TMIN as mintemp,
        weather_desc

    from cloud-collective.Cloud_Collective_Warehouse.Weather
)

select * from weather