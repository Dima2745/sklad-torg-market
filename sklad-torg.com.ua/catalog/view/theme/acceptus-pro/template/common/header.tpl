<?php include( DIR_TEMPLATE . '/acceptus-pro/includes/megamenu.tpl' );?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php if($this->config->get('kuler_compress_styles')) { ?>
<?php echo $this->config->get('kuler_compress_styles') ?>
<?php } else { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/chosen.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/modules.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/colors.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/responsive.css" />
<?php if ($this->config->get('kuler_cp_settings') && $preset = $this->getChild('module/kulercp/usePreset')) { ?>
<link rel="stylesheet" href="<?php echo $preset; ?>" />
<?php } ?>
<?php if ($this->config->get('kuler_cp_custom_scheme') && $color_scheme = $this->getChild('module/kulercp/colorScheme')) { ?>
<?php echo $color_scheme ?>
<?php } ?>
<?php if ($this->config->get('kuler_cp_settings') && $file_custom_css = $this->getChild('module/kulercp/useCustomCSS')) { ?>
<link rel="stylesheet" href="<?php echo $file_custom_css; ?>" />
<?php } ?>
<?php } ?>
<!-- google fonts -->
<?php include( DIR_TEMPLATE . '/acceptus-pro/includes/google_fonts.tpl' );?>
<!-- google fonts /-->
<?php if(!$this->config->get('kuler_compress_styles') || $this->config->get('kuler_compress_style_type') == 'theme') { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<?php } ?>
<?php foreach ($styles as $style) { ?>
<?php if($this->config->get('kuler_compress_style_type') == 'all' && strpos($style['href'], 'catalog/view') === 0) { continue; } ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php if(!$this->config->get('kuler_compress_scripts') || $this->config->get('kuler_compress_script_type') == 'theme') { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php } ?>
<?php if($this->config->get('kuler_compress_scripts')) { ?>
<?php echo $this->config->get('kuler_compress_scripts') ?>
<?php } else { ?>
<script type="text/javascript" src="catalog/view/theme/acceptus-pro/js/chosen.js"></script>
<script type="text/javascript" src="catalog/view/theme/acceptus-pro/js/utils.js"></script>
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<?php if($this->config->get('kuler_compress_script_type') == 'all' && strpos($script, 'catalog/view') === 0) { continue; } ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if lte IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/acceptus-pro/stylesheet/ie.css" />
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php if($this->config->get('kuler_analytics_position') == 'head') echo $this->config->get('kuler_analytics_code'); ?>
<script>
// Active the home item if there is no active item
$(document).ready(function () {
    if ( ! $('.mainmenu').find('.active').length) {
        $('.mainmenu > li:eq(0)').addClass('active');
    }
});
</script>
</head>
<body class="primary-define color-<?php echo $this->config->get('kuler_theme_color') ? $this->config->get('kuler_theme_color') : 'red'; ?><?php if (preg_match('#MSIE (.+?);#', $this->request->server['HTTP_USER_AGENT'], $matches) && intval($matches[1]) < 9) echo ' is-ie'; ?><?php echo ((empty($_GET['_route_']) && empty($_GET['route'])) || (isset($_GET['route']) && $_GET['route'] == 'common/home')) ? ' home' : '' ?>">
<div id="header">
	<div id="topbar" style="position:fixed; top:0; width: 100%; z-index: 1; ">
		<div class="wrapper clearafter"> <?php echo $language; ?> <?php echo $currency; ?>
			<div id="welcome">
				<span class="icon-mobile-grey"><a href = "tel:+380988502773">(098) 850-27-73</a> / <a href ="tel:+380973337628">(097) 333-76-28</a></span>
				
			</div>
			<div class="links">  <a href="<?php echo $shopping_cart; ?>" id="link-cart" class="icon-cart"><?php echo $text_shopping_cart; ?></a> <a href="<?php echo $checkout; ?>" id="link-checkout" class="icon-checkout"><?php echo $text_checkout; ?></a> <a href="<?php echo $compare; ?>" class="icon-compare-grey" id="compare_total"><?php echo $text_compare; ?></a></div>
		</div>
	</div>
	<div id="toppanel">
		<div id="id_clearafter" class="wrapper clearafter">
			<style type="text/css">
				@media only screen and (max-width: 400px)
				{
					#id_clearafter{
						margin-top: 100px;
					}
				}
				@media only screen and (min-width: 401px) and (max-width: 900px)
				{
					#id_clearafter{
						margin-top: 85px;
					}
				}
				@media only screen and (min-width: 901px)
				{
					#id_clearafter{
						margin-top: 40px;
					}

					#menu-inner{
						margin-top: -5px;
					}
					#menu{
						width:61%; 
						margin-left: auto;
						margin-right: auto;
					}
					.primary-define .mainmenu > li > a {
						display: flex;
						flex-direction: column;
					}

				}
				.primary-define #header {
					background-image: linear-gradient(135deg, #fdfcfb 0%, #e2d1c3 100%);
				}
				
				.primary-define .mainmenu > li:hover > a {
					background-color: #fff;
					color:#000;
				}
			</style>
			<?php if ($logo) { ?>
			<div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
			<?php } ?>
			<?php echo $cart; ?>
			<?php if (($kuler_finder = $this->config->get('kuler_finder')) && $kuler_finder['status']) { ?>
			<?php echo $this->getChild('module/kuler_finder', $kuler_finder); ?>
			<?php } else { ?>
			<div id="search">
				<div id="search-inner">
					<div class="button-search"></div>
					<input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
	<?php if ($categories) { ?>
	<div id="menu">
		<div id="menu-inner">	
			<div class="wrapper clearafter"> <span id="btn-mobile-toggle">Меню</span>
				<?php if ($this->config->get('kuler_menu_status')) { ?>
				<?php echo $this->getChild('module/kuler_menu'); ?>
				<?php } else { ?>
				<ul class="mainmenu clearafter">
					<li class="item"><a href="index.php" title="Главная">Главная</a></li>
					
					<li class="item"><a href="index.php?route=information/information&information_id=6" title="Информация об оплате">Информация об оплате</a></li>
					<li class="item"><a href="index.php?route=information/information&information_id=7" title="Доставка">Доставка</a></li>
					<li class="item"><a href="index.php?route=information/information&information_id=5" title="Гарантия">Гарантия</a></li>
					<li class="item"><a href="index.php?route=information/information&information_id=4" title="О Нас">О нас</a></li>

					<li class="item"><a href="index.php?route=information/information&information_id=3" title="Контакты">Контакты</a></li>

					<?php } ?>
				</ul>
				<?php } ?>
			</div>
		</div>
	</div>
</div>
<div id="container">
<div id="container-inner" class="wrapper clearafter">
<div id="notification"></div>
