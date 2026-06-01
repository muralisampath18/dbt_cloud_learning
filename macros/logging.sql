{% macro audit_logging() %}
    {{ log('this is logging message', info = True)}}
{% endmacro%}