{%- extends 'nbextensions.tpl' -%}
{%- block header -%}
{{ super() }}

<style>


  .floating-menu {
    font-family: sans-serif;
    background: #F5F5DC;
    padding: 30px;;
    width: 230px;
    z-index: 100;
    position: fixed;
    bottom: 0px;
    right: 0px;
  }

  .floating-menu a, 
  .floating-menu h3 {
    font-size: 0.9em;
    display: block;
    margin: 0 0.5em;
    color: black;
  }
</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script src="https://marcecaro.github.io/jupyter-notes/jquery.toc.js"></script>

<script>
$(document).ready(function(){
            $("#toc").toc({content: "body", headings: "h2,h3,h4"});
            
    });
</script>

{%- endblock header -%}
