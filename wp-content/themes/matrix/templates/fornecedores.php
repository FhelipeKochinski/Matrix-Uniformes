<?php
/**
 * Template Name: C&F
 */
?>

<?php get_header() ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/fornecedores.css">

<!-- BreadCrumbs -->
<?php include('contents/breadCrumbs.php') ?>

<section id="pagina_Clientforne">

    <!-- Conteúdo -->
    <div class="conteudo__Clientforne">
		<div class="container">

            <!-- TítuloTexto -->
			<div class="col-sm-6 texto">

				<?php tituloPrincipal(get_field('titulo_Clientforne'), 'h1') ?>

				<div class="textoBox">
					<?= get_field('conteudo_Clientforne') ?>
				</div>

			</div>
            <!-- /TítuloTexto -->

            <!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_Clientforne')['sizes'], '2048x2048', get_field('titulo_Clientforne')) ?>
			</figure>
            <!-- /Img -->

        </div>
    </div>
    <!-- /Conteúdo -->

    <!-- Clientes -->
	<div class="clientesLista">

        <!-- Título -->
        <div class="container">
            <div class="tituloPrincipal center">
                <div class="boxInterno center">
                    <h2 class="titulo">CLIENTES</h2>
                    <div class="clear"></div>
                    <div class="borda"></div>
                </div>
            </div>
        </div>
        <!-- /Título -->

        <!-- Loop Clientes -->
        <ul class="listaClientes">
            <?php
                $args = array('post_type' => 'clientes', 'posts_per_page' => -1);
                $wp_query = new WP_Query( $args );
            ?>

            <?php if($wp_query->have_posts()) : ?>
                <?php while($wp_query->have_posts()) : $wp_query->the_post(); ?>
                    <?php get_template_part('content','cliente'); ?>
                <?php endwhile;	?>
            <?php endif; ?>
        </ul>
        <!-- /Loop Clientes -->

    </div>
    <!-- /Clientes -->

    <!-- Fornecedores -->
    <div class="fornecedoresLista">
    
        <!-- Título -->
        <div class="container">
            <div class="tituloPrincipal center">
                <div class="boxInterno center">
                    <h2 class="titulo">FORNECEDORES</h2>
                    <div class="clear"></div>
                    <div class="borda"></div>
                </div>
            </div>
        </div>
        <!-- /Título -->
        
        <!-- Loop Fornecedores -->
        <ul class="listaFornecedores">

            <?php
                $args = array('post_type' => 'fornecedores', 'posts_per_page' => -1);
                $wp_query = new WP_Query( $args );
            ?>

            <?php if($wp_query->have_posts()) : ?>
                <?php while($wp_query->have_posts()) : $wp_query->the_post(); ?>
                    <?php get_template_part('content','cliente'); ?>
                <?php endwhile;	?>
            <?php endif; ?>

        </ul>
        <!-- /Loop Fornecedores -->

    </div>
    <!-- /Fornecedores -->

</section>

<?php get_footer() ?>