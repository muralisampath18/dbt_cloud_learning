{% macro create_audit_table() %}

    {% set sql %}
        create table if not exists dcp_dev_eu.dbt_bronze.audit_log (
            run_id string,
            run_started_at timestamp,
            model_name string,
            status string,
            inserted_at timestamp
        )
    {% endset %}
 
    {% do run_query(sql) %}

{% endmacro %}