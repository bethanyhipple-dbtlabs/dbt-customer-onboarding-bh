
with source as (

    select * from {{ source('jaffle_chats', 'chats') }}

),

renamed as (

    select
        id,
        customerid,
        productid,
        started,
        ended,
        category,
        created_timestamp,
        flavor,
        users

    from source

)

select * from renamed