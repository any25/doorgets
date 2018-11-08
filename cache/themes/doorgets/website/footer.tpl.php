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

?>
        
	<div class="notification-alert-box"></div>

	<script type="text/javascript" src="<?php echo URL; ?>skin/lib/jquery/external/jquery/jquery.js"></script>
	<script type="text/javascript" src="<?php echo URL; ?>skin/lib/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?php echo URL; ?>skin/lib/magnificpopup/dist/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
    <script type="text/javascript" src="<?php echo URL; ?>skin/lib/bootstrap-rating/bootstrap-rating.min.js"></script>
    <?php if(count($this->configWeb['addresses']) > 0 && !empty($this->configWeb['gmaps'])): ?>
    <script type="text/javascript" src="//maps.google.com/maps/api/js?key=<?php echo $this->configWeb['gmaps']; ?>&langue=<?php echo $this->myLanguage; ?>"></script>
    <script type="text/javascript" src="<?php echo URL.'skin/lib/gmap3/gmap3.min.js'; ?>"></script>
    <?php endif;  if(!empty($this->configWeb['sharethis'])): ?>
	<script type="text/javascript" src="<?php echo URL; ?>skin/js/buttons.js"></script>
    <script type="text/javascript">stLight.options({publisher: "<?php echo $this->configWeb['sharethis']; ?>", doNotHash: false, doNotCopy: false, hashAddressBar: false});</script>
    <?php endif; ?>
    <script src="<?php echo URL; ?>skin/lib/owl-carousel/owl.carousel.js"></script>
    <script type="text/javascript" src="<?php echo URL; ?>themes/<?php echo $this->theme; ?>/js/doorgets.js"  ></script>
    
    </body>
</html>
