<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<header class="header">
    <div class="container">

        <?php the_custom_logo(); ?>

        <?php wp_nav_menu([
            'theme_location'  => 'menu-primary',
            'menu_id'         => 'primary-menu',
            'container'       => false,
            'menu_class'      => ''
        ]) ?>

        <div class="shop-data">
            <div class="search-block">
                <i class="fas fa-search"></i>
                <i class="fas fa-times"></i>
                <?php get_search_form(); ?>
            </div>

            <?php shellholster_woocommerce_header_cart(); ?>

            <a href="<?= esc_url( get_permalink( get_option( 'woocommerce_myaccount_page_id') ) ); ?>" class="accout">
                <i class="far fa-user"></i>
            </a>

            <div class="menu">
                <i class="fas fa-bars"></i>
                <i class="fas fa-times"></i>
            </div>
        </div>

    </div>
</header>
