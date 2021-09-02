<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/footer.css">
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/geral.css">

<!-- Footer -->
<footer id="footer">

	<!-- Container -->
	<div class="container">
	
		<!-- Botão Subir -->
		<div class="botaoSubir">
			<i class="fa fa-angle-up"></i>
		</div>
		<!-- /Subir -->

		<!-- Logo -->
		<div class="col-sm-4 logo">
			<figure id="logoFooter">
				<?php getImagemObj(get_field('logo_footer', 'option')['sizes'], '2048x2048', 'Icea') ?>
			</figure>
		</div>
		<!-- /Logo -->

		<!-- Dados Footer -->
		<div class="dadosFooter">

			<!-- Menu Empresa -->
			<div class="col-sm-3 menu institucional">
				<span class="tituloFooter">A Empresa</span>
				
				<!-- Endereço -->
				<div class="enderecoFooter">
					<i class="fa fa-thumb-tack"></i>
					<span><?= get_field('endereco', 'options') ?></span>
				</div>

				<!-- CEP -->
				<div class="cepFooter">
					<span><?= get_field('cep', 'options') ?></span>
				</div>

			</div>
			<!-- /Menu Empresa -->

			<!-- Contatos -->
			<div class="col-sm-3 contatos">

				<span class="tituloFooter">Contato</span>

				<!-- E-mail -->
				<?php if (get_field('e-mail', 'options')) { ?>
					<a href="mailto: <?= get_field('e-mail', 'options') ?>" id="emailRodape">
						<i class="fa fa-envelope-o"></i>
						<span><?= get_field('e-mail', 'options') ?></span>
					</a>
				<?php } ?>

				<!-- Whatspp -->
				<?php if (get_field('whatsapp', 'options')) { ?>
					<div class="clear"></div>
					<a href="https://api.whatsapp.com/send?phone=55<?= linkTelefone(get_field('whatsapp', 'options')) ?>" id="whatsappRodape" target="_blank">
						<i class="fa fa-whatsapp"></i>	
						<span><?= get_field('whatsapp', 'options') ?></span>
					</a>
				<?php } ?>

				<!-- Telefone -->
				<?php if (get_field('telefone', 'options')) { ?>
					<div class="clear"></div>
					<a href="tel: <?= linkTelefone(get_field('telefone', 'options')) ?>" id="telefoneRodape">
						<i class="fa fa-phone"></i>
						<span><?= get_field('telefone', 'options') ?></span>
					</a>
				<?php } ?>

			</div>
			<!-- /Contatos -->

			<!-- Redes Sociais -->
			<div class="col-sm-2 redesSociais">

				<span class="tituloFooter">Redes Sociais</span>

				<!-- Facebook -->
				<?php if(get_field('facebook', 'option')){ ?>
					<a href="<?php echo get_field('facebook', 'option') ?>" target="_blank">
						<i class="fa fa-facebook-square" aria-hidden="true"></i>
					</a>
				<?php } ?>

				<!-- Instagram -->
				<?php if(get_field('instagram', 'option')){ ?>
					<a href="<?php echo get_field('instagram', 'option') ?>" target="_blank">
						<i class="fa fa-instagram" aria-hidden="true"></i>
					</a>
				<?php } ?>

			</div>
			<!-- /Redes Sociais -->

		</div>
		<!-- /Dados Footer -->

	</div>
	<!-- /Container -->

</footer>
<!-- /Footer -->

<!-- Sub Footer -->
<div id="subfooter">
	<div class="container">

		<!-- Logo MMD -->
		<figure>
			<a href="https://muitomaisdigital.com.br/" target="_blank" title="Criação de Sites em Curitiba">
				<img src="<?php echo esc_url( home_url( '/' ) ); ?>wp-content/uploads/2021/09/logo-mmd.png" alt="Criação de Sites em Curitiba">
			</a>
		</figure>

	</div>
</div>
<!-- /Sub Footer -->

<script src="<?php echo get_template_directory_uri()?>/assets/scripts.js"></script>

<?php wp_footer(); ?>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@700&family=Work+Sans&display=swap" rel="stylesheet">

</body>
</html>
