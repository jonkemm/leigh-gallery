<?php 
			$intNoOfPages = intval($intTotal / $intLimit)+1;
			$intPageLimit = $intPage * $intLimit;
			$intOffset == 0 ? $intOffset=1:$intOffset;
			// $intLimit = 20;
			// $intPage = 1;

			// echo 'intPageLimit :'.$intPageLimit . '<br>';
			// echo 'intTotal :'.$intTotal . '<br>';
			// echo 'intPage :'.$intPage . '<br>';
			// echo 'intNoOfPages :'.$intNoOfPages . '<br>';
?>
				<div class="page-jump">
					<div class="row">
<?php
			if ($intPage <> 1)
			{
?>
			 			<a class="btn" href="?page=<?= $intPage - 1 ?>&amp;id=<?= $intId ?>&amp;mode=<?= $strMode ?>">&larr; Previous</a> 
<?php
			}
			for ($x=1; $x<=$intNoOfPages; $x++)
			{
				if ( $x == $intPage )
				{
?> 
						<span class="today day"><?= $x ?></span>
<?php
				}
				else
				{
?>						<a class="day" href="?page=<?= $x; ?>&amp;id=<?= $intId ?>&amp;mode=<?= $strMode ?>"><?= $x ?></a>
<?php
				}
			}

			if ($intPageLimit <= $intTotal)
			{
?>
						<a class="btn" href="?page=<?= $intPage + 1 ?>&amp;id=<?= $intId ?>&amp;mode=<?= $strMode ?>">Next &rarr;</a> 
<?php
			}
			?>
							</div>
			<?php
?> 				<div class="info">Items <?=$intOffset ?>-<?php 
if ($intPageLimit <= $intTotal)
{
	echo $intPageLimit;
}
else
{
	echo $intTotal ;
}?> of <?= $intTotal ?></div>

				</div>
