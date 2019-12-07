{% extends 'markdown.tpl' %}

{% block in_prompt %}
<div class="prompt input_prompt">
    In [{{ cell.execution_count if cell.execution_count else ' ' }}]:
</div>
{% endblock in_prompt %}

{% block output_prompt %}
<div class="prompt output_prompt">
    Out [{{ cell.execution_count if cell.execution_count else ' ' }}]:
</div>
{% endblock output_prompt %}

{% block body %}
 {{ super() | replace( '(images/', '(/assets/images/') }}
{% endblock body %}
