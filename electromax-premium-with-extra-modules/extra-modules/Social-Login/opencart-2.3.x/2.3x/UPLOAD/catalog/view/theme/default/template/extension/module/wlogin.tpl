<style>
	@media (max-width:786px){
		.wlogin_social img{
			margin:10px auto;
		}
	}
	.wlogin_or::before {
		border-top: 1px solid #ccc;
		content: "";
		display: block;
		height: 1px;
		position: absolute;
		top: 30%;
		width: 96%;
		z-index: 1;
	}
	.wlogin_or span {
		background: #fff none repeat scroll 0 0;
		font-size: 18px;
		padding: 0 18px;
		position: relative;
		z-index: 5;
	}
</style>
<?php

if(count($layouts)==4){
	$col = 'col-sm-3';
}else if(count($layouts)==3){
	$col = 'col-sm-4';
}else if(count($layouts)==2){
	$col = 'col-sm-6';
}else{
	$col = 'col-sm-6';
}
?>
<div class="row">
	<div class="col-sm-12">
		<div class="well">
			<h2 style="margin: 0 0 15px;"><?php echo $top_tagline; ?></h2>
			<p></p>
			<div class="row wlogin_social">
				<?php if($wlogin_fstatus){ ?>
				<div class="<?php echo $col ?>">
					<a class="pull-left" href="<?php echo $flogin; ?>">
						<?php if($wlogin_fimage) { ?>
						<img class="img-responsive" src="<?php echo $wlogin_fimage; ?>"/>
						<?php }else{ ?>
						<img class="img-responsive" src="catalog/view/theme/default/image/wlogin/facebook.png"/>
						<?php } ?>
					</a>
				</div>
				<?php } ?>
				<?php if($wlogin_gstatus){ ?>
				<div class="<?php echo $col ?>">
					<a class="pull-left" href="<?php echo $authUrl; ?>">
					<?php if($wlogin_gimage) { ?>
					<img class="img-responsive" src="<?php echo $wlogin_gimage; ?>"/>
					<?php }else{ ?>
					<img class="img-responsive" src="catalog/view/theme/default/image/wlogin/google.png"/>
					<?php } ?>
					</a>
				</div>
				<?php } ?>
				<?php if($wlogin_lstatus){ ?>
				<div class="<?php echo $col ?>">
					<a class="pull-left" href="<?php echo $lcallback; ?>">
						<?php if($wlogin_limage) { ?>
						<img class="img-responsive" src="<?php echo $wlogin_limage; ?>"/>
						<?php }else{ ?>
						<img class="img-responsive" src="catalog/view/theme/default/image/wlogin/linkedin.png"/>
						<?php } ?>
					</a>
				</div>
				<?php } ?>
				<?php if($wlogin_tstatus){ ?>
				<div class="<?php echo $col ?>">
					<a class="pull-left" href="<?php echo $tcallback; ?>">
						<?php if($wlogin_timage) { ?>
						<img class="img-responsive" src="<?php echo $wlogin_timage; ?>"/>
						<?php }else{ ?>
						<img class="img-responsive" src="catalog/view/theme/default/image/wlogin/twitter.png"/>
						<?php } ?>
					</a>
				</div>
				<?php } ?>
			</div>		
		</div>
	</div>	
	<div class="col-sm-12">
		<p class="text-center wlogin_or"><span>OR</span></p>
	</div>
</div>