<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
 */

get_header();
?>

<main class="page-wrapper page-404">

    <div class="page-heading">
        <div class="container">
            <h1 class="title-3">
                404 Error
            </h1>

            <h2 class="subtitle-2">
                Oops! That page cannot be found.
            </h2>
        </div>
    </div>

    <div class="container">
        <div class="wrap">
            <p class="title-2">We couldn’t find the page you’re looking for.</p>
            <p>Try using the navigation menu at the top or going back to the homepage.</p>
            <a href="/" class="btn orange">BACK TO HOME</a>
        </div>
    </div>

</main>

<?php
get_footer();
