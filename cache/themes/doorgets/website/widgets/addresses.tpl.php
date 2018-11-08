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
  *
        
 */
 $addresses = $this->configWeb['addresses'];

?>
<?php if($addresses): ?>
<h2><i class="fa fa-map-marker"></i> <?php echo $this->__('Localisation'); ?></h2>
<?php foreach($addresses as $k => $_address): ?>
    <div class="separateur-tb"></div>
    <div class="panel panel-default address-localisation">
        <div class="panel-body">
            <div class="row">
                <?php if($k % 2 == 1): ?>
                    <div class="col-md-6 text-right">
                        <div class="address-localisation-box">
                        <h3><?php echo $_address['title']; ?></h3>
                        <?php echo $_address['address']; ?><br />
                        <?php echo $_address['zipcode']; ?>, <?php echo $_address['city']; ?><br />
                        <?php if(!empty($_address['region'])):  echo $_address['region']; ?> <?php endif;  echo $_address['country']; ?><br />
                        <small>
                        <?php if(!empty($_address['phone'])): ?>
                        <i class="fa fa-phone"></i> <?php echo $_address['phone']; ?><br />
                        <?php endif; ?>
                        <?php if(!empty($_address['phone'])): ?>
                        <i class="fa fa-envelope-o"></i> <a href="mailto:<?php echo $_address['email']; ?>"><?php echo $_address['email']; ?></a>
                        <?php endif; ?>
                        </small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="addressGmap-<?php echo $k; ?>" class="gmap3 img-responcive"></div>
                    </div>
                <?php else: ?>
                    <div class="col-md-6">
                        <div id="addressGmap-<?php echo $k; ?>" class="gmap3 img-responcive"></div>
                    </div>
                    <div class="col-md-6 text-center">
                        <div class="address-localisation-box">
                        <h3><?php echo $_address['title']; ?></h3>
                        <?php echo $_address['address']; ?><br />
                        <?php echo $_address['zipcode']; ?>, <?php echo $_address['city']; ?><br />
                        <?php if(!empty($_address['region'])):  echo $_address['region']; ?> <?php endif;  echo $_address['country']; ?><br />
                        <small>
                        <?php if(!empty($_address['phone'])): ?>
                        <i class="fa fa-phone"></i> <?php echo $_address['phone']; ?><br />
                        <?php endif; ?>
                        <?php if(!empty($_address['phone'])): ?>
                        <i class="fa fa-envelope-o"></i> <a href="mailto:<?php echo $_address['email']; ?>"><?php echo $_address['email']; ?></a>
                        <?php endif; ?>
                        </small>
                        </div>
                    </div>
                    
                <?php endif; ?>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<script type="text/javascript">
window.addEventListener('load',function() {
    <?php foreach($addresses as $k => $_address): ?>
    console.log('#addressGmap-<?php echo $k; ?>');
    $('#addressGmap-<?php echo $k; ?>').gmap3({
        address: "<?php echo $_address['url']; ?>",
        zoom: 13,
        mapTypeId : google.maps.MapTypeId.ROADMAP
      });
    <?php endforeach; ?>
});
</script>
<?php endif; ?>