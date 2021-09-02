<?php

/* BANNERS ***********************************/

add_action('init', 'type_post_banners');
function type_post_banners() { 
    $labels = array(
        'name' => _x('Banners', 'post type general name'),
        'singular_name' => _x('Banner', 'post type singular name'),
        'add_new' => _x('Adicionar Banner', 'Novo Banner'),
        'add_new_item' => __('Novo Banner'),
        'edit_item' => __('Editar Banner'),
        'new_item' => __('Novo Banner'),
        'view_item' => __('Ver Banner'),
        'search_items' => __('Procurar Banners'),
        'not_found' =>  __('Nenhum banner encontrado'),
        'not_found_in_trash' => __('Nenhum banner encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Banners'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,			
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => false,
        'hierarchical' => false,
        'menu_position' => 7,	
        'menu_icon' => 'dashicons-images-alt2',
        'supports' => array('title','thumbnail')
      );

    register_post_type( 'banners' , $args );
    flush_rewrite_rules();
}

/* PRODUTOS ***********************************/

add_action('init', 'type_post_produtos');
function type_post_produtos() { 
    $labels = array(
        'name' => _x('Produtos', 'post type general name'),
        'singular_name' => _x('Produto', 'post type singular name'),
        'add_new' => _x('Adicionar Produto', 'Novo Produto'),
        'add_new_item' => __('Novo Produto'),
        'edit_item' => __('Editar Produto'),
        'new_item' => __('Novo Produto'),
        'view_item' => __('Ver Produto'),
        'search_items' => __('Procurar Produtos'),
        'not_found' =>  __('Nenhum produto encontrado'),
        'not_found_in_trash' => __('Nenhum produto encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Produtos'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,			
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => false,
        'hierarchical' => false,
        'menu_position' => 7,	
        'menu_icon' => 'dashicons-cart',
        'supports' => array('title')
      );

    register_post_type( 'produtos' , $args );
    flush_rewrite_rules();
}

/* CLIENTES***********************************/

add_action('init', 'type_post_clientes');
function type_post_clientes() { 
    $labels = array(
        'name' => _x('Clientes', 'post type general name'),
        'singular_name' => _x('Cliente', 'post type singular name'),
        'add_new' => _x('Adicionar Cliente', 'Novo Cliente'),
        'add_new_item' => __('Novo Cliente'),
        'edit_item' => __('Editar Cliente'),
        'new_item' => __('Novo Cliente'),
        'view_item' => __('Ver Cliente'),
        'search_items' => __('Procurar Clientes'),
        'not_found' =>  __('Nenhum cliente encontrado'),
        'not_found_in_trash' => __('Nenhum cliente encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Clientes'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,			
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => false,
        'hierarchical' => false,
        'menu_position' => 7,	
        'menu_icon' => 'dashicons-admin-users',
        'supports' => array('title')
      );

    register_post_type( 'clientes' , $args );
    flush_rewrite_rules();
}

/* Fornecedores***********************************/

add_action('init', 'type_post_fornecedores');
function type_post_fornecedores() { 
    $labels = array(
        'name' => _x('Fornecedores', 'post type general name'),
        'singular_name' => _x('Fornecedor', 'post type singular name'),
        'add_new' => _x('Adicionar Fornecedor', 'Novo Fornecedor'),
        'add_new_item' => __('Novo Fornecedor'),
        'edit_item' => __('Editar Fornecedor'),
        'new_item' => __('Novo Fornecedor'),
        'view_item' => __('Ver Fornecedor'),
        'search_items' => __('Procurar Fornecedores'),
        'not_found' =>  __('Nenhum fornecedor encontrado'),
        'not_found_in_trash' => __('Nenhum fornecedor encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Fornecedores'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,			
        'query_var' => true,
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => false,
        'hierarchical' => false,
        'menu_position' => 7,	
        'menu_icon' => 'dashicons-clipboard',
        'supports' => array('title')
      );

    register_post_type( 'fornecedores' , $args );
    flush_rewrite_rules();
}

?>