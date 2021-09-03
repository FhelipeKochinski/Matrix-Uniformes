<?php 
get_header();
$s = get_search_query();
?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/listaProdutos.css">

<?php include('templates/contents/breadCrumbs.php') ?>

<section id="listagemProdutos">

	<!-- Título -->
	<div class="container buscaProduto">
		<?php tituloPrincipal('Resultados para: ' . $s, 'h1') ?>
	</div>

	<!-- Listagem -->
	<section class="listagemProdutos">

		<!-- Conteúdo -->
		<div class="container">
		
			<div class="conteudoBusca">
			
				<div class="col-sm-9">

					<ul class="lista_noticias">
						
						<?php $cont = 1; ?>

						<?php if($wp_query->have_posts()) : ?>

							<?php while ( have_posts() ) : ?>
							
								<?php the_post(); ?>
								
								<?php get_template_part('content','produto'); ?>
							
							<?php endwhile; ?>

							<?php
							the_posts_pagination( array(
								'prev_text' => '<i class="fa fa-angle-double-left" aria-hidden="true"></i>',
								'next_text' => '<i class="fa fa-angle-double-right" aria-hidden="true"></i>'
							) );
							wp_reset_query();
							wp_reset_postdata();
							?>

						<?php else : ?>

							<p style="font-size: 22px; margin: 100px 0;">Desculpe, não foram encontrados resultados para a sua pesquisa.</p>

						<?php endif; ?>

					</ul>

				</div>

			</div>
			
		</div>
	</section>
	<!-- /Conteúdo -->
	
	<!-- Todas Categorias -->
	<section class="todasCategorias">
		<div class="container">
		
			<!-- Título -->
			<div class="tituloPrincipal center">
			
				<div class="boxInterno center">
					<h2 class="titulo">MAIS CATEGORIAS</h2>

					<div class="clear"></div>

					<div class="borda"></div>
				</div>
			
			</div>

			<!-- Listagem Categorias -->
			<ul>
				<?php foreach (get_terms('categoria') as $cat) : ?>
					<li class="col-sm-3">
						<h3><?= $cat->name ?></h3>
						<a class="botaoGeral hoverZoom" href="<?= get_term_link($cat->slug, 'categoria') ?>">SOLICITAR ORÇAMENTO</a>
					</li>
				<?php endforeach; ?>
			</ul>
		
		</div>

	</section>
	<!-- /Todas Categorias -->

</section>

<?php get_footer(); ?>