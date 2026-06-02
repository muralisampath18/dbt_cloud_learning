{# Reference the current model name#}
{{this}} 

{# target#}
{{target.name}}

{# catalog name#}
{{target.database}}

{# schema name#}
{{target.schema}}

{# Environmental variable#}
{{ env_var('DBT_LANDING_SCHEMA')}}