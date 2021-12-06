<?php
/**
 * Custom callback functions
 */


/**
 * Breadcrumbs
 */
function the_breadcrumb()
{
    // get current page number
    $pageNum = ( get_query_var('paged') ) ? get_query_var('paged') : 1;

    $separator = '»';

    if( is_front_page() )
    {
        if( $pageNum > 1 ) {
            echo '<a href="' . site_url() . '">' . 'main' . '</a>' . $separator . $pageNum . 'page';
        }

    } else {

        echo '<a href="' .site_url(). '">' . get_bloginfo('name') . '</a>' . $separator;

        if( is_single() )
        {
            the_category( $separator, 'multiple'); echo $separator; the_title();
        }

        elseif ( is_home() )
        {
            wp_title('');
        }

        elseif ( is_page() )
        {
            global $post;

            if ( $post->post_parent )
            {
                $parent_id  = $post->post_parent;
                $breadcrumbs = array();

                while ( $parent_id ) {
                    $page = get_post( $parent_id );
                    $breadcrumbs[] = '<a href="' . get_permalink( $page->ID ) . '">' . get_the_title( $page->ID ) . '</a>';
                    $parent_id = $page->post_parent;
                }
                echo join( $separator, array_reverse( $breadcrumbs ) ) . $separator;
            }

            the_title();
        }

        elseif ( is_category() )
        {
            $current_cat = get_queried_object();

            if( $current_cat->parent ) {
                echo get_category_parents( $current_cat->parent, true, $separator ) . $separator;
            }
            single_cat_title();
        }

        elseif( is_tag() )
        {
            single_tag_title();
        }

        elseif ( is_day() )
        {
            echo '<a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a>' . $separator;
            echo '<a href="' . get_month_link(get_the_time('Y'),get_the_time('m')) . '">' . get_the_time('F') . '</a>' . $separator;
            echo get_the_time('d');
        }

        elseif ( is_month() )
        {
            echo '<a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a>' . $separator;
            echo get_the_time('F');

        }

        elseif ( is_year() )
        {
            echo get_the_time('Y');

        }

        elseif ( is_author() )
        {
            global $author;
            $userdata = get_userdata($author);
            echo 'Опублікував(ла) ' . $userdata->display_name;
        }

        elseif ( is_404() )
        {
            echo 'Помилка 404';
        }

        if ( $pageNum > 1 ) {
            echo ' (' . $pageNum . '-я страница)';
        }

    }
}


/**
 * Messengers links
 */
function the_messenger_link( $messenger = '' )
{
    $phone = get_sub_field( $messenger );
    $icon  = get_bloginfo( 'template_url' ). '/img/' .$messenger . '.svg';

    switch ( $messenger ) {
        case 'telegram' :
            $link = 'https://t.me/'. $phone;
            break;

        case 'viber' :
            if ( wp_is_mobile() && ! preg_match( '/iPhone|iPad|iPod/i', $_SERVER ['HTTP_USER_AGENT'] ) ) {
                $viber_prefix = "";
            } else {
                $viber_prefix = "%2B";
            }

            $link = 'viber://chat?number='. $viber_prefix . preg_replace('/[^0-9]/', '', $phone );
            break;

        case 'whatsapp' :
            $link = 'https://wa.me/'. preg_replace('/[^0-9]/', '', $phone );
            break;
    };

    printf(
        '<a href="%s">
	        <img src="%s" alt="%s">
	    </a>',
        $link,
        $icon,
        $messenger
    );
}


/**
 * Posts
 *
 * @param array $args
 */
function the_post_loop( $args = [] )
{
	$args['post_type'] = $args['post_type'] ? : 'post';

    $wp_query = new WP_Query( $args );

    if( $wp_query->have_posts() ) {
	    while ( $wp_query->have_posts() ) {
		    $wp_query->the_post();
		    get_template_part( 'template-parts/content', $args['post_type'] );
	    }

	    get_the_posts_pagination();

    } else {
	    get_template_part( 'template-parts/content', 'none' );
    }

    wp_reset_postdata();
}


/**
 * Advanced Custom Fields
 */
/* Add ACF options page */
if( function_exists('acf_add_options_page') ) {
    acf_add_options_page([
        'page_title'  => 'Main contact info',
        'menu_title'  => 'Contact info',
        'menu_slug'   => 'main-contact-info',
        'capability'  => 'edit_posts',
        'post_id'     => 'contact',
        'icon_url'    => 'dashicons-phone',
        'position'    => 29,
    ]);
}


/**
 * Contact info
 *
 * @param string $field - ACF field slug: "email", "phones", "address", "map"
 */
function shell_contact_info( $field )
{
	if ( !$field ) return;

	switch( $field ) {

		case 'email' :
			$email = get_field('email', 'contact');
			echo '<a href="mailto:'. $email .'">'. $email .'</a>';
			break;

		case 'phones' :
			if ( have_rows('phones', 'contact') ) {
				while ( have_rows('phones', 'contact') ) {
					the_row();
					$phone = get_sub_field('phone');
					echo '<a href="tel:'. $phone .'">'. $phone .'</a>';
				}
			}
			break;

        default :
            echo get_field($field, 'contact');
            break;
	};
}


/**
 * Get background image
 */
function shell_background() {
    if( is_home() ) {
        $background = get_the_post_thumbnail_url( get_option('page_for_posts') );
    } elseif ( has_post_thumbnail() ) {
        $background = get_the_post_thumbnail_url();
    } else {
        $background = get_header_image();
    }    
    return $background;
}

/**
 * Get title
 */
function shell_title() {
    if ( is_front_page() ) {
        $title = get_bloginfo('name');
    } elseif ( is_home() ) {
        $title = get_the_title( get_option('page_for_posts') );
    } elseif ( is_archive() ) {
        $title = get_the_archive_title();
    } else {
        $title = get_the_title();
    }
    return $title;
}