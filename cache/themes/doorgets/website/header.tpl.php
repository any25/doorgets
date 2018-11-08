<?php 

/*******************************************************************************
/*******************************************************************************
    doorGets 7.0 - 01, February 2016
    doorGets it's free PHP Open Source CMS PHP & MySQL
    Copyright (C) 2012 - 2015 By Mounir R'Quiba -> Crazy PHP Lover
    
/*******************************************************************************

    Website : http://www.doorgets.com
    Contact : http://www.doorgets.com/t/en/?contact
    
/*******************************************************************************
    -= One life, One code =-
/*******************************************************************************
    
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
    
******************************************************************************
******************************************************************************/


 /*
  * Variables :
        $label
        $title
        $description 
        $keywords
 */
        
$url = PROTOCOL.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
?><!doctype html>
<html lang="<?php echo $this->myLanguage(); ?>">
    <head>
        <title><?php echo $label; ?></title>
        
        <meta charset="utf-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="Content-Style-Type" content="text/css" />

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
        <meta name="generator" content="doorGets" />
        <meta name="author" content="doorGets.com, doorGets CMS" />
        <meta name="description" content="<?php echo $description; ?>" />
        <meta name="keywords" content="<?php echo $keywords; ?>" />
        
        <meta property="og:site_name" content="<?php echo $title; ?>" />
        <meta property="og:url" content="<?php echo $url; ?>" />
        <meta property="og:language" content="<?php echo $this->myLanguage(); ?>" />
        
        <?php if(!empty($facebook_type) && !empty($facebook_title)): ?>
            <meta property="og:type" content="<?php echo $facebook_type; ?>" />
            <meta property="og:title" content="<?php echo $facebook_title; ?>" />
            <?php if(!empty($facebook_description)): ?>
                <meta property="og:description" content="<?php echo $facebook_description; ?>" />
            <?php endif; ?>
            <?php if(!empty($facebook_image)): ?>
                <meta property="og:image" content="<?php echo $base_data.$facebook_image; ?>" />
            <?php endif; ?>
        <?php else: ?>
            <meta property="og:title" content="<?php echo $label; ?>" />
        <?php endif; ?>
        
        <?php if(!empty($twitter_type) && !empty($twitter_title) && !empty($this->configWeb['twitter'])): ?>
            <meta name="twitter:card" content="<?php echo $twitter_type; ?>">
            <meta name="twitter:title" content="<?php echo $twitter_title; ?>">
            <meta name="twitter:site" content="<?php echo $this->configWeb['twitter']; ?>">
            <?php if(!empty($twitter_description)): ?>
            <meta name="twitter:description" content="<?php echo $twitter_description; ?>">
            <?php endif; ?>
            <?php if(!empty($twitter_image)): ?>
                <meta name="twitter:image:src" content="<?php echo $base_data.$twitter_image; ?>">
            <?php endif; ?>
            <?php if(!empty($facebook_player)): ?>
                <meta name="twitter:player" content="<?php echo $facebook_player; ?>">
            <?php endif; ?>
        <?php endif; ?>
        
        <?php echo $rssLinks; ?>

        <link href="<?php echo URL; ?>skin/lib/bootstrap/css/bootstrap.<?php echo $bootstrap_version; ?>.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL; ?>skin/lib/magnificpopup/dist/magnific-popup.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL; ?>themes/<?php echo $this->theme; ?>/css/doorgets.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL; ?>themes/<?php echo $this->theme; ?>/css/simple-sidebar.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL.'skin/css/font-awesome/css/font-awesome.min.css'; ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL.'skin/lib/bootstrap-rating/bootstrap-rating.css'; ?>" rel="stylesheet" type="text/css" />
        <link href="<?php echo URL; ?>skin/lib/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css" >
        <link href="<?php echo URL; ?>skin/lib/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css" > 

	    <?php if($this->isRtlLanguage): ?>
            <link href="<?php echo URL; ?>themes/<?php echo $this->theme; ?>/css/doorgets.rtl.css" rel="stylesheet" type="text/css" />
        <?php endif; ?>

        <script type="text/javascript">
            var BASE_URL = "<?php echo URL; ?>"; 
            var SPIN_URL = "<?php echo URL; ?>skin/img/spinner.gif";
            var LG_CURRENT = "<?php echo $this->myLanguage; ?>";
            var MODULE_URI = "<?php echo $this->getModule(); ?>";
            var CONTENT_URI = "<?php echo $this->uri; ?>";
        </script>
    </head>
    <body data-spy="scroll" data-target=".navbar">
    
    
