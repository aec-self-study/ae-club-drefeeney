select 
    date_trunc(first_order_at, month) as signup_month,
    count(*) as new_customers

from {{ ref('customers') }} -- from `aec-students.dbt_dre.customers`

group by 1
order by 1