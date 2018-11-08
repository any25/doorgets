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
        $navigation[$uri_module]['label']
        $navigation[$uri_module]['type']
 */
        
$currentUrl = urlencode($this->getCurrentUrl());
// $Cart = new Cart($this);
// $countCart = $Cart->getCount();

$iMessageNotRead    = $this->getCountMessageNotRead();

if (empty($iMessageNotRead)) { $iMessageNotRead = '';}
if (!empty($iMessageNotRead)) { $iMessageNotRead    = '<small class="info-counts">'.$iMessageNotRead.'</small>'; }

?>
<!-- doorGets:start:widgets/navigation -->

<div id="navbar" class="navbar-collapse collapse">
    <ul class="nav navbar-nav navbar-right">
        <?php foreach($navigation as $uri_module => $value_module): ?>
            <?php 
                $moduleUrl = BASE_URL;
                if ($value_module['all']['is_first'] !== '1') {
                    $moduleUrl .= '?'.$uri_module;
                }
             ?>
            <li class="<?php if(!empty($this->rubriques[$uri_module]['categories'])): ?>dropdown<?php endif; ?> <?php if( $uri_module === $this->module ): ?>active<?php endif; ?> ">
                <a <?php if(!empty($this->rubriques[$uri_module]['categories'])  && $this->rubriques[$uri_module]['type'] === 'multipage'): ?>class="dropdown-toggle" data-toggle="dropdown" <?php endif; ?>  href="<?php echo $moduleUrl; ?>">
                    <?php echo $value_module['label']; ?> <?php if(!empty($this->rubriques[$uri_module]['categories']) && $this->rubriques[$uri_module]['type'] === 'multipage'): ?><b class="caret"></b><?php endif; ?>
                </a>
                <?php if(!empty($this->rubriques[$uri_module]['categories']) && $this->rubriques[$uri_module]['type'] === 'multipage'): ?>
                    <ul class="dropdown-menu">
                        <?php foreach($this->rubriques[$uri_module]['categories'] as $uri_category=>$value_category): ?>
                            <?php $door = 'doorgets';  if($this->rubriques[$uri_module]['type'] === 'multipage'):  $door=$uri_module;  endif; ?>
                            <li ><a class="menu-level-<?php echo $value_category['level']; ?>" href="<?php echo BASE_URL; ?>?<?php echo $door; ?>=<?php echo $uri_category; ?>"><?php echo $value_category['name']; ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif; ?>
            </li>
            <?php $i++; ?>
        <?php endforeach; ?>
        <?php if(empty($isUser)): ?>
            <li class="dropdown" >
                <a href="<?php echo URL; ?>dg-user/" class="dropdown-toggle" data-toggle="dropdown" >
                    <b class="glyphicon glyphicon-user"></b><b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="<?php echo URL_USER.$toLangue; ?>?controller=authentification&back=<?php echo $currentUrl; ?>" rel="nofollow"><?php echo $this->__('Se connecter'); ?></a></li>
                    <?php if(!empty($groupes)): ?>
                    <li><a href="<?php echo URL_USER.$toLangue; ?>?controller=authentification&action=register&back=<?php echo $currentUrl; ?>" rel="nofollow"><?php echo $this->__("S'inscrire"); ?></a></li>
                    <?php endif; ?>
                </ul>
            </li>
        <?php else: ?>
            
            <?php 
                $toLangue = $user['langue'].'/';
             ?>
            <li class="dropdown"  >
                <a class="dropdown-toggle" data-toggle="dropdown"  href="<?php echo URL; ?>dg-user/?controller=account" title="<?php echo $this->__('Mon compte'); ?>">
                    <img src="<?php echo URL.'data/users/'.$user['avatar']; ?>" class="avatar">
                    <span class="badge badge-important"><?php echo $iMessageNotRead; ?></span>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li >
                        <a href="<?php echo URL_USER.$toLangue; ?>" title="<?php echo $this->__('Tableau de bord'); ?>">
                            <b class="glyphicon glyphicon-dashboard"></b> 
                            <?php echo $this->__('Tableau de bord'); ?>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <?php if(in_array('showprofile', $isUser['liste_module_interne'])): ?>
                    <li >
                        <a href="<?php echo URL.'u/'.$user['pseudo'].'/'; ?>" title="<?php echo $this->__('Afficher mon profil'); ?>">
                            <b class="glyphicon glyphicon-user"></b> 
                            <?php echo $this->__('Afficher mon profil'); ?>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <?php endif; ?>
                    <li >
                        <a href="<?php echo URL_USER.$toLangue; ?>?controller=account" title="<?php echo $this->__('Gérer mon profil'); ?>">
                            <b class="glyphicon glyphicon-cog"></b> 
                            <?php echo $this->__('Gérer mon profil'); ?>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <?php if(in_array('myinbox', $isUser['liste_module_interne'])): ?>
                    <li >
                        <a href="<?php echo URL_USER.$toLangue; ?>?controller=myinbox" title="<?php echo $this->__('Boîte de récéption'); ?>">
                            <b class="glyphicon glyphicon-inbox"></b> 
                            <?php echo $this->__('Boîte de récéption'); ?>
                            <span class="badge badge-important"><?php echo $iMessageNotRead; ?></span>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <?php endif; ?>
                    <?php if(in_array('address', $isUser['liste_module_interne'])): ?>
                    <li >
                        <a href="<?php echo URL_USER.$toLangue; ?>?controller=address" title="<?php echo $this->__('Mes adresses'); ?>">
                            <b class="glyphicon glyphicon-road"></b> 
                            <?php echo $this->__('Mes adresses'); ?>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <?php endif; ?>
                    <li >
                        <a href="<?php echo URL_USER.$toLangue; ?>?controller=account&action=password" title="<?php echo $this->__('Sécurité'); ?>">
                            <b class="glyphicon glyphicon-lock"></b> 
                            <?php echo $this->__('Sécurité'); ?>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li >
                        <a  href="<?php echo URL_USER.$toLangue; ?>?controller=authentification&action=logout&back=<?php echo $currentUrl; ?>" title="<?php echo $this->__('Me déconnecter'); ?>">
                            <b class="glyphicon violet glyphicon-off red"></b>
                            <span class="red"><?php echo $this->__('Me déconnecter'); ?></span>
                        </a>
                    </li>
                </ul>
            </li>
        <?php endif; ?>
        <?php echo $this->getHtmlLanguages(); ?>
    </ul>
</div>
<!-- doorGets:end:widgets/navigation -->