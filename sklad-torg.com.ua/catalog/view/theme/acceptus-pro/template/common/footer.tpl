</div>
</div>
<?php if ($this->config->get('color') && $bottom = $this->getChild('module/kulercp')) { ?>
    <?php echo $bottom; ?>
<?php } ?>
<div id="footer">
<div class="wrapper clearafter">
  <?php if ($informations) { ?>
  <div class="column grid-3">
    <h3><span><?php echo $text_information; ?></span></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li ><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column grid-3">
    <h3><span><?php echo $text_service; ?></span></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <!--
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      -->
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column grid-3">
    <h3><span><?php echo $text_extra; ?></span></h3>
    <ul>
	  <li><a href="index.php?route=information/information&information_id=8">Выкуп стеллажей и холодильного оборудования б/у</a></li>	
      <li><a href="index.php?route=information/information&information_id=5">Гарантия</a></li>	

      
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  
</div>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div id="powered"><div class="wrapper">
	<!-- block: Payment Icons -->
	<?php if($this->config->get('kuler_payment_status') && $this->config->get('kuler_payment_items')) { ?>
	<?php $payments = $this->config->get('kuler_payment_items'); ?>
	<ul id="footer-payments" class="clearafter">
		<?php foreach($payments as $k => $item) { ?>
		<?php if($item['status'] == 0) continue; ?>
		<li class="<?php echo $k ?>"><?php echo $item['link'] ?></li>
		<?php } ?>
	</ul>
	<?php } ?>
	<?php if ($this->config->get('color') && $custom_copyright = $this->getChild('module/kulercp/getcustomcopyright')) { ?>
		<?php echo $custom_copyright; ?>
	<?php } else { ?>
	<!-- <?php echo $powered; ?> -->
	<!-- Please do not remove following code or we can not support you with this product ! -->
	<p style = "text-align:center; color:#fff;">&copy; 2018 Склад Торг. Все права защищены. </p>
	<?php } ?>
</div></div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<?php if($this->config->get('kuler_analytics_position') == 'bottom') echo $this->config->get('kuler_analytics_code'); ?>
</body></html>
<style type="text/css">
  #footer{
    background: 
    repeating-linear-gradient(45deg, transparent, transparent 1em, #5A9C6E 0, #5A9C6E 2em,
    transparent 0, transparent 3em, #A8BF5A 0, #A8BF5A 4em,
    transparent 0, transparent 5em, #FAC46E 0, #FAC46E 6em,
    transparent 0, transparent 7em, #FAD5BB 0, #FAD5BB 8em),
    repeating-linear-gradient(-45deg,transparent, transparent 1em, #A8BF5A 0,#A8BF5A 2em,
    transparent 0, transparent 3em, #FAD5BB 0, #FAD5BB 4em,
    transparent 0, transparent 5em, #FAC46E 0, #FAC46E 6em), #F2FEFF;
    background-blend-mode: multiply;
  }
  .primary-define #powered{
  background: #000;
  }
  
</style>
