<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="box">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <!--<h1 style="text-align: center"><?php echo $heading_title; ?></h1>-->
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2 style="text-align: center; font-family: Arial; font-style:italic; font-size: 30px;"><?php echo $text_location; ?></h2>
    <div class="contact-info" style="margin-top:20px; text-align: center;">
      <div class="content"><div class="left"><!--<b><?php echo $text_address; ?></b>-->
        <img src="https://png.icons8.com/ios/1600/home.png" width="50px" height="50px" align="center"><br />
        <span style="font-size: 23px;"><?php echo "База торгового оборудования"; ?></span><br /> <!--<?php echo $store; ?>-->
        <span style="font-size: 19px; font-style: italic;"><?php echo $address; ?></span></div>
      <div class="right">
        <?php if ($telephone) { ?>
        <!--<b><?php echo $text_telephone; ?></b>-->
         <img src="https://png.icons8.com/ios/1600/phone.png" width="50px" height="50px" align="center">  
        <span style="font-size: 20px; font-style: bold;"><?php echo $telephone; ?></span>
      </div>
        
        <?php } ?>
        <?php if ($fax) { ?>
        <b><?php echo $text_fax; ?></b><br />
        <?php echo $fax; ?>
        <?php } ?>
    </div>
   
   </div>
    <h2 style="text-align: center; font-family: Arial; font-style:italic; font-size: 30px;"><?php echo $text_contact; ?></h2>
    <div class="content">
    <b style="font-size: 20px; font-family: Arial; font-style: italic;">*<?php echo $entry_name; ?></b><br /><!--<?php echo $entry_name; ?>-->
    <input style="background-color:#FAEBD7;" type="text" name="name" value="<?php echo $name; ?>" />
    <br />
    <?php if ($error_name) { ?>
    <span class="error"><?php echo $error_name; ?></span>
    <?php } ?>
    <br />
    <b style="font-size: 20px; font-family: Arial; font-style: italic;">*<?php echo $entry_email; ?></b><br /><!--<?php echo $entry_email; ?>-->
    <input style="background-color:#FAEBD7;" type="text" name="email" value="<?php echo $email; ?>" />
    <br />
    <?php if ($error_email) { ?>
    <span class="error"><?php echo $error_email; ?></span>
    <?php } ?>
    <br />
    <b style="font-size: 20px; font-family: Arial; font-style: italic;">*<?php echo $entry_enquiry; ?></b><br /><!--<?php echo $entry_enquiry; ?>-->
    <textarea name="enquiry" cols="40" rows="10" style="width: 99%; background-color:#FAEBD7;" ><?php echo $enquiry; ?></textarea>
    <br />
    <?php if ($error_enquiry) { ?>
    <span class="error"><?php echo $error_enquiry; ?></span>
    <?php } ?>
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="<?php echo $captcha; ?>" style="background-color:#FAEBD7;" />
    <br />
    <img src="index.php?route=information/contact/captcha" alt="" />
    <?php if ($error_captcha) { ?>
    <span class="error"><?php echo $error_captcha; ?></span>
    <?php } ?>
    </div>
    <div class="buttons">
      <div class="right"><button type="submit" class="button"><?php echo $button_continue; ?></button></div>
    </div>
  </form>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
