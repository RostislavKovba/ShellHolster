<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 */
?>

<?php get_template_part( 'template-parts/content', 'heading' ); ?>

<?php $class = ( is_cart() || is_checkout() || is_account_page() )  ? '' : 'editor'; ?>

<div class="container <?= $class ?>">
    <?php the_content(); ?>
</div>