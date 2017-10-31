<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-wlogin" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-wlogin" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="wlogin_status" id="input-status" class="form-control">
                <?php if ($wlogin_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
					<?php foreach ($languages as $language) { ?>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
            <div class="col-sm-10">
              <div class="input-group">
								<span class="input-group-addon">
									<?php if(VERSION >= '2.2.0.0'){ ?>
										<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />
									<?php } else { ?> 
										<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" />
									<?php } ?>
								</span>
                <textarea style="width:749px; height:36px;" name="wlogin_title<?php echo $language['language_id']; ?>" cols="80" rows="4"  id="input-title<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset(${'wlogin_title' . $language['language_id']}) ? ${'wlogin_title' . $language['language_id']} : ''; ?></textarea>
              </div>
            </div>
          </div>
          <?php } ?>
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab-facebook" data-toggle="tab"><i class="fa fa-facebook" aria-hidden="true"></i> <?php echo $tab_facebook; ?></a></li>
						<li><a href="#tab-google" data-toggle="tab"><i class="fa fa-google" aria-hidden="true"></i> <?php echo $tab_google; ?></a></li>
						<li><a href="#tab-linkedin" data-toggle="tab"><i class="fa fa-linkedin" aria-hidden="true"></i> <?php echo $tab_linkedin; ?></a></li>
						<li><a href="#tab-twitter" data-toggle="tab"><i class="fa fa-twitter" aria-hidden="true"></i> <?php echo $tab_twitter; ?></a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab-facebook">
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fstatus"><?php echo $entry_status; ?></label>
								<div class="col-sm-10">
									<select name="wlogin_fstatus" id="input-fstatus" class="form-control">
									<?php if ($wlogin_fstatus) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
									</select>
								</div>
							</div>
							<div class="form-group">
                <label class="col-sm-2 control-label" for="input-fimage"><?php echo $entry_fimage; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-fimage" data-toggle="image" class="img-thumbnail"><img src="<?php echo $fimage; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="wlogin_fimage" value="<?php echo $wlogin_fimage; ?>" id="input-fimage" />
                </div>
              </div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fcustomergroup"><?php echo $entry_customergroup; ?></label>
								<div class="col-sm-10">
									<select name="wlogin_fcustomergroup" id="input-fcustomergroup" class="form-control">
									<?php foreach($customergroups as $group){
										if($group['customer_group_id'] == $wlogin_fcustomergroup){
											$select = "selected=selected";
										}else{
											$select = '';
										}
									?>
										<option <?php echo $select; ?> value="<?php echo $group['customer_group_id']; ?>"><?php echo $group['name']; ?></option>
									<?php } ?>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fappid"><?php echo $entry_fappid; ?></label>
								<div class="col-sm-10">
									<input type="text" name="wlogin_fappid" id="input-fappid" class="form-control" value="<?php echo $wlogin_fappid; ?>"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fsecretkey"><?php echo $entry_fappappsecret; ?></label>
								<div class="col-sm-10">
									<input type="text" name="wlogin_fsecretkey" id="input-fsecretkey" class="form-control" value="<?php echo $wlogin_fsecretkey; ?>"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="input-fcallback"><?php echo $entry_fcallbackurl; ?></label>
								<div class="col-sm-10">
									<input readonly="readonly" type="text" name="wlogin_fcallback" id="input-fcallback" class="form-control" value="<?php echo $wlogin_fcallback; ?>"/>
								</div>
							</div>
							
					 </div>
					 <div class="tab-pane" id="tab-google">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gstatus"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_gstatus" id="input-gstatus" class="form-control">
								<?php if ($wlogin_gstatus) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gimage"><?php echo $entry_gimage; ?></label>
							<div class="col-sm-10"><a href="" id="thumb-gimage" data-toggle="image" class="img-thumbnail"><img src="<?php echo $gimage; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
								<input type="hidden" name="wlogin_gimage" value="<?php echo $wlogin_gimage; ?>" id="input-gimage" />
							</div>
            </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gcustomergroup"><?php echo $entry_customergroup; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_gcustomergroup" id="input-gcustomergroup" class="form-control">
								<?php foreach($customergroups as $group){
									if($group['customer_group_id'] == $wlogin_gcustomergroup){
										$select = "selected=selected";
									}else{
										$select = '';
									}
								?>
									<option <?php echo $select; ?> value="<?php echo $group['customer_group_id']; ?>"><?php echo $group['name']; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gappid"><?php echo $entry_gappid; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_gappid" id="input-gappid" class="form-control" value="<?php echo $wlogin_gappid; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gsecretkey"><?php echo $entry_gappappsecret; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_gsecretkey" id="input-gsecretkey" class="form-control" value="<?php echo $wlogin_gsecretkey; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-gcallback"><?php echo $entry_gcallbackurl; ?></label>
							<div class="col-sm-10">
								<input readonly="readonly" type="text" name="wlogin_gcallback" id="input-gcallback" class="form-control" value="<?php echo $wlogin_gcallback; ?>"/>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab-linkedin">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-lstatus"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_lstatus" id="input-lstatus" class="form-control">
								<?php if ($wlogin_lstatus) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-limage"><?php echo $entry_limage; ?></label>
							<div class="col-sm-10"><a href="" id="thumb-limage" data-toggle="image" class="img-thumbnail"><img src="<?php echo $limage; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
								<input type="hidden" name="wlogin_limage" value="<?php echo $wlogin_limage; ?>" id="input-limage" />
							</div>
            </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-lcustomergroup"><?php echo $entry_customergroup; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_lcustomergroup" id="input-lcustomergroup" class="form-control">
								<?php foreach($customergroups as $group){
									if($group['customer_group_id'] == $wlogin_lcustomergroup){
										$select = "selected=selected";
									}else{
										$select = '';
									}
								?>
									<option <?php echo $select; ?> value="<?php echo $group['customer_group_id']; ?>"><?php echo $group['name']; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-lappid"><?php echo $entry_lappid; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_lappid" id="input-lappid" class="form-control" value="<?php echo $wlogin_lappid; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-lsecretkey"><?php echo $entry_lappappsecret; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_lsecretkey" id="input-lsecretkey" class="form-control" value="<?php echo $wlogin_lsecretkey; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-lcallback"><?php echo $entry_lcallbackurl; ?></label>
							<div class="col-sm-10">
								<input readonly="readonly" type="text" name="wlogin_lcallback" id="input-lcallback" class="form-control" value="<?php echo $wlogin_lcallback; ?>"/>
							</div>
						</div>
					</div>
					<div class="tab-pane" id="tab-twitter">
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-tstatus"><?php echo $entry_status; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_tstatus" id="input-tstatus" class="form-control">
								<?php if ($wlogin_tstatus) { ?>
								<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
								<option value="0"><?php echo $text_disabled; ?></option>
								<?php } else { ?>
								<option value="1"><?php echo $text_enabled; ?></option>
								<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-timage"><?php echo $entry_timage; ?></label>
							<div class="col-sm-10"><a href="" id="thumb-timage" data-toggle="image" class="img-thumbnail"><img src="<?php echo $timage; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
								<input type="hidden" name="wlogin_timage" value="<?php echo $wlogin_timage; ?>" id="input-timage" />
							</div>
            </div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-tcustomergroup"><?php echo $entry_customergroup; ?></label>
							<div class="col-sm-10">
								<select name="wlogin_tcustomergroup" id="input-tcustomergroup" class="form-control">
								<?php foreach($customergroups as $group){
									if($group['customer_group_id'] == $wlogin_tcustomergroup){
										$select = "selected=selected";
									}else{
										$select = '';
									}
								?>
									<option <?php echo $select; ?> value="<?php echo $group['customer_group_id']; ?>"><?php echo $group['name']; ?></option>
								<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-tappid"><?php echo $entry_tappid; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_tappid" id="input-tappid" class="form-control" value="<?php echo $wlogin_tappid; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-tsecretkey"><?php echo $entry_tappappsecret; ?></label>
							<div class="col-sm-10">
								<input type="text" name="wlogin_tsecretkey" id="input-tsecretkey" class="form-control" value="<?php echo $wlogin_tsecretkey; ?>"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="input-tcallback"><?php echo $entry_tcallbackurl; ?></label>
							<div class="col-sm-10">
								<input readonly="readonly" type="text" name="wlogin_tcallback" id="input-tcallback" class="form-control" value="<?php echo $wlogin_tcallback; ?>"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label"></label>
						<div class="col-sm-10">
							<div class="well">
									<i>Note:</i> Make sure to set this as the Redirect URI in your API Project's. If the redirect URI does not work, try to switching the protocol between <b>http://</b> and <b>https://</b>
							</div>
						</div>
					</div>
				</div>
			</form>
    </div>
  </div>
 </div>
</div>
<?php echo $footer; ?>