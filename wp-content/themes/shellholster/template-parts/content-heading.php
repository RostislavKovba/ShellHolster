<?php
/**
 * Template part for displaying heading content
 */

?>

<div class="page-heading">
    <div class="container">
        <h1 class="title-3">
            <?php the_title(); ?>
        </h1>

        <h2 class="subtitle-2">
            <?php the_field('hero_subtitle'); ?>
        </h2>

        <ul class="breadcrumbs">
            <?php the_breadcrumb(); ?>
        </ul>
    </div>
</div>