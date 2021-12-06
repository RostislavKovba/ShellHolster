<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package shellholster
 */

/**
 * Adds custom classes to the array of body classes.
 *
 * @param array $classes Classes for the body element.
 * @return array
 */
function shellholster_body_classes( $classes ) {
	// Adds a class of hfeed to non-singular pages.
	if ( ! is_singular() ) {
		$classes[] = 'hfeed';
	}

	// Adds a class of no-sidebar when there is no sidebar present.
	if ( ! is_active_sidebar( 'sidebar-1' ) ) {
		$classes[] = 'no-sidebar';
	}

	return $classes;
}
//add_filter( 'body_class', 'shellholster_body_classes' );

/**
 * Add a pingback url auto-discovery header for single posts, pages, or attachments.
 */
function shellholster_pingback_header() {
	if ( is_singular() && pings_open() ) {
		printf( '<link rel="pingback" href="%s">', esc_url( get_bloginfo( 'pingback_url' ) ) );
	}
}
add_action( 'wp_head', 'shellholster_pingback_header' );

/**
 * Replace custom logo link class
 */
function change_logo_class( $html ) {
    $html = str_replace( 'custom-logo-link', 'logo', $html );

    return $html;
}
add_filter( 'get_custom_logo', 'change_logo_class' );


/**
 * Delete widgets.
 */
function remove_default_widget() {
    unregister_widget('WP_Widget_Archives'); // Архивы
    unregister_widget('WP_Widget_Calendar'); // Календарь
    unregister_widget('WP_Widget_Categories'); // Рубрики
    unregister_widget('WP_Widget_Meta'); // Мета
    unregister_widget('WP_Widget_Pages'); // Страницы
    unregister_widget('WP_Widget_Recent_Comments'); // Свежие комментарии
    unregister_widget('WP_Widget_Recent_Posts'); // Свежие записи
    unregister_widget('WP_Widget_RSS'); // RSS
    unregister_widget('WP_Widget_Search'); // Поиск
    unregister_widget('WP_Widget_Tag_Cloud'); // Облако меток
    unregister_widget('WP_Widget_Text'); // Текст
    unregister_widget('WP_Widget_Media_Audio');
    unregister_widget('WP_Widget_Media_Video');
    unregister_widget('WP_Widget_Media_Gallery');
    unregister_widget('WP_Widget_Media_Image');
}
add_action( 'widgets_init', 'remove_default_widget', 20 );


/**
 * Unregister admin menu items
 */
function remove_menus(){
    remove_menu_page( 'edit-comments.php' );          // Комментарии
}
add_action( 'admin_menu', 'remove_menus' );


/**
 * Delete category prefix
 */
function delete_category_prefix( $prefix ){
    $prefix = '';
    return $prefix;
}
add_filter( 'get_the_archive_title_prefix', 'delete_category_prefix' );


/**
 * Change excerpt length
 */
add_filter( 'excerpt_length', function(){
    return 20;
});


/**
 * Change excerpt "more"
 */
add_filter('excerpt_more', function($more) {
    return '...';
});
