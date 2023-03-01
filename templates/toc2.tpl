{%- extends 'nbextensions.tpl' -%}
{%- block header -%}
{{ super() }}

<style>


  .floating-menu {
    font-family: sans-serif;
    background: #F5F5DC;
    padding: 15px;;
    width: 330px;
    z-index: 100;
    position: fixed;
    bottom: 0px;
    right: 0px;
  }
  .part-menu {
    font-family: sans-serif;
    background: #F5F5DC;
    padding: 15px;;
    width: 230px;
    z-index: 100;

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


<style>
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 10px;
  width: 95%;
  border: 10px;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.collapsible:after {
  content: '\002B';
  color: white;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.content {
  padding: 0 18px;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}
</style>

<script>
$(document).ready(function(){
            $("#toc").toc({content: "body", headings: "h2,h3,h4"});
            var coll = document.getElementsByClassName("collapsible");
            
            var i;
            for (i = 0; i < coll.length; i++) {
              coll[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var content = this.nextElementSibling;
                if (content.style.maxHeight){
                  content.style.maxHeight = null;
                } else {
                  content.style.maxHeight = content.scrollHeight + "px";
                } 
              });
            }
    });
</script>

<div class="floating-menu">
<button type="button" class="collapsible">Table Of Content</button>
<ul id="toc" class="content part-menu"></ul>
</div>

{%- endblock header -%}
