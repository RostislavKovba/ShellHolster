<?php
/**
 * WooCommerce Compatibility File
 *
 * @link https://woocommerce.com/
 *
 * @package shellholster
 */

/**
 * WooCommerce setup function.
 *
 * @link https://docs.woocommerce.com/document/third-party-custom-theme-compatibility/
 * @link https://github.com/woocommerce/woocommerce/wiki/Enabling-product-gallery-features-(zoom,-swipe,-lightbox)
 * @link https://github.com/woocommerce/woocommerce/wiki/Declaring-WooCommerce-support-in-themes
 *
 * @return void
 */
function shellholster_woocommerce_setup() {
	add_theme_support(
		'woocommerce',
		array(
			'thumbnail_image_width' => 150,
			'single_image_width'    => 300,
			'product_grid'          => array(
				'default_rows'    => 3,
				'min_rows'        => 1,
				'default_columns' => 3,
				'min_columns'     => 1,
				'max_columns'     => 6,
			),
		)
	);
	add_theme_support( 'wc-product-gallery-zoom' );
	add_theme_support( 'wc-product-gallery-lightbox' );
	add_theme_support( 'wc-product-gallery-slider' );
}
add_action( 'after_setup_theme', 'shellholster_woocommerce_setup' );

/**
 * WooCommerce specific scripts & stylesheets.
 *
 * @return void
 */
function shellholster_woocommerce_scripts() {
	wp_enqueue_style( 'shellholster-woocommerce-style', get_template_directory_uri() . '/woocommerce.css', array(), _S_VERSION );

	$font_path   = WC()->plugin_url() . '/assets/fonts/';
	$inline_font = '@font-face {
			font-family: "star";
			src: url("' . $font_path . 'star.eot");
			src: url("' . $font_path . 'star.eot?#iefix") format("embedded-opentype"),
				url("' . $font_path . 'star.woff") format("woff"),
				url("' . $font_path . 'star.ttf") format("truetype"),
				url("' . $font_path . 'star.svg#star") format("svg");
			font-weight: normal;
			font-style: normal;
		}';

	wp_add_inline_style( 'shellholster-woocommerce-style', $inline_font );

    // Remove Woocommerce Select2
    if ( class_exists( 'woocommerce' ) ) {
        wp_dequeue_style( 'select2' );
        wp_deregister_style( 'select2' );

        wp_dequeue_script( 'selectWoo');
        wp_deregister_script('selectWoo');
    }
}
add_action( 'wp_enqueue_scripts', 'shellholster_woocommerce_scripts' );

/**
 * Disable the default WooCommerce stylesheet.
 *
 * Removing the default WooCommerce stylesheet and enqueing your own will
 * protect you during WooCommerce core updates.
 *
 * @link https://docs.woocommerce.com/document/disable-the-default-stylesheet/
 */
add_filter( 'woocommerce_enqueue_styles', '__return_empty_array' );

/**
 * Add 'woocommerce-active' class to the body tag.
 *
 * @param  array $classes CSS classes applied to the body tag.
 * @return array $classes modified to include 'woocommerce-active' class.
 */
function shellholster_woocommerce_active_body_class( $classes ) {
	$classes[] = 'woocommerce-active';

	return $classes;
}
add_filter( 'body_class', 'shellholster_woocommerce_active_body_class' );

/**
 * Related Products Args.
 *
 * @param array $args related products args.
 * @return array $args related products args.
 */
function shellholster_woocommerce_related_products_args( $args ) {
	$defaults = array(
		'posts_per_page' => 3,
		'columns'        => 3,
	);

	$args = wp_parse_args( $defaults, $args );

	return $args;
}
add_filter( 'woocommerce_output_related_products_args', 'shellholster_woocommerce_related_products_args' );

/**
 * Remove default WooCommerce wrapper.
 */
remove_action( 'woocommerce_before_main_content', 'woocommerce_output_content_wrapper', 10 );
remove_action( 'woocommerce_after_main_content', 'woocommerce_output_content_wrapper_end', 10 );

if ( ! function_exists( 'shellholster_woocommerce_wrapper_before' ) ) {
	/**
	 * Before Content.
	 *
	 * Wraps all WooCommerce content in wrappers which match the theme markup.
	 *
	 * @return void
	 */
	function shellholster_woocommerce_wrapper_before() {
		?>
			<main class="page-wrapper woocommerce-page">
		<?php
	}
}
add_action( 'woocommerce_before_main_content', 'shellholster_woocommerce_wrapper_before' );

if ( ! function_exists( 'shellholster_woocommerce_wrapper_after' ) ) {
	/**
	 * After Content.
	 *
	 * Closes the wrapping divs.
	 *
	 * @return void
	 */
	function shellholster_woocommerce_wrapper_after() {
		?>
			</main><!-- #main -->
		<?php
	}
}
add_action( 'woocommerce_after_main_content', 'shellholster_woocommerce_wrapper_after' );


/**
 * Sample implementation of the WooCommerce Mini Cart.
 *
 * You can add the WooCommerce Mini Cart to header.php like so ...
 *
<?php
    if ( function_exists( 'shellholster_woocommerce_header_cart' ) ) {
        shellholster_woocommerce_header_cart();
    }
?>
 */

if ( ! function_exists( 'shellholster_woocommerce_cart_link_fragment' ) ) {
    /**
     * Cart Fragments.
     *
     * Ensure cart contents update when products are added to the cart via AJAX.
     *
     * @param array $fragments Fragments to refresh via AJAX.
     * @return array Fragments to refresh via AJAX.
     */
    function shellholster_woocommerce_cart_link_fragment( $fragments ) {
        ob_start();
        shellholster_woocommerce_cart_link();
        $fragments['a.cart-contents'] = ob_get_clean();

        return $fragments;
    }
}
add_filter( 'woocommerce_add_to_cart_fragments', 'shellholster_woocommerce_cart_link_fragment' );

if ( ! function_exists( 'shellholster_woocommerce_cart_link' ) ) {
    /**
     * Cart Link.
     *
     * Displayed a link to the cart including the number of items present and the cart total.
     *
     * @return void
     */
    function shellholster_woocommerce_cart_link() {
        ?>
        <a class="cart cart-contents" href="<?php echo esc_url( wc_get_cart_url() ); ?>" title="<?php esc_attr_e( 'View your shopping cart', 'shellholster' ); ?>">
            <i class="fas fa-cart-arrow-down"></i>
            <span class="count"><?php echo esc_html( WC()->cart->get_cart_contents_count() ); ?></span>
        </a>
        <?php
    }
}

if ( ! function_exists( 'shellholster_woocommerce_header_cart' ) ) {
    /**
     * Display Header Cart.
     *
     * @return void
     */
    function shellholster_woocommerce_header_cart()
    {
        $class = is_cart() ? 'current-menu-item' : ''; ?>

        <ul id="site-header-cart" class="site-header-cart">
            <li class="<?php echo esc_attr( $class ); ?>">
                <?php shellholster_woocommerce_cart_link(); ?>
            </li>
            <li>
                <?php
                $instance = [
                    'title' => '',
                ];

                the_widget( 'WC_Widget_Cart', $instance );
                ?>
            </li>
        </ul>
        <?php
    }
}

/**
 * Breadcrumb
 */
function custom_breadcrumb_defaults( $args ) {
    $args = [
        'delimiter'   => ' » ',
        'wrap_before' => '<ul class="breadcrumbs">',
        'wrap_after'  => '</ul>',
        'before'      => '',
        'after'       => '',
        'home'        => _x( 'Home', 'breadcrumb', 'woocommerce' ),
    ];

    return $args;
}
add_filter( 'woocommerce_breadcrumb_defaults', 'custom_breadcrumb_defaults' );


/**
 * Sale flash replace
 */
function custom_sale_flash($text) {
    global $product;
    $percentage = round( ( ( $product->regular_price - $product->sale_price ) / $product->regular_price ) * 100 );
    return '<span class="onsale">-'.$percentage.'%</span>';
}
add_filter('woocommerce_sale_flash', 'custom_sale_flash');


function custom_color_filter( $term_html, $term, $link, $count ) {
    if ( $term->taxonomy == 'pa_color' && $count > 0 ) {
        $color = get_field('color', 'term_'. $term->term_id);
        $term_html = sprintf('<a rel="nofollow" href="%s" style="background-color: %s" class="filter-item-color"></a>',
            esc_url( $link ),
            esc_html( $color )
        );
    }
    return $term_html;
}
add_filter( 'woocommerce_layered_nav_term_html', 'custom_color_filter', 0, 4 );


function custom_heading() {
    ?>
        <div class="page-heading">
            <div class="container">
                <h1 class="title-3 woocommerce-products-header__title"><?php the_title(); ?></h1>
                <h2 class="subtitle-2">
                    <?php the_field('hero_subtitle', get_option( 'woocommerce_shop_page_id' ) ); ?>
                </h2>
                <?php woocommerce_breadcrumb(); ?>
            </div>
        </div>
    <?php
}

function count_and_ordering_wrapper() {
    echo '<div class="products-actions">';
}
function flashs_wrapper() {
    echo '<div class="product-flashs">';
}
function custom_wrapper_end() {
    echo '</div>';
}

function custom_category_description() {
    $category  = get_queried_object();
    $id        = $category->term_id;
    echo '<div class="editor">';
    is_shop()
        ? woocommerce_product_archive_description()
        : the_field('category_description', 'term_'. $id );
    echo '</div>';
}

function custom_preorder_flash() {
    global $product;
    if ( $product->get_stock_status() == 'onbackorder' ) {
        echo '<span class="preorder">';
        echo $product->get_stock_status();
        echo '</span>';
     }
}

function custom_hot_flash() {
    global $product;
    if ( get_field('is_hot_flash') ) {
        echo '<span class="hot">';
        echo 'HOT';
        echo '</span>';
    }
}

function custom_style_field() {
    global $product;
    if ( $product->get_attribute('pa_style') ) {
        echo '<span class="case-style">';
        echo $product->get_attribute('pa_style');
        echo '</span>';
     }
}

// Archive product
add_action( 'woocommerce_archive_description', 'woocommerce_breadcrumb', 20 );
add_action( 'woocommerce_before_shop_loop', 'count_and_ordering_wrapper', 15 );
add_action( 'woocommerce_before_shop_loop', 'custom_wrapper_end', 40 );
add_action( 'woocommerce_before_single_product', 'custom_heading', 5 );
add_action( 'woocommerce_after_shop_loop', 'custom_category_description', 20 );

remove_action( 'woocommerce_archive_description', 'woocommerce_taxonomy_archive_description', 10 );
remove_action( 'woocommerce_archive_description', 'woocommerce_product_archive_description', 10 );
remove_action( 'woocommerce_before_main_content', 'woocommerce_breadcrumb', 20 );


// Content product
add_action( 'woocommerce_before_shop_loop_item_title', 'flashs_wrapper', 4 );
add_action( 'woocommerce_before_shop_loop_item_title', 'custom_hot_flash', 5 );
add_action( 'woocommerce_before_shop_loop_item_title', 'custom_preorder_flash', 5 );
add_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_show_product_loop_sale_flash', 5 );
add_action( 'woocommerce_before_shop_loop_item_title', 'custom_wrapper_end', 9 );
add_action( 'woocommerce_before_shop_loop_item_title', 'custom_style_field', 20 );

remove_action( 'woocommerce_before_shop_loop_item_title', 'woocommerce_show_product_loop_sale_flash', 10 );
// Single product


// Cart
remove_action( 'woocommerce_widget_shopping_cart_buttons', 'woocommerce_widget_shopping_cart_proceed_to_checkout', 20 );
