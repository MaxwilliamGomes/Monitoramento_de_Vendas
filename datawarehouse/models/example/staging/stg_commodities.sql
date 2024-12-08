-- import

with source as (
    SELECT
          "Date",
          "Close",
           simbolo
    from 
        {{ source('postgres123_eaxc' ,'commodities')}}
    ),

-- renamed

renamed as (

      select 
           cast("Date" as date) as data,
           "Close" as valor_fechamento,
           simbolo
      from 
          source
)


select * from renamed
