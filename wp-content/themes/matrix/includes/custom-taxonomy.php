<?php

/* Categoria de Produto */

register_taxonomy(
    "categoria", 
    "produtos", 
    array(            
          "label" => "Categorias", 
          "singular_label" => "Categoria", 
          "rewrite" => true,
          "hierarchical" => true
    )
);

?>