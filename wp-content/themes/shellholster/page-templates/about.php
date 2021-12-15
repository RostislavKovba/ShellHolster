<?php
/**
 * Template name: About
 */

get_header();

?>

<main class="page-wrapper about-us-page">

    <?php get_template_part( 'template-parts/content', 'heading' ); ?>

    <div class="container">
        <div class="editor">
            <?php the_content(); ?>

            <?php acf_button('content_button', 'btn orange'); ?>
        </div>
    </div>

    <div class="why-us" style="background-image:url('<?php the_field('whу_us_bg'); ?>');">
        <div class="container">
            <div class="why-us-list">
                <h3 class="title-2"><?php the_field('whу_us_title'); ?></h3>
                <?php the_field('whу_us_list'); ?>
            </div>
        </div>
    </div>

    <div class="latest-products">
        <div class="container">
            <p class="subtitle"><?php the_field('latest_suptitle'); ?></p>
            <h2 class="title"><?php the_field('latest_title'); ?></h2>
            <?php acf_button('latest_button', 'btn navy'); ?>
        </div>
    </div>
</main>

<?php

get_footer();

?>


