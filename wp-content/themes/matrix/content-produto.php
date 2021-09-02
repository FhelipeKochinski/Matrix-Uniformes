<li class="col-sm-3 spotProduto">

	<div class="boxInterno">
	
		<div class="col-sm-3">
			<a href="<?php the_permalink() ?>">
				<figure>
					<?php if(get_field('imagem')){ ?>
						<?php getImagemObj(get_field('imagem')['sizes'], 'post', get_the_title()) ?>
					<?php } else { ?>
						<img src="<?php echo esc_url( home_url( '/' ) ); ?>wp-content/uploads/2021/08/padrao.png" alt="<?php the_title() ?>" />
					<?php } ?>
				</figure>
			</a>
		</div>

		<div class="col-sm-9">

			<a href="<?php the_permalink() ?>">
				<h2><?php the_title() ?></h2>
			</a>

			<div class="descricao">
				<p class="paragrafoProduto"><?php echo get_field('descricao') ?></p>
			</div>

			<a class="botaoGeral hoverZoom" produto="<?php the_title() ?>">SOLICITAR ORÇAMENTO</a>

		</div>


	</div>
	
</li>