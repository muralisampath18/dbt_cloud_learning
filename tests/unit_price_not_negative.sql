{{config(severity = 'warn')}}

SELECT
*
FROM
{{ source('landing','orders') }}
WHERE unit_price < -1 and quantity < -1