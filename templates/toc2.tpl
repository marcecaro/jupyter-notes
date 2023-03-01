{%- extends 'nbextensions.tpl' -%}

{%- block header -%}
{{ super() }}

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://marcecaro.github.io/jupyter-notes/main.css">

<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://marcecaro.github.io/jupyter-notes/jquery.toc.js"></script>


<script>
$(document).ready(function(){
            $("#toc").toc({content: "body", headings: "h2,h3,h4"});
            
    });
</script>

{%- endblock header -%}
