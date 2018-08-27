<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content"><?php echo $content_top; ?>
	<div class="box">
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		<div class="category-info clearafter">
			<?php if ($thumb) { ?>
			<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
			<?php } else { ?>
			<div class="image"><span class="no-image"><img src="image/no_image.jpg" alt="<?php echo $heading_title; ?>" /></span></div>
			<?php } ?>
			<h1><?php echo $heading_title; ?></h1>
			<?php if ($description) { ?>
			<?php echo $description; ?>
			<?php } ?>
		</div>
		<?php if ($categories) { ?>
		<div class="category-list clearafter">
			<h2><?php echo $text_refine; ?></h2>
			<?php if (count($categories) <= 5) { ?>
			<ul>
				<?php foreach ($categories as $category) { ?>
				<li><a href="<?php echo $category['href']; ?>" class="button"><?php echo $category['name']; ?></a></li>
				<?php } ?>
			</ul>
			<?php } else { ?>
			<?php for ($i = 0; $i < count($categories);) { ?>
			<ul>
				<?php $j = $i + ceil(count($categories) / 4); ?>
				<?php for (; $i < $j; $i++) { ?>
				<?php if (isset($categories[$i])) { ?>
				<li><a href="<?php echo $categories[$i]['href']; ?>" class="button"><?php echo $categories[$i]['name']; ?></a></li>
				<?php } ?>
				<?php } ?>
			</ul>
			<?php } ?>
			<?php } ?>
		</div>
		<?php } ?>
		<?php if ($products) { ?>
		<div class="product-filter clearafter">
			<div class="display"><span class="icon-list-grey"><?php echo $text_list; ?></span><a class="icon-grid" onclick="display('grid');"><?php echo $text_grid; ?></a></div>
			<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total" class="icon-compare-grey"><?php echo $text_compare; ?></a></div>
			<div class="limit"><?php echo $text_limit; ?>
				<select onchange="location = this.value;">
					<?php foreach ($limits as $limits) { ?>
					<?php if ($limits['value'] == $limit) { ?>
					<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
					<?php } ?>
					<?php } ?>
				</select>
			</div>
			<div class="sort"><?php echo $text_sort; ?>
				<select onchange="location = this.value;">
					<?php foreach ($sorts as $sorts) { ?>
					<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
					<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
					<?php } ?>
					<?php } ?>
				</select>
			</div>
		</div>
		<div class="box-product product-list list-layout">
			<?php foreach ($products as $product) { ?>
			<?php
      $thumb_width = $this->config->get('config_image_product_width');
      $thumb_height = $this->config->get('config_image_product_height');
	?>
			<style type="text/css">
			
				
				@media only screen and (min-width: 801px)
				{
					.primary-define .product-grid > div {
				width: 25%;
				height: 320px;
			}
			.primary-define .box-product .image img {
				width: 200px;height: 200px;
			}
				}
			</style>
			<div>
				<?php if ($product['thumb']) { ?>
				<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
				<?php } else { ?>
				<div class="image"><span class="no-image"><img src="image/no_image.jpg" alt="<?php echo $product['name']; ?>" /></span></div>
				<?php } ?>
				<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
				<div class="description"><?php echo $product['description']; ?></div>
				<?php if ($product['price']) { ?>
				<div class="price" >
					<?php if (!$product['special']) { ?>
					<div><span class="price-fixed" style="background-color: rgb(0,0,138); color:#fff; border-radius: 5px;"><?php echo $product['price']; ?></span></div>
					<?php } else { ?>
					<div class="special-price"><span class="price-fixed"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span></div>
					<?php } ?>
					<?php if ($product['tax']) { ?>
					<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
					<?php } ?>
				</div>
				<?php } ?>
				<?php if ($product['rating']) { ?>
				<div class="rating"><img src="catalog/view/theme/acceptus-pro/image/icons/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
				<?php } ?>
				<div class="cart"><a onclick="addToCart('<?php echo $product['product_id']; ?>');"><span><?php echo $button_cart; ?></span></a></div>
				<div class="wishlist" ><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></a></div>
				<div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></a></div>
			</div>
			<?php } ?>
		</div> 
		<div class="pagination"><?php echo $pagination; ?></div>
		<?php } ?>
		<?php if (!$categories && !$products) { ?>
		<div class="content">
			<p><?php echo $text_empty; ?></p>
		</div>
		<div class="buttons">
			<div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
		</div>
		<?php } ?>
	</div>
	<?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
    <?php include( DIR_TEMPLATE . '/acceptus-pro/includes/list_grid_js.tpl' );?>
//--></script> 
<?php echo $footer; ?>
