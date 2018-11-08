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
  * Variable :
  * 
        $languagesMenu[$uri]['label'] => $label
        $languagesMenu[$uri]['url'] => $url_language
        
 */
 
    $i = 1;
    $cLan = count($languagesMenu);
    $mL = $this->myLanguage;
?>
<!-- doorGets:start:widgets/langue -->
<?php if($cLan > 1): ?>
<li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <img src="<?php echo URL; ?>skin/img/drap_<?php echo $mL; ?>.png"> <b class="glyphicon glyphicon-flag"></b>
    </a>
    <ul class="dropdown-menu" >
        <?php foreach($languagesMenu as $uri => $value): ?>
            <li <?php if($mL === $uri): ?>class="active"<?php endif; ?> >
                <a href="<?php echo $value['url']; ?>">
                    <?php echo $value['label']; ?>
                </a>
            </li>
        <?php endforeach; ?>
    </ul>
</li>
<?php endif; ?>
<!-- doorGets:end:widgets/langue -->
