<?php
/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package shellholster
 */

if ( ! is_active_sidebar( 'sidebar-filter' ) ) {
	return;
}
?>

<aside class="sidebar-filter">
	<?php dynamic_sidebar( 'sidebar-filter' ); ?>
</aside>
