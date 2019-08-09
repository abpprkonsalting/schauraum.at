<?php
global $avia_config, $post_loop_count;

$post_loop_count= 1;
$post_class 	= "post-entry-".avia_get_the_id();



// check if we got posts to display:
if (have_posts()) :

	while (have_posts()) : the_post();
?>

		<article class='post-entry post-entry-type-page <?php echo $post_class; ?>' <?php avia_markup_helper(array('context' => 'entry')); ?>>

			<div class="entry-content-wrapper clearfix">
				
				<div style="height: 300px;background-color:red;">
					<h1>Esto es solo prueba</h1>
				</div>

			</div>

		</article><!--end post-entry-->


<?php
	$post_loop_count++;
	endwhile;
	else:
?>

    <article class="entry">
        <header class="entry-content-header">
            <h1 class='post-title entry-title'><?php _e('Nothing Found', 'avia_framework'); ?></h1>
        </header>

        <?php get_template_part('includes/error404'); ?>

        <footer class="entry-footer"></footer>
    </article>

<?php

	endif;
?>
