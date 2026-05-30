{%- macro multiple_columns(cols) -%}
    {%- for col in cols -%}
        {{ col }}
        {%- if not loop.last -%} * {%- endif -%}
    {%- endfor -%}
{%- endmacro -%}