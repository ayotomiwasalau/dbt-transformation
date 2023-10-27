{% test contains_only_integers(model, column_name) %}
    SELECT {{column_name}}
    FROM {{model}}
    WHERE {{column_name}} ~ '^\d+$'
{% endtest %}
