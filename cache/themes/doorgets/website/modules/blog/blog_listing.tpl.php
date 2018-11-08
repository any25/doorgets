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
        $contents[$i]['uri']            => $uri
        $contents[$i]['title']          => $title
        $contents[$i]['description']    => $description
        $contents[$i]['article']        => $article
        $contents[$i]['categories']     => $categories
        $contents[$i]['order']          => $order
        $contents[$i]['date']           => $date

 */
 
?>
<!-- doorGets:start:modules/news/news_listing -->
<div class="doorGets-news-listing doorGets-module-<?php echo $Website->getModule(); ?>">
    <div class="row">
        <?php if($Website->hasCategories): ?><div class="col-md-9"><?php else: ?><div class="col-md-12"><?php endif; ?>
            <?php if($this->userPrivilege['add']): ?>
            <div class="btn-group pull-right btn-add-content">
                <a href="<?php echo $urlAdd; ?>" class="btn btn-success btn-large">
                    <b class="glyphicon glyphicon-plus"></b> 
                    <span><?php echo $Website->__('Créer un article'); ?></span>
                </a>
            </div>
            <?php endif; ?>

            <?php if(!$Website->hasCategories): ?>
                <span class="pull-right"><?php echo $Website->getHtmlModuleSearch($q); ?></span>
            <?php endif; ?>
            <ol class="breadcrumb">
                
                <li><a href="<?php echo $Website->getBaseUrl(); ?>?<?php echo $Website->getModule(); ?>"><?php echo $labelModule; ?></a></li>
                <?php if(!empty($parentCategories)): ?>
                    <?php foreach($parentCategories as $Categorie): ?>
                        <li <?php if($Categorie['position'] === 1): ?>class="active"<?php endif; ?>>
                            <?php if($Categorie['position'] !== 1): ?><a href="<?php echo $Website->getBaseUrl(); ?>?doorgets=<?php echo $Categorie['uri']; ?>"><?php endif; ?>
                            <?php echo $Categorie['nom']; ?>
                            <?php if($Categorie['position'] !== 1): ?></a><?php endif; ?>
                        </li>
                    <?php endforeach;  endif; ?>
            </ol>
            <div class="doorGets-listing-contents-title">
                <?php echo $ini; ?> <?php echo $Website->__('à'); ?> <?php echo $finalPer; ?> <?php echo $Website->__('sur'); ?> <b><?php echo $totalContents; ?> <?php if($totalContents > 1): ?> <?php echo $Website->__('articles'); ?> <?php else: ?>  <?php echo $Website->__('article');  endif; ?></b>
                <?php if(!empty($q)): ?>
                    <?php echo $Website->__('pour la recherche'); ?> : <b><?php echo $q; ?></b>
                <?php elseif(empty($categoryLabel)): ?>
                    <?php echo $Website->__('dans toutes les catégories');  else: ?>
                    <?php echo $Website->__('dans la catégorie'); ?> <?php echo $categoryLabel;  endif; ?>
            </div>
            <?php if(
                ( !$this->modulePrivilege['public_module'] && $this->userPrivilege['show'] )
                || $this->modulePrivilege['public_module']
            ):  if(!empty($contents)): ?>
                    <?php foreach($contents as $content): ?>
                        <div class="row content-listing-news">    
                            <div class="col-md-3  left-date-news">
                                <h3 class="visible-xs">
                                    <a href="<?php echo $Website->getBaseUrl(); ?>?<?php echo $Website->getModule(); ?>=<?php echo $content['uri']; ?>"><?php echo $content['title']; ?></a>
                                </h3>
                                <a href="<?php echo $Website->getBaseUrl(); ?>?<?php echo $Website->getModule(); ?>=<?php echo $content['uri']; ?>">
                                    <img src="<?php echo URL; ?>data/<?php echo $Website->getModule(); ?>//<?php echo $content['image']; ?>" class="img-thumbnail img-responsive hover-t img-blog-listing" />
                                </a>
                            </div>
                            <div class="col-md-9  ">
                                <h3 class="hidden-xs">
                                    <a href="<?php echo $Website->getBaseUrl(); ?>?<?php echo $Website->getModule(); ?>=<?php echo $content['uri']; ?>"><?php echo $content['title']; ?></a>
                                </h3>
                                <div>
                                    <?php echo $content['article']; ?>
                                </div>
                                
                            </div>
                        </div>
                    <?php endforeach;  endif;  if(empty($contents)): ?>
                <div class="info-not-found">
                    <?php echo $Website->__('Aucun article trouvée'); ?> <?php if(!empty($q)):  echo $Website->__('pour votre recherche');  endif; ?>.
                </div>
                <?php endif;  if(!empty($getPagination)): ?>
                    <br /><br />
                    <?php echo $getPagination;  endif; ?>
            <?php elseif(empty($Website->isUser)): ?>
                <div class="alert alert-danger">
                    <?php echo $Website->__('Vous devez vous connecter pour afficher ce contenu'); ?> : <a href="<?php echo $this->loginUrl; ?>&back=<?php echo urlencode($Website->getCurrentUrl()); ?>">Se connecter</a> ou <a href="<?php echo $this->registerUrl; ?>&back=<?php echo urlencode($Website->getCurrentUrl()); ?>">S'inscrire</a>
                </div>
            <?php else: ?>
                <div class="alert alert-danger">
                    <?php echo $Website->__('Vous ne pouvez pas voir ce contenu'); ?>
                </div>
            <?php endif; ?>
        </div>
        <?php if($Website->hasCategories): ?>
            <div class="col-md-3">
                <?php echo $Website->getHtmlModuleSearch($q); ?>
                <div class="panel panel-default">
                    <div class="panel-heading">
                      <a href="<?php echo BASE_URL.'?'.$Website->getModule(); ?>"><h3 class="panel-title"><?php echo $Website->__('Catégories'); ?></h3></a>
                    </div>
                    <div class="panel-body">
                      <?php echo $Website->getHtmlModuleCategories(); ?>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>
<!-- doorGets:end:modules/news/news_listing -->
