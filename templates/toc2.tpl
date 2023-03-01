{%- extends 'nbextensions.tpl' -%}

{%- block header -%}
{{ super() }}


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://marcecaro.github.io/jupyter-notes/jquery.toc.js"></script>

<script>
$(document).ready(function(){
            $("#toc").toc({content: "body", headings: "h2,h3,h4"});
            
    });
</script>

{%- endblock header -%}
