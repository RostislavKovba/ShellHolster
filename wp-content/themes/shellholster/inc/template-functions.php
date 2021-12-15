<?php
/**
 * Functions which enhance the theme by hooking into WordPress
 *
 * @package shellholster
 */

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
