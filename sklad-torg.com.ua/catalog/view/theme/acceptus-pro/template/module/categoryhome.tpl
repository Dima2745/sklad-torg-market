<div class="box">
,<!--<div class="box-heading"><?php echo "Категории"; ?></div>-->
<!--<div class="box-heading"><?php echo $heading_title; ?></div>-->
<div  class="box-content">
<div id = "id_box_product" class="box-product">
  
<?php foreach ($categoryhome as $categoryhome) { ?>

<style type="text/css">
	/* 
	Выравнивание категорий на главной странице
*/
.box-heading {
	text-align: center;
}
#id_box_product ul{
	list-style-type: none;
}
#id_box_product {
	display: flex;
	flex-direction: row; 
	flex-wrap: wrap;
	justify-content: center;
}
.cat-item .name {
	max-width: 80%;
	text-align: center;
}
.cat-item{
	width:130px;
	display: flex;
	flex-direction: column;
	flex-wrap:wrap;
	justify-content: center;
	margin:0 -5px;
}

.primary-define .box-product .name a:hover{
	color:#E70D19;
	transition: 0s;
}
#id_category_image{
	max-width: 100%;
}
</style>
<ul><li>
<div class = "cat-item" >
      <div class="image" id="id_category_image"><a href="<?php echo $categoryhome['href']; ?>"><img src="<?php echo $categoryhome['thumb']; ?>" title="<?php echo $categoryhome['name']; ?>" alt="<?php echo $categoryhome['name']; ?>" /></a></div>
      <div class="name"><a href="<?php echo $categoryhome['href']; ?>" ><?php echo $categoryhome['name']; ?></a></div>
</div>
</li></ul>
<?php } ?>
</div>
</div> 
</div>