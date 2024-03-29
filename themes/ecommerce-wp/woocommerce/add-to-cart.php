<?php 
/**
 * Custom add to cart
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}

global $product;

if ( function_exists( 'method_exists' ) && method_exists( $product, 'get_id' ) ) {
	$ecommerce_wp_prod_id = $product->get_id();
} else {
	$ecommerce_wp_prod_id = $product->id;
}

echo apply_filters(
'woocommerce_loop_add_to_cart_link',
sprintf(
	'<a rel="nofollow" href="%1$s" data-quantity="%2$s" data-product_id="%3$s" data-product_sku="%4$s" class="%5$s btn btn-just-icon btn-simple btn-default" title="%6$s">%6$s</a>',
	esc_url( $product->add_to_cart_url() ),
	esc_attr( isset( $quantity ) ? $quantity : 1 ),
	esc_attr( $ecommerce_wp_prod_id ),
	esc_attr( $product->get_sku() ),
	esc_attr( isset( $class ) ? $class : 'button' ),
	esc_html( $product->add_to_cart_text() )
),
$product
);


 