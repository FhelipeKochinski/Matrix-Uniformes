<?php
/**
 * Template Name: Home
 */
?>

<?php get_header() ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/home.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">

<section id="paginaInicial">

	<!-- Slide Principal -->
	<?php include( "contents/bannerPrincipal.php") ?>

	<!-- Conteúdo 1 -->
	<div class="conteudo_camisetas">
		<div class="container">

			<!-- Interno -->
			<div class="col-sm-6 texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_camisetas'), 'h1') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_camisetas') ?>
				</div>

				<!-- Link -->
				<?php if (get_field('link_shorts')) { ?>
					<a class="botaoGeral hoverZoom" href="<?= get_field('link_shorts') ?>">CONFIRA NOSSAS OPÇÕES</a>
				<?php } ?>

			</div>

			<!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_camisetas')['sizes'], '2048x2048', get_field('titulo_camisetas')) ?>
			</figure>

		</div>
	</div>
	<!-- /Conteúdo 1 -->

	<!-- Conteúdo 2 -->
	<div class="conteudo_shorts">
		<div class="container">
		
			<!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_shorts')['sizes'], '2048x2048', get_field('titulo_shorts')) ?>
			</figure>

			<!-- Interno -->
			<div class="col-sm-6 texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_shorts'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_shorts') ?>
				</div>

				<!-- Link -->
				<?php if (get_field('link_shorts')) { ?>
					<a class="botaoGeral hoverZoom" href="<?= get_field('link_shorts') ?>">CONFIRA NOSSAS OPÇÕES</a>
				<?php } ?>

			</div>

		</div>
	</div>
	<!-- /Conteúdo -->
	
	<!-- Conteúdo 3 -->
	<div class="conteudo_bones">
		<div class="container">

			<!-- Interno -->
			<div class="col-sm-6 texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_bones'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_bones') ?>
				</div>

				<!-- Link -->
				<?php if (get_field('link_bones')) { ?>
					<a class="botaoGeral hoverZoom" href="<?= get_field('link_bones') ?>">CONFIRA NOSSAS OPÇÕES</a>
				<?php } ?>

			</div>

			<!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_bones')['sizes'], '2048x2048', get_field('titulo_bones')) ?>
			</figure>

		</div>
	</div>
	<!-- /Conteúdo 3 -->

	<!-- C&F -->
	<div class="clientesFornecedores">

		<div class="container">

			<!-- Título -->
			<div class="tituloPrincipal center">
				<div class="boxInterno center">
					<h2 class="titulo"><?= get_field('titulo_clientes_fornecedores')?></h2>
				<div class="clear"></div>
				<div class="borda"></div>
			</div>

		</div>

		<!-- Loop C&F -->
		<?php listClients(get_field('lista_clientes_fornecedores')) ?>

			<!-- Botão C&F -->
			<div class="divClienteFornecedor">
				<?php if (get_field('link_cliente_fornecedor')) { ?>
					<a class="botaoGeral hoverZoom" href="<?= get_field('link_cliente_fornecedor') ?>">SAIBA MAIS</a>
				<?php } ?>
			</div>

		</div>

	</div>
	<!-- /C&F -->

    <!-- Quem Somos -->
    <div class="quemSomos">
        <div class="container">

			<!-- Interno -->
            <div class="col-sm-6 texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_quem_somos'), 'h1') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_quem_somos') ?>
				</div>

				<!-- Link -->
				<?php if (get_field('link_quem_somos')) { ?>
					<a class="botaoGeral hoverZoom" href="<?= get_field('link_quem_somos') ?>">SAIBA MAIS</a>
				<?php } ?>

			</div>

			<!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_quem_somos')['sizes'], '2048x2048', get_field('titulo_quem_somos')) ?>
			</figure>

        </div>
    </div>
	<!-- /Quem Somos -->

</section>

<?php get_footer() ?>