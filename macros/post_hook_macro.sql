{% macro insert_audit_record(model_name, status) %}
    {% set sql %}
        insert into dcp_dev_eu.dbt_bronze.audit_log (
            run_id, run_started_at, model_name, status, inserted_at
        )
        values (
            '{{ invocation_id }}',
            current_timestamp,
            '{{ model_name }}',
            '{{ status }}',
            current_timestamp
        )
    {% endset %}

    {% do run_query(sql) %}
    
{% endmacro %}