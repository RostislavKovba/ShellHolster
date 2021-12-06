<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 */
?>

<?php get_template_part( 'template-parts/content', 'heading' ); ?>

<div class="container editor">
    <?php the_content(); ?>
</div>