<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="author" content="Diovan Decol - Muito Mais Digital">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="robots" content="all" />
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<link rel="icon" href="<?php echo esc_url( home_url( '/' ) ); ?>favicon.ico" type="image/x-icon"/>
	<link rel='stylesheet' href="<?php echo get_template_directory_uri(); ?>/css/header.css"/>
	<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">
	<?php wp_head(); ?>

</head>

<body> 

	<!-- Cabeçalho Header -->
	<div class="nav-top">
		<div class="container">
			<div class="row" id="cabecalhoTopo">

				<!-- Phone -->
				<?php if (get_field('telefone', 'options')) { ?>
					<div class="linkHeader telefoneHeader">
						
						<div class="texto">
							<i class="fa fa-phone"></i>
							<a href="tel: <?= linkTelefone(get_field('telefone', 'options')) ?>" id="telefoneHeader">
								<?= get_field('telefone', 'options') ?>
							</a>
						</div>

					</div>
				<?php } ?>
				<!-- /Phone -->

				<!-- Whats -->
				<?php if (get_field('whatsapp', 'options')) { ?>
					<div class="linkHeader whatsappHeader">
						
						<div class="texto">
							<i class="fa fa-whatsapp"></i>
							<a href="tel: <?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsappHeader">
								<?= get_field('whatsapp', 'options') ?>
							</a>
						</div>
						
					</div>
				<?php } ?>
				<!-- /Whats -->

				<!-- E-mail -->
				<?php if (get_field('e-mail', 'options')) { ?>
					<div class="linkHeader email">
					
						<div class="texto">
							<i class="fa fa-envelope-o"></i>
							<a href="mailto: <?= get_field('e-mail', 'options') ?>" id="emailHeader">
								<?= get_field('e-mail', 'options') ?>
							</a>
						</div>

					</div>
				<?php } ?>
				<!-- /E-mail -->
				
			</div>
		</div>
	</div>
	<!-- /Cabeçalho Header -->
		
	<!-- Início Header -->
	<header id="header">

		<!-- Top Header -->
		<div class="topHeader">
			<div class="container">

				<!-- Logo -->
				<figure id="logo">
					<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
						<?php getImagemObj(get_field('logo', 'option')['sizes'], '2048x2048', 'Matrix') ?>
					</a>
				</figure>
				<!-- /Logo -->

				<!-- BoxMenu -->
				<div id="boxMenu">

					<!-- Menu -->
					<div id="menuPrincipal">
						<img id="fechaMenuMobile" src="<?php echo esc_url( home_url( '/' ) ); ?>wp-content/uploads/2021/09/fecha-menu.png" alt="Fecha Menu" />
						<?php wp_nav_menu(array('theme_location' => 'primary', 'container' => '')); ?>
					</div>

				</div>
				<!-- /BoxMenu -->

				<!-- Busca -->
				<div id="buscaHeader">
					<i class="fa fa-search"></i>
				</div>
				<!-- /Busca -->

				<!-- Icone -->
				<div id="menuMobile">
					<i class="fa fa-bars"></i>
				</div>
				<!-- /Icone -->

				<div class="clear"></div>

			</div>
		</div>
		<!-- /Fim Top Header -->
		
		<!-- BuscaFull -->
		<div id="buscaFull">
			<div class="boxInterno">
				<figure id="fechaBusca">
					<img src="<?php echo esc_url( home_url( '/' ) ); ?>wp-content/uploads/2021/09/fecha-menu.png" alt="Fecha Busca" />
				</figure>
				<?php get_search_form() ?>
			</div>
		</div>
		<!-- /BuscaFull -->
		
	</header>
	<!-- /Fim Header -->