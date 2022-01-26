with

renamed as (

    select
        id as order_id,
        order_date::date as order_date,
        status,
        user_id as customer_id
    
    from {{ source('jaffle_shop', 'orders') }}

)

select * from renamed
