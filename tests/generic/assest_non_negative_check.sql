{% test assest_non_negative_check(model, column_names, min_value=0) %}

    select *
    from {{ model }}
    where
        {% for col in column_names %}
            {{ col }} < {{ min_value }}
            {% if not loop.last %} or {% endif %}
        {% endfor %}

{% endtest %}