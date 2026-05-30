{%- macro round(value, decimal=2) -%}
    round({{ value }}, {{ decimal }})
{%- endmacro -%}
