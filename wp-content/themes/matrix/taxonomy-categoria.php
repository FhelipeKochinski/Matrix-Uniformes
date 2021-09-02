<?php get_header() ?>

<?php $categoriaAtual = get_queried_object(); ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/listaProdutos.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">

<?php include('templates/contents/breadCrumbs.php') ?>

<!-- Lista Produtos -->
<section id="listaProdutos">

	<!-- BoxSEO -->
	<div class="boxSeo">
		<div class="container">
		
			<div class="col-sm-6">

				<div class="internoProduto">

					<h1><?php single_cat_title() ?></h1>

					<div class="clear"></div>
					<div class="borda"></div>
					<div class="clear"></div>

				</div>

				<div class="conteudo">
					<?php echo category_description($categoriaAtual) ?>
				</div>

			</div>

			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem', $categoriaAtual)['sizes'], '2048x2048', $categoriaAtual->name) ?>
			</figure>

		</div>
	</div>
	<!-- /BoxSEO -->

	<!-- Listagem -->
	<section class="listagemProdutos">
		<div class="container">
		
			<?php
				$args = array(
					'post_type' => 'produtos', 
					'tax_query' => array( 
						array(
							'taxonomy' => 'categoria', 
							'field' => 'slug', 
							'terms' => $categoriaAtual
						)
					), 
					'posts_per_page' => -1,
					'order' => 'DESC'
				);
				$wp_query = new WP_Query( $args );
				?>

				<?php if($wp_query->have_posts()){ ?>

					<div class="col-sm-12">

						<ul>
							<?php while($wp_query->have_posts()) : $wp_query->the_post(); ?>
								<?php get_template_part( 'content', 'produto' ); ?>
							<?php endwhile;	?>
						</ul>

					</div>

				<?php } else { ?>

					<div class="semResultados">
						<span>Nenhum produto nessa categoria :(</span>
					</div>

				<?php } ?>

				<?php
					wp_reset_query();
					wp_reset_postdata();
				?>
		
		</div>
	</section>
	<!-- /Listagem -->

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
<!-- /Lista Produtos -->

<!-- Modal Orçamento -->
<section class="modalOrcamento">
	<div class="modalContato">
		<div class="boxFlex">

			<!-- Fecha -->
			<figure id="fechaFormulario">
				<img id="fechaMenuMobile" src="<?php echo esc_url( home_url( '/' ) ); ?>wp-content/uploads/2021/09/fecha-menu.png" alt="Fecha Menu" />
			</figure>
			<!-- /Fecha -->

			<!-- Conteúdo -->
			<div class="boxConteudo">

				<span class="tituloModal">Preencha o formulário abaixo para solicitar orçamento:</span>

				<!-- Formulário -->
				<div class="formulario">
					<?= do_shortcode ('[contact-form-7 id="252" title="Formulário do Modal"]') ?>
				</div>
				<!-- /Formulário -->

			</div>
			<!-- /Conteúdo -->

		</div>
	</div>
</section>
<!-- /Modal Orçamento -->

<?php get_footer() ?>