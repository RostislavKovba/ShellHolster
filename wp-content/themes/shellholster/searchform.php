<?php
/**
 *
 */
?>

<form role="search" method="get" class="form search-form" id="searchform" action="<?php echo home_url( '/' ) ?>" >
    <input type="text" class="search-field" placeholder="Search products…" value="<?php echo get_search_query() ?>" name="s" id="s" />
    <button type="submit" id="searchsubmit" value="Search"/><i class="fas fa-search"></i></button>
</form>