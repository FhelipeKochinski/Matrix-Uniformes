<?php
/**
 * Template Name: Quem Somos
 */
?>

<?php get_header() ?>

<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/quemSomos.css">

<!-- BreadCrumbs -->
<?php include('contents/breadCrumbs.php') ?>

<section id="paginaQuemSomos">

    <!-- Conteúdo 1 -->
    <div class="conteudo_quemSomos">
		<div class="container">

			<!-- Interno -->
			<div class="col-sm-6 texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_quemSomos'), 'h1') ?>

                <!-- Subtitulo -->
				<?php if (get_field('subtitulo')) { ?>
					<span class="subtitulo"><?php echo get_field('subtitulo') ?></span>
				<?php } ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('texto_quemSomos') ?>
				</div>

			</div>

			<!-- Img -->
			<figure class="col-sm-6">
				<?php getImagemObj(get_field('imagem_quemSomos')['sizes'], '2048x2048', get_field('titulo_quemSomos')) ?>
			</figure>

        </div>
    </div>
	<!-- /Conteúdo 1 -->

    <!-- Conteúdo 2 -->
    <div class="missao">
		<div class="container">
			<div class="texto">

				<!-- Título -->
				<?php tituloPrincipal(get_field('titulo_quem_content_2'), 'h2') ?>

				<!-- Texto -->
				<div class="textoBox">
					<?= get_field('conteudo_quem_content_2') ?>
				</div>

			</div>
        </div>
    </div>
	<!-- /Conteúdo 2 -->

    <!-- Conteúdo 3 -->
    <div class="qualidade">
        <div class="container">
            <div class="texto">

                <!-- Título -->
                <?php tituloPrincipal(get_field('titulo_quem_content_3'), 'h2') ?>

                <!-- Texto -->
                <div class="textoBox">
                    <?= get_field('conteudo_quem_content_3') ?>
                </div>

            </div>
		</div>
    </div>
	<!-- /Conteúdo 3 -->

</section>

<?php get_footer() ?>