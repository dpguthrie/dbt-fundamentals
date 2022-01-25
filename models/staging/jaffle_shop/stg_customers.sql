with

renamed as (
    select
        id,
        first_name,
        last_name
    from {{ source('jaffle_shop', 'customers') }}
)

select * from renamed
