<?php echo $header; ?>
<?php

function get_fonts() {
	$fonts = array(
		'standard',
		'ABeeZee',
		'Abel',
		'Abril Fatface',
		'Aclonica',
		'Acme',
		'Actor',
		'Adamina',
		'Advent Pro',
		'Aguafina Script',
		'Akronim',
		'Aladin',
		'Aldrich',
		'Alef',
		'Alegreya',
		'Alegreya SC',
		'Alex Brush',
		'Alfa Slab One',
		'Alice',
		'Alike',
		'Alike Angular',
		'Allan',
		'Allerta',
		'Allerta Stencil',
		'Allura',
		'Almendra',
		'Almendra Display',
		'Almendra SC',
		'Amarante',
		'Amaranth',
		'Amatic SC',
		'Amethysta',
		'Anaheim',
		'Andada',
		'Andika',
		'Angkor',
		'Annie Use Your Telescope',
		'Anonymous Pro',
		'Antic',
		'Antic Didone',
		'Antic Slab',
		'Anton',
		'Arapey',
		'Arbutus',
		'Arbutus Slab',
		'Architects Daughter',
		'Archivo Black',
		'Archivo Narrow',
		'Arial',
		'Arimo',
		'Arizonia',
		'Armata',
		'Artifika',
		'Arvo',
		'Asap',
		'Asset',
		'Astloch',
		'Asul',
		'Atomic Age',
		'Aubrey',
		'Audiowide',
		'Autour One',
		'Average',
		'Average Sans',
		'Averia Gruesa Libre',
		'Averia Libre',
		'Averia Sans Libre',
		'Averia Serif Libre',
		'Bad Script',
		'Balthazar',
		'Bangers',
		'Basic',
		'Battambang',
		'Baumans',
		'Bayon',
		'Belgrano',
		'Belleza',
		'BenchNine',
		'Bentham',
		'Berkshire Swash',
		'Bevan',
		'Bigelow Rules',
		'Bigshot One',
		'Bilbo',
		'Bilbo Swash Caps',
		'Bitter',
		'Black Ops One',
		'Bokor',
		'Bonbon',
		'Boogaloo',
		'Bowlby One',
		'Bowlby One SC',
		'Brawler',
		'Bree Serif',
		'Bubblegum Sans',
		'Bubbler One',
		'Buda',
		'Buenard',
		'Butcherman',
		'Butterfly Kids',
		'Cabin',
		'Cabin Condensed',
		'Cabin Sketch',
		'Caesar Dressing',
		'Cagliostro',
		'Calligraffitti',
		'Cambo',
		'Candal',
		'Cantarell',
		'Cantata One',
		'Cantora One',
		'Capriola',
		'Cardo',
		'Carme',
		'Carrois Gothic',
		'Carrois Gothic SC',
		'Carter One',
		'Caudex',
		'Cedarville Cursive',
		'Ceviche One',
		'Changa One',
		'Chango',
		'Chau Philomene One',
		'Chela One',
		'Chelsea Market',
		'Chenla',
		'Cherry Cream Soda',
		'Cherry Swash',
		'Chewy',
		'Chicle',
		'Chivo',
		'Cinzel',
		'Cinzel Decorative',
		'Clicker Script',
		'Coda',
		'Coda Caption',
		'Codystar',
		'Combo',
		'Comfortaa',
		'Coming Soon',
		'Concert One',
		'Condiment',
		'Content',
		'Contrail One',
		'Convergence',
		'Cookie',
		'Copse',
		'Corben',
		'Courgette',
		'Cousine',
		'Coustard',
		'Covered By Your Electromax',
		'Crafty Girls',
		'Creepster',
		'Crete Round',
		'Crimson Text',
		'Croissant One',
		'Crushed',
		'Cuprum',
		'Cutive',
		'Cutive Mono',
		'Damion',
		'Dancing Script',
		'Dangrek',
		'Dawning of a New Day',
		'Days One',
		'Delius',
		'Delius Swash Caps',
		'Delius Unicase',
		'Della Respira',
		'Denk One',
		'Devonshire',
		'Didact Gothic',
		'Diplomata',
		'Diplomata SC',
		'Domine',
		'Donegal One',
		'Doppio One',
		'Dorsa',
		'Dosis',
		'Dr Sugiyama',
		'Droid Sans',
		'Droid Sans Mono',
		'Droid Serif',
		'Duru Sans',
		'Dynalight',
		'EB Garamond',
		'Eagle Lake',
		'Eater',
		'Economica',
		'Electrolize',
		'Elsie',
		'Elsie Swash Caps',
		'Emblema One',
		'Emilys Candy',
		'Engagement',
		'Englebert',
		'Enriqueta',
		'Erica One',
		'Esteban',
		'Euphoria Script',
		'Ewert',
		'Exo',
		'Expletus Sans',
		'Fanwood Text',
		'Fascinate',
		'Fascinate Inline',
		'Faster One',
		'Fasthand',
		'Fauna One',
		'Federant',
		'Federo',
		'Felipa',
		'Fenix',
		'Finger Paint',
		'Fjalla One',
		'Fjord One',
		'Flamenco',
		'Flavors',
		'Fondamento',
		'Fontdiner Swanky',
		'Forum',
		'Francois One',
		'Freckle Face',
		'Fredericka the Great',
		'Fredoka One',
		'Freehand',
		'Fresca',
		'Frijole',
		'Fruktur',
		'Fugaz One',
		'GFS Didot',
		'GFS Neohellenic',
		'Gabriela',
		'Gafata',
		'Galdeano',
		'Galindo',
		'Gentium Basic',
		'Gentium Book Basic',
		'Geo',
		'Georgia',
		'Geostar',
		'Geostar Fill',
		'Germania One',
		'Gilda Display',
		'Give You Glory',
		'Glass Antiqua',
		'Glegoo',
		'Gloria Hallelujah',
		'Goblin One',
		'Gochi Hand',
		'Gorditas',
		'Goudy Bookletter 1911',
		'Graduate',
		'Grand Hotel',
		'Gravitas One',
		'Great Vibes',
		'Griffy',
		'Gruppo',
		'Gudea',
		'Habibi',
		'Hammersmith One',
		'Hanalei',
		'Hanalei Fill',
		'Handlee',
		'Hanuman',
		'Happy Monkey',
		'Headland One',
		'Henny Penny',
		'Herr Von Muellerhoff',
		'Holtwood One SC',
		'Homemade Apple',
		'Homenaje',
		'IM Fell DW Pica',
		'IM Fell DW Pica SC',
		'IM Fell Double Pica',
		'IM Fell Double Pica SC',
		'IM Fell English',
		'IM Fell English SC',
		'IM Fell French Canon',
		'IM Fell French Canon SC',
		'IM Fell Great Primer',
		'IM Fell Great Primer SC',
		'Iceberg',
		'Iceland',
		'Imprima',
		'Inconsolata',
		'Inder',
		'Indie Flower',
		'Inika',
		'Irish Grover',
		'Istok Web',
		'Italiana',
		'Italianno',
		'Jacques Francois',
		'Jacques Francois Shadow',
		'Jim Nightshade',
		'Jockey One',
		'Jolly Lodger',
		'Josefin Sans',
		'Josefin Slab',
		'Joti One',
		'Judson',
		'Julee',
		'Julius Sans One',
		'Junge',
		'Jura',
		'Just Another Hand',
		'Just Me Again Down Here',
		'Kameron',
		'Karla',
		'Kaushan Script',
		'Kavoon',
		'Keania One',
		'Kelly Slab',
		'Kenia',
		'Khmer',
		'Kite One',
		'Knewave',
		'Kotta One',
		'Koulen',
		'Kranky',
		'Kreon',
		'Kristi',
		'Krona One',
		'La Belle Aurore',
		'Lancelot',
		'Lato',
		'League Script',
		'Leckerli One',
		'Ledger',
		'Lekton',
		'Lemon',
		'Libre Baskerville',
		'Life Savers',
		'Lilita One',
		'Lily Script One',
		'Limelight',
		'Linden Hill',
		'Lobster',
		'Lobster Two',
		'Londrina Outline',
		'Londrina Shadow',
		'Londrina Sketch',
		'Londrina Solid',
		'Lora',
		'Love Ya Like A Sister',
		'Loved by the King',
		'Lovers Quarrel',
		'Luckiest Guy',
		'Lusitana',
		'Lustria',
		'Macondo',
		'Macondo Swash Caps',
		'Magra',
		'Maiden Orange',
		'Mako',
		'Marcellus',
		'Marcellus SC',
		'Marck Script',
		'Margarine',
		'Marko One',
		'Marmelad',
		'Marvel',
		'Mate',
		'Mate SC',
		'Maven Pro',
		'McLaren',
		'Meddon',
		'MedievalSharp',
		'Medula One',
		'Megrim',
		'Meie Script',
		'Merienda',
		'Merienda One',
		'Merriweather',
		'Merriweather Sans',
		'Metal',
		'Metal Mania',
		'Metamorphous',
		'Metrophobic',
		'Michroma',
		'Milonga',
		'Miltonian',
		'Miltonian Tattoo',
		'Miniver',
		'Miss Fajardose',
		'Modern Antiqua',
		'Molengo',
		'Molle',
		'Monda',
		'Monofett',
		'Monoton',
		'Monsieur La Doulaise',
		'Montaga',
		'Montez',
		'Montserrat',
		'Montserrat Alternates',
		'Montserrat Subrayada',
		'Moul',
		'Moulpali',
		'Mountains of Christmas',
		'Mouse Memoirs',
		'Mr Bedfort',
		'Mr Dafoe',
		'Mr De Haviland',
		'Mrs Saint Delafield',
		'Mrs Sheppards',
		'Muli',
		'Mystery Quest',
		'Neucha',
		'Neuton',
		'New Rocker',
		'News Cycle',
		'Niconne',
		'Nixie One',
		'Nobile',
		'Nokora',
		'Norican',
		'Nosifer',
		'Nothing You Could Do',
		'Noticia Text',
		'Noto Sans',
		'Noto Serif',
		'Nova Cut',
		'Nova Flat',
		'Nova Mono',
		'Nova Oval',
		'Nova Round',
		'Nova Script',
		'Nova Slim',
		'Nova Square',
		'Numans',
		'Nunito',
		'Odor Mean Chey',
		'Offside',
		'Old Standard TT',
		'Oldenburg',
		'Oleo Script',
		'Oleo Script Swash Caps',
		'Open Sans',
		'Open Sans Condensed',
		'Oranienbaum',
		'Orbitron',
		'Oregano',
		'Orienta',
		'Original Surfer',
		'Oswald',
		'Over the Rainbow',
		'Overlock',
		'Overlock SC',
		'Ovo',
		'Oxygen',
		'Oxygen Mono',
		'PT Mono',
		'PT Sans',
		'PT Sans Caption',
		'PT Sans Narrow',
		'PT Serif',
		'PT Serif Caption',
		'Pacifico',
		'Paprika',
		'Parisienne',
		'Passero One',
		'Passion One',
		'Pathway Gothic One',
		'Patrick Hand',
		'Patrick Hand SC',
		'Patua One',
		'Paytone One',
		'Peralta',
		'Permanent Marker',
		'Petit Formal Script',
		'Petrona',
		'Philosopher',
		'Piedra',
		'Pinyon Script',
		'Pirata One',
		'Plaster',
		'Play',
		'Playball',
		'Playfair Display',
		'Playfair Display SC',
		'Podkova',
		'Poiret One',
		'Poller One',
		'Poly',
		'Pompiere',
		'Pontano Sans',
		'Poppins',
		'Port Lligat Sans',
		'Port Lligat Slab',
		'Prata',
		'Preahvihear',
		'Press Start 2P',
		'Princess Sofia',
		'Prociono',
		'Prosto One',
		'Puritan',
		'Purple Purse',
		'Quando',
		'Quantico',
		'Quattrocento',
		'Quattrocento Sans',
		'Questrial',
		'Quicksand',
		'Quintessential',
		'Qwigley',
		'Racing Sans One',
		'Radley',
		'Raleway',
		'Raleway Dots',
		'Rajdhani',
		'Rambla',
		'Rammetto One',
		'Ranchers',
		'Rancho',
		'Rationale',
		'Redressed',
		'Reenie Beanie',
		'Revalia',
		'Ribeye',
		'Ribeye Marrow',
		'Righteous',
		'Risque',
		'Roboto',
		'Roboto Condensed',
		'Roboto Slab',
		'Rochester',
		'Rock Salt',
		'Rokkitt',
		'Romanesco',
		'Ropa Sans',
		'Rosario',
		'Rosarivo',
		'Rouge Script',
		'Ruda',
		'Rufina',
		'Ruge Boogie',
		'Ruluko',
		'Rum Raisin',
		'Ruslan Display',
		'Russo One',
		'Ruthie',
		'Rye',
		'Sacramento',
		'Sail',
		'Salsa',
		'Sanchez',
		'Sancreek',
		'Sansita One',
		'Sarina',
		'Satisfy',
		'Scada',
		'Schoolbell',
		'Seaweed Script',
		'Sevillana',
		'Seymour One',
		'Shadows Into Light',
		'Shadows Into Light Two',
		'Shanti',
		'Share',
		'Share Tech',
		'Share Tech Mono',
		'Shojumaru',
		'Short Stack',
		'Siemreap',
		'Sigmar One',
		'Signika',
		'Signika Negative',
		'Simonetta',
		'Sintony',
		'Sirin Stencil',
		'Six Caps',
		'Skranji',
		'Slackey',
		'Smokum',
		'Smythe',
		'Sniglet',
		'Snippet',
		'Snowburst One',
		'Sofadi One',
		'Sofia',
		'Sonsie One',
		'Sorts Mill Goudy',
		'Source Code Pro',
		'Source Sans Pro',
		'Special Elite',
		'Spicy Rice',
		'Spinnaker',
		'Spirax',
		'Squada One',
		'Stalemate',
		'Stalinist One',
		'Stardos Stencil',
		'Stint Ultra Condensed',
		'Stint Ultra Expanded',
		'Stoke',
		'Strait',
		'Sue Ellen Francisco',
		'Sunshiney',
		'Supermercado One',
		'Suwannaphum',
		'Swanky and Moo Moo',
		'Syncopate',
		'Tangerine',
		'Taprom',
		'Tauri',
		'Teko',
		'Telex',
		'Tenor Sans',
		'Text Me One',
		'The Girl Next Door',
		'Tienne',
		'Times New Roman',
		'Tinos',
		'Titan One',
		'Titillium Web',
		'Trade Winds',
		'Trocchi',
		'Trochut',
		'Trykker',
		'Tulpen One',
		'Ubuntu',
		'Ubuntu Condensed',
		'Ubuntu Mono',
		'Ultra',
		'Uncial Antiqua',
		'Underdog',
		'Unica One',
		'UnifrakturCook',
		'UnifrakturMaguntia',
		'Unkempt',
		'Unlock',
		'Unna',
		'VT323',
		'Vampiro One',
		'Varela',
		'Varela Round',
		'Vast Shadow',
		'Vibur',
		'Vidaloka',
		'Viga',
		'Voces',
		'Volkhov',
		'Vollkorn',
		'Voltaire',
		'Waiting for the Sunrise',
		'Wallpoet',
		'Walter Turncoat',
		'Warnes',
		'Wellfleet',
		'Wendy One',
		'Wire One',
		'Yantramanav',
		'Yanone Kaffeesatz',
		'Yellowtail',
		'Yeseva One',
		'Yesteryear',
		'Zeyada'	
	);
	return $fonts;
}

?>

<link href='https://fonts.googleapis.com/css?family=Poppins:700,600,500,400,300' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<link rel="stylesheet" type="text/css" href="view/stylesheet/template_options.css" />
<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/opencart.js"></script> 
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="view/javascript/jquery/jquery.cookie.js"></script>
<script type="text/javascript" src="view/javascript/beforeafter/jquery-ui.js"></script>
<script type="text/javascript" src="view/javascript/beforeafter/jquery.beforeafter-1.4.min.js"></script>
<script type="text/javascript">
$.fn.tabs = function() {
	var selector = this;
	
	this.each(function() {
		var obj = $(this); 
		
		$(obj.attr('href')).hide();
		
		$(obj).click(function() {
			$(selector).removeClass('selected');
			
			$(selector).each(function(i, element) {
				$($(element).attr('href')).hide();
			});
			
			$(this).addClass('selected');
			
			$($(this).attr('href')).show();
			
			return false;
		});
	});

	$(this).show();
	
	$(this).first().click();
};
</script>

<?php echo $column_left; ?>
<div id="content"><div class="container-fluid">
	<div class="page-header">
	    <h1>Electromax Theme Options</h1>
	    <ul class="breadcrumb">
		     <?php foreach ($breadcrumbs as $breadcrumb) { ?>
		      <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
		      <?php } ?>
	    </ul>
	  </div>

	<?php if ($error_warning) { ?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } elseif ($success) {  ?>
		<div class="alert alert-success"><i class="fa fa-exclamation-circle"></i> <?php echo $success; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php } ?>

<!-- Theme Options -->

<div class="set-size" id="theme-options">
	
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
	
		<!-- MULTISTORE -->
		<div id="tb_store_select">
			<label class="inline">Store</label>
			<select name="d_store_id" id="d_store_id">
			<?php foreach ($stores as $store): ?>
				<option value="<?php echo 'index.php?route=module/electromax&store_id=' . $store['store_id'] . '&token=' . $_GET['token']; ?>"<?php if($store_id == $store['store_id']) echo ' selected="selected"'; ?>><?php echo $store['name']; ?></option>
			<?php endforeach; ?>
			</select>
		</div>
					    
		<input type="hidden" name="store_id" value="<?php echo $store_id; ?>" />
					    
		<script type="text/javascript">
			$(document).ready(function (){
				$("#d_store_id").bind("change", function() {
					window.location = $(this).val();
				});
				
				$("#form input").keypress(function(event) {
				    if (event.which == 13) {
				        return false;
				    }
				});
				
				$(".button-add").click(function() {
					$(".add-skin").show();
					return false;
				});
			});
		</script>
		<!-- END MULTISTORE -->
		
		<!-- Unlimited theme skins -->
		<div class="content theme-skins" style="overflow: visible;position: relative;z-index: 1">
			<div>
				<ul class="skins">
					<?php $liczba_skinow = 0; if(isset($skins)) { foreach($skins as $skin) { $liczba_skinow++; } } ?>
					<?php $aktywny_skin = false; if($liczba_skinow > 0) { ?>
					<li><p class="active-skin">Active<br>skin:</p></li>
					<li>
					     <div class="arrow"></div>
						<select name="skin" class="select-skins">
							<?php foreach($skins as $skin) { ?>
							<option<?php if($skin == $active_skin_edit) { $aktywny_skin = true; echo ' selected="selected"'; } ?> value="<?php echo $skin; ?>" style="font-size: 12px !important"><?php echo $skin; ?></option>
							<?php } ?>
						</select>
						<input type="hidden" name="save_skin" value="<?php echo $active_skin_edit; ?>" />
					</li>
					<li><input type="submit" name="button-active" class="button-active"></li>
					<?php } ?>
					<li><a onclick="#" class="button-add"><span>Add</span></a><div class="add-skin"><input type="text" name="add-skin-name" class="add-skin-name" value=""><input type="submit" name="add-skin" value="Add skin" class="button-add-skin"></div></li>
					<?php if($liczba_skinow > 0) { ?>
					<li><input type="submit" name="button-edit" class="button-edit"></li>
					<li><input type="submit" name="button-delete" class="button-delete" onclick="return confirm('Are you sure you want to delete?')"></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		
		<?php if($liczba_skinow > 0 && ($active_skin != '' || $aktywny_skin == true)) { ?>
		<!-- Content -->
		
		<div class="content">
		
			<div>
				<!-- Tabs -->
				
				<div class="bg-tabs">
				
					<!-- General, Design, Footer TABS -->
					
					<div id="tabs" class="htabs main-tabs">
                        <div class="menu-switcher"></div>
						<a href="#tab_general" id="general"><span>General settings</span></a>
					
						<a href="#tab_footer" id="tfooter"><span>Custom footer</span></a>
						<a href="#tab_custom_block" id="tcustomblock"><span>Custom block</span></a>
						<a href="#tab_custom_code" id="tcustomcode"><span>Custom code</span></a>
						<a href="#tab_payment" id="tpayment"><span>Payment icons</span></a>
						<a href="#tab_widgets" id="twidgets"><span>Widgets</span></a>
						<a href="#tab_compressor_code" id="tcompressorcode"><span>Compressor code</span></a>
					
					
					</div>
					
					<!-- End General, Design Footer Tabs -->
					
					<!-- /////////////////// General -->
					
					<div id="tab_general" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_general" class="htabs tabs-design">
						
							<a href="#tab_layout" id="tlayout"><span>Layout</span></a>
							<a href="#tab_product" id="tproduct"><span>Product</span></a>
							<a href="#tab_category" id="tcategory"><span>Category</span></a>
							<a href="#tab_header" id="theader"><span>Header</span></a>
							<a href="#tab_translations" id="ttranslations"><span>Translations</span></a>
							
						
						</div>
						
						<!-- **************** Tab GENERAL OPTIONS -->
						
						<div id="tab_layout" class="tab-content">
                            <div class="input with-status">
                                <p>Responsive Design:</p>
                                <?php if($responsive_design == 0 && $responsive_design != '') { echo '<div class="status status-off" title="0" rel="responsive_design"></div>'; } else { echo '<div class="status status-on" title="1" rel="responsive_design"></div>'; } ?>
                                <input name="responsive_design" value="<?php echo $responsive_design; ?>" id="responsive_design" type="hidden" />
                                <div class="clear"></div>
                            </div>
							
							<!-- Input -->
							<div class="input">
								<p>Page Width:</p>
								<select name="page_width" class="select-page-width">
									<option value="1" <?php if($page_width == 1) { echo 'selected="selected"'; } ?>>Wide (1220px)</option>
									<option value="3" <?php if($page_width == 3) { echo 'selected="selected"'; } ?>>Standard (980px)</option>
									<option value="2" <?php if($page_width == 2) { echo 'selected="selected"'; } ?>>Full width</option>
								</select>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input page-width" <?php if($page_width != 2) { echo 'style="display:none"'; } ?>>
								<p>Max width:</p>
								<input type="text" name="max_width" value="<?php echo $max_width; ?>" style="margin-right:10px;width:60px">
								<div style="float:left;width:auto;padding-top:12px"><span style="color:#808080;font-size:11px">px</span></div>
								<div class="clear"></div>
							</div>
							
							<!-- Input -->
							<div class="input">
								<p>Spacing between columns:</p>
								<select name="spacing_between_columns">
									<option value="1" <?php if($spacing_between_columns == 1) { echo 'selected="selected"'; } ?>>Default (30px)</option>
									<option value="2" <?php if($spacing_between_columns == 2) { echo 'selected="selected"'; } ?>>Type 2 (20px)</option>
								</select>
								<div class="clear"></div>
							</div>
							
									<!-- Input -->
									<div class="input">
										<p>Page Direction:</p>
										<div class="list-language">
											<?php foreach($languages as $language) { ?>
											<div class="language select">
												<?php $language_id = $language['language_id']; ?>
												<img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
												<select type="text" name="page_direction[<?php echo $language_id; ?>]" >
							                <option value="LTR" <?php if(isset($page_direction[$language_id]) && $page_direction[$language_id] == 'LTR') { echo 'selected'; } ?>>LTR (Left To Right)</option>
							                <option value="RTL" <?php if(isset($page_direction[$language_id]) && $page_direction[$language_id] == 'RTL') { echo 'selected'; } ?>>RTL (Right To Left)</option>
							            </select>
											</div>
											<?php } ?>
										</div>
										<div class="clear"></div>
									</div>
							
							<div class="section">
                                <div class="section-title">
                                    <h4>Sections</h4>
                                </div>
                                <div class="section-content">
                                    <!-- Input -->
                                    <div class="input">
                                        <p>Main:</p>
                                        <select name="main_layout">
                                            <option value="1" <?php if($main_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($main_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="7" <?php if($main_layout == 7) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="3" <?php if($main_layout == 3) { echo 'selected="selected"'; } ?>>Fixed with shadow</option>
                                            <option value="4" <?php if($main_layout == 4) { echo 'selected="selected"'; } ?>>Fixed without background</option>
                                            <option value="5" <?php if($main_layout == 5) { echo 'selected="selected"'; } ?>>Fixed without background type 2</option>
                                            <option value="6" <?php if($main_layout == 6) { echo 'selected="selected"'; } ?>>Fixed without background type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                               

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Header:</p>
                                        <select name="header_layout">
                                            <option value="1" <?php if($header_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($header_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($header_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($header_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Slideshow:</p>
                                        <select name="slideshow_layout">
                                            <option value="1" <?php if($slideshow_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($slideshow_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($slideshow_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($slideshow_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Breadcrumb:</p>
                                        <select name="breadcrumb_layout">
                                            <option value="1" <?php if($breadcrumb_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($breadcrumb_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($breadcrumb_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($breadcrumb_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Content:</p>
                                        <select name="content_layout">
                                            <option value="1" <?php if($content_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($content_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($content_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($content_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Custom Footer:</p>
                                        <select name="custom_footer_layout">
                                            <option value="1" <?php if($custom_footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($custom_footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($custom_footer_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($custom_footer_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <!-- Input -->
                                    <div class="input">
                                        <p>Footer:</p>
                                        <select name="footer_layout">
                                            <option value="1" <?php if($footer_layout == 1) { echo 'selected="selected"'; } ?>>Full width</option>
                                            <option value="2" <?php if($footer_layout == 2) { echo 'selected="selected"'; } ?>>Fixed</option>
                                            <option value="3" <?php if($footer_layout == 3) { echo 'selected="selected"'; } ?>>Fixed type 2</option>
                                            <option value="4" <?php if($footer_layout == 4) { echo 'selected="selected"'; } ?>>Fixed type 3</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
						</div>
						
						<!-- Product -->
						<div id="tab_product" class="tab-content">
                            <div class="section">
                                <div class="input with-status">
                                    <p style="width:270px">Lazy loading images:</p>
                                    <?php if($lazy_loading_images == 0 && $lazy_loading_images != '') { echo '<div class="status status-off" title="0" rel="lazy_loading_images"></div>'; } else { echo '<div class="status status-on" title="1" rel="lazy_loading_images"></div>'; } ?>
                                    <input name="lazy_loading_images" value="<?php echo $lazy_loading_images; ?>" id="lazy_loading_images" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                            </div>
							<div class="section">
                                <div class="input with-status">
                                    <p style="width:270px">Sale badge:</p>
                                    <?php if($display_text_sale == 0 && $display_text_sale != '') { echo '<div class="status status-off" title="0" rel="display_text_sale"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_sale"></div>'; } ?>
                                    <input name="display_text_sale" value="<?php echo $display_text_sale; ?>" id="display_text_sale" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Type Sale:</p>
                                    <select name="type_sale">
                                        <option value="0" <?php if($type_sale =='0'){echo ' selected="selected"';} ?>>Text</option>
                                        <option value="1" <?php if($type_sale =='1'){echo ' selected="selected"';} ?>>%</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Text Sale:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="sale_text[<?php echo $language_id; ?>]" <?php if(isset($sale_text[$language_id])) { echo 'value="'.$sale_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:270px">Display New:</p>
                                    <?php if($display_text_new == 0 && $display_text_new != '') { echo '<div class="status status-off" title="0" rel="display_text_new"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_text_new"></div>'; } ?>
                                    <input name="display_text_new" value="<?php echo $display_text_new; ?>" id="display_text_new" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Text New:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="new_text[<?php echo $language_id; ?>]" <?php if(isset($new_text[$language_id])) { echo 'value="'.$new_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
							<div class="section">
                                <div class="section-title">
                                <h4>Product page</h4>
                                </div>
                                <div class="section-content">
                                    <div class="input">
                                        <p style="width:270px">Previous next products buttons:</p>
                                        <select name="product_breadcrumb">
                                            <option value="0" <?php if($product_breadcrumb =='0'){echo ' selected="selected"';} ?>>With details</option>
                                            <option value="1" <?php if($product_breadcrumb =='1'){echo ' selected="selected"';} ?>>Only button</option>
                                            <option value="2" <?php if($product_breadcrumb =='2'){echo ' selected="selected"';} ?>>Disable</option>
                                        </select>
                                        <a href="http://themenis.com/opencart/electromax/doc" class="hint-tooltip" data-toggle="tooltip" title="Go to the documentation to se how it works" target="_blank"></a>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Product image zoom:</p>
                                        <select name="product_image_zoom">
                                            <option value="0" <?php if($product_image_zoom =='0'){echo ' selected="selected"';} ?>>Cloud Zoom</option>
                                            <option value="1" <?php if($product_image_zoom =='1'){echo ' selected="selected"';} ?>>Inner Cloud Zoom</option>
                                            <option value="2" <?php if($product_image_zoom =='2'){echo ' selected="selected"';} ?>>Default</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Product image size:</p>
                                        <select name="product_image_size">
                                            <option value="1" <?php if($product_image_size =='1'){echo ' selected="selected"';} ?>>Small</option>
                                            <option value="2" <?php if($product_image_size =='2' || $product_image_size < 1){echo ' selected="selected"';} ?>>Medium</option>
                                            <option value="3" <?php if($product_image_size =='3'){echo ' selected="selected"';} ?>>Large</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Position image additional:</p>
                                        <select name="position_image_additional">
                                            <option value="1" <?php if($position_image_additional =='1'){echo ' selected="selected"';} ?>>Bottom</option>
                                            <option value="2" <?php if($position_image_additional =='2'){echo ' selected="selected"';} ?>>Left</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Product social share:</p>
                                        <?php if($product_social_share == 0 && $product_social_share != '') { echo '<div class="status status-off" title="0" rel="product_social_share"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_social_share"></div>'; } ?>
                                        <input name="product_social_share" value="<?php echo $product_social_share; ?>" id="product_social_share" type="hidden" />
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Related products:</p>
                                        <?php if($product_related_status == 0 && $product_related_status != '') { echo '<div class="status status-off" title="0" rel="product_related_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_related_status"></div>'; } ?>
                                        <input name="product_related_status" value="<?php echo $product_related_status; ?>" id="product_related_status" type="hidden" />
                                        <div class="clear"></div>
                                    </div>


                                    <div class="input">
                                        <p style="width:270px">Option radio style:</p>
                                        <select name="product_page_radio_style">
                                            <option value="0" <?php if($product_page_radio_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                            <option value="1" <?php if($product_page_radio_style =='1'){echo ' selected="selected"';} ?>>Button</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Option radio image size:</p>
                                        <input type="text" name="product_page_radio_image_width" style="width:60px" value="<?php echo $product_page_radio_image_width; ?>" />
                                        <div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:12px"> x </div>
                                        <input type="text" name="product_page_radio_image_height" style="width:60px" value="<?php echo $product_page_radio_image_height; ?>" />
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input">
                                        <p style="width:270px">Option checkbox style:</p>
                                        <select name="product_page_checkbox_style">
                                            <option value="0" <?php if($product_page_checkbox_style =='0'){echo ' selected="selected"';} ?>>Default</option>
                                            <option value="1" <?php if($product_page_checkbox_style =='1'){echo ' selected="selected"';} ?>>Button</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
							<div class="section">
                                <div class="section-title">
                                    <h4>Product grid</h4>
                                </div>
                                <div class="section-content">
                                    <div class="input">
                                        <p style="width:270px">Product number per row:</p>
                                        <select name="product_per_pow">
                                            <option value="3"<?php if($product_per_pow =='3'){echo ' selected="selected"';} ?>>3</option>
                                            <option value="4"<?php if($product_per_pow =='4' || $product_per_pow < 3){echo ' selected="selected"';} ?>>4</option>
                                            <option value="5"<?php if($product_per_pow =='5'){echo ' selected="selected"';} ?>>5</option>
                                            <option value="6"<?php if($product_per_pow =='6'){echo ' selected="selected"';} ?>>6</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>
                                
                                    <div class="input">
                                        <p style="width:270px">Product image effect:</p>
                                        <select name="product_image_effect">
                                            <option value="0"<?php if($product_image_effect =='0'){echo ' selected="selected"';} ?>>None</option>
                                            <option value="1"<?php if($product_image_effect =='1'){echo ' selected="selected"';} ?>>Swap image effect</option>
                                            <option value="2"<?php if($product_image_effect =='2'){echo ' selected="selected"';} ?>>Zoom image effect</option>
                                        </select>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="input with-status">
                                        <p style="width:270px">Quick view:</p>
                                        <?php if($quick_view == 0) { echo '<div class="status status-off" title="0" rel="quick_view"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_view"></div>'; } ?>
                                        <input name="quick_view" value="<?php echo $quick_view; ?>" id="quick_view" type="hidden" />
                                        <div class="clear"></div>
                                    </div>
                                    
                                    <div class="inputs-grouped">
                                        <div class="pull-left">
                                            <div class="input">
                                                <p style="width:272px">Display elements on product grid:</p>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                        <div class="pull-left">
                                            
                                            <div class="input inline">
                                                <label style="width:240px"> 
                                                    <?php if($display_specials_countdown == 0 || $display_specials_countdown == '') { echo '<div class="status status-off" title="0" rel="display_specials_countdown"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_specials_countdown"></div>'; } ?>
                                                    <input name="display_specials_countdown" value="<?php echo $display_specials_countdown; ?>" id="display_specials_countdown" type="hidden" />
                                                    <span>specials countdown </span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_wishlist == 0 && $display_add_to_wishlist != '') { echo '<div class="status status-off" title="0" rel="display_add_to_wishlist"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_wishlist"></div>'; } ?>
                                                    <input name="display_add_to_wishlist" value="<?php echo $display_add_to_wishlist; ?>" id="display_add_to_wishlist" type="hidden" />
                                                    <span>add to wishlist</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_compare == 0 && $display_add_to_compare != '') { echo '<div class="status status-off" title="0" rel="display_add_to_compare"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_compare"></div>'; } ?>
                                                    <input name="display_add_to_compare" value="<?php echo $display_add_to_compare; ?>" id="display_add_to_compare" type="hidden" />
                                                    <span>add to compare</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($display_add_to_cart == 0 && $display_add_to_cart != '') { echo '<div class="status status-off" title="0" rel="display_add_to_cart"></div>'; } else { echo '<div class="status status-on" title="1" rel="display_add_to_cart"></div>'; } ?>
                                                    <input name="display_add_to_cart" value="<?php echo $display_add_to_cart; ?>" id="display_add_to_cart" type="hidden" />
                                                    <span>add to cart</span>
                                                </label>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="inputs-grouped">
                                        <div class="pull-left">
                                            <div class="input">
                                                <p style="width:272px">Product scroll:</p>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                        <div class="pull-left">
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
                                                    <input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
                                                    <span>latest</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
                                                    <input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" /> 
                                                    <span>bestsellers</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
                                                    <input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
                                                    <span>featured</span>
                                                </label>
                                            </div>
                                            
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
                                                    <input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
                                                    <span>specials</span>
                                                </label>
                                            </div>
                                            <br>
                                            <div class="input inline">
                                                <label style="width:240px">
                                                    <?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
                                                    <input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
                                                    <span>related</span>
                                                </label>
                                            </div>
<!--                                            
                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- latest</p>
                                                <?php if($product_scroll_latest == 0 && $product_scroll_latest != '') { echo '<div class="status status-off" title="0" rel="product_scroll_latest"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_latest"></div>'; } ?>
                                                <input name="product_scroll_latest" value="<?php echo $product_scroll_latest; ?>" id="product_scroll_latest" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- featured</p>
                                                <?php if($product_scroll_featured == 0 && $product_scroll_featured != '') { echo '<div class="status status-off" title="0" rel="product_scroll_featured"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_featured"></div>'; } ?>
                                                <input name="product_scroll_featured" value="<?php echo $product_scroll_featured; ?>" id="product_scroll_featured" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- bestsellers</p>
                                                <?php if($product_scroll_bestsellers == 0 && $product_scroll_bestsellers != '') { echo '<div class="status status-off" title="0" rel="product_scroll_bestsellers"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_bestsellers"></div>'; } ?>
                                                <input name="product_scroll_bestsellers" value="<?php echo $product_scroll_bestsellers; ?>" id="product_scroll_bestsellers" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- specials</p>
                                                <?php if($product_scroll_specials == 0 && $product_scroll_specials != '') { echo '<div class="status status-off" title="0" rel="product_scroll_specials"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_specials"></div>'; } ?>
                                                <input name="product_scroll_specials" value="<?php echo $product_scroll_specials; ?>" id="product_scroll_specials" type="hidden" />
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input with-status">
                                                <p style="width:270px">&nbsp;&nbsp;&nbsp;- related</p>
                                                <?php if($product_scroll_related == 0 && $product_scroll_related != '') { echo '<div class="status status-off" title="0" rel="product_scroll_related"></div>'; } else { echo '<div class="status status-on" title="1" rel="product_scroll_related"></div>'; } ?>
                                                <input name="product_scroll_related" value="<?php echo $product_scroll_related; ?>" id="product_scroll_related" type="hidden" />
                                                <div class="clear"></div>
                                            </div>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
							
						</div>
						
						<!-- Category -->
						<div id="tab_category" class="tab-content">
                            <div class="section last">
                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Product grid number per row:</p>
                                    <select name="product_per_pow2">
                                        <option value="2"<?php if($product_per_pow2 =='2'){echo ' selected="selected"';} ?>>2</option>
                                        <option value="3"<?php if($product_per_pow2 =='3'){echo ' selected="selected"';} ?>>3</option>
                                        <option value="4"<?php if($product_per_pow2 =='4' || $product_per_pow2 < 2){echo ' selected="selected"';} ?>>4</option>
                                        <option value="5"<?php if($product_per_pow2 =='5'){echo ' selected="selected"';} ?>>5</option>
                                        <option value="6"<?php if($product_per_pow2 =='6'){echo ' selected="selected"';} ?>>6</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Default list/grid:</p>
                                    <select name="default_list_grid">
                                        <option value="0" <?php if($default_list_grid =='0'){echo ' selected="selected"';} ?>>List</option>
                                        <option value="1" <?php if($default_list_grid =='1'){echo ' selected="selected"';} ?>>Grid</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Refine search style:</p>
                                    <select name="refine_search_style">
                                        <option value="0" <?php if($refine_search_style =='0'){echo ' selected="selected"';} ?>>With images</option>
                                        <option value="1" <?php if($refine_search_style =='1'){echo ' selected="selected"';} ?>>Text only</option>
                                        <option value="2" <?php if($refine_search_style =='2'){echo ' selected="selected"';} ?>>Disable</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:270px">Refine search number per row:</p>
                                    <select name="refine_search_number">
                                        <option value="2"<?php if($refine_search_number =='2'){echo ' selected="selected"';} ?>>2</option>
                                        <option value="3"<?php if($refine_search_number =='3'|| $refine_search_number < 2){echo ' selected="selected"';} ?>>3</option>
                                        <option value="4"<?php if($refine_search_number =='4'){echo ' selected="selected"';} ?>>4</option>
                                        <option value="5"<?php if($refine_search_number =='5'){echo ' selected="selected"';} ?>>5</option>
                                        <option value="6"<?php if($refine_search_number =='6'){echo ' selected="selected"';} ?>>6</option>
                                    </select>
                                    <div class="clear"></div>
                                </div>

                                <!-- Input -->
                                <div class="input">
                                    <p style="width:270px">Refine search image size:</p>
                                    <input type="text" name="refine_image_width" style="width:60px" value="<?php echo $refine_image_width; ?>" />
                                    <div style="float:left;width:auto;padding-right:15px;position:relative;margin-left:-5px;padding-top:12px"> x </div>
                                    <input type="text" name="refine_image_height" style="width:60px" value="<?php echo $refine_image_height; ?>" />
                                    <div class="clear"></div>
                                </div>
                            </div>
						</div>
						
						<!-- Header -->
						<div id="tab_header" class="tab-content">
                            <div class="section">
                                <div class="input with-status">
                                    <p style="width:370px">Always show vertical megamenu in home page:</p>
                                    <?php if($show_vertical_menu == 0) { echo '<div class="status status-off" title="0" rel="show_vertical_menu"></div>'; } else { echo '<div class="status status-on" title="1" rel="show_vertical_menu"></div>'; } ?>
                                    <input name="show_vertical_menu" value="<?php echo $show_vertical_menu; ?>" id="show_vertical_menu" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:370px">Always show vertical megamenu in category page:</p>
                                    <?php if($show_vertical_menu_category_page == 0) { echo '<div class="status status-off" title="0" rel="show_vertical_menu_category_page"></div>'; } else { echo '<div class="status status-on" title="1" rel="show_vertical_menu_category_page"></div>'; } ?>
                                    <input name="show_vertical_menu_category_page" value="<?php echo $show_vertical_menu_category_page; ?>" id="show_vertical_menu_category_page" type="hidden" />
                                    <div class="clear"></div>
                                </div>

                                <div class="input with-status">
                                    <p style="width:370px">Quick Search Auto-Suggest:</p>
                                    <?php if($quick_search_autosuggest == 0 && $quick_search_autosuggest != '') { echo '<div class="status status-off" title="0" rel="quick_search_autosuggest"></div>'; } else { echo '<div class="status status-on" title="1" rel="quick_search_autosuggest"></div>'; } ?>
                                    <input name="quick_search_autosuggest" value="<?php echo $quick_search_autosuggest; ?>" id="quick_search_autosuggest" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                                <div class="input with-status">
                                    <p style="width:370px">Fixed header/menu:</p>
                                    <?php if($fixed_header == 0) { echo '<div class="status status-off" title="0" rel="fixed_header"></div>'; } else { echo '<div class="status status-on" title="1" rel="fixed_header"></div>'; } ?>
                                    <input name="fixed_header" value="<?php echo $fixed_header; ?>" id="fixed_header" type="hidden" />
                                    <div class="clear"></div>
                                </div>
                                
                            </div>
                            <div class="section">
                                <p style="margin: 10px 0">
                                <span style="color: #de3609; font-weight: 600">Here you can choose only header type = elements position, margins, paddings</span><br>
                                    If you need content from other header like phone number you need to set it in custom modules.<br>
                                Headers color you can change in Design & Colors › Colors
                                </p>
                            </div>
							
                            <div class="section accordion opened">
                                <div class="section-title">
                                    <h4 >Universal, simple<br> headers</h4>
                                    <div class="expander"></div>
                                </div>
                                <div class="section-content no-pad">
                                    <div class="hint">
                                        You can set these headers for any skin you want
                                    </div>
                                    <div class="input">
                                        <div class="custom-headers" style="float:left;width: 750px">
                                            <div class="header_name">Header 1</div>
                                            <div class="header_type <?php if($header_type < 2) { echo 'active'; } ?>">
                                                <label>
                                                    <input type="radio" name="header_type" value="1" <?php if($header_type < 2) { echo 'checked="checked"'; } ?> />
                                                    <img src="view/image/module_template/header_01.jpg" alt="" />
                                                    <div class="clear"></div>
                                                </label>
                                            </div>
                                            
                                       
                                            
                                            
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
						</div>
						
						<!-- Translations -->
						<div id="tab_translations" class="tab-content">
							<div class="section last">
                                <div class="input">
                                    <p style="width:200px">Welcome text in top bar:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="welcome_text[<?php echo $language_id; ?>]" <?php if(isset($welcome_text[$language_id])) { echo 'value="'.$welcome_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shopping cart:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shopping_cart_text[<?php echo $language_id; ?>]" <?php if(isset($shopping_cart_text[$language_id])) { echo 'value="'.$shopping_cart_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Home:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="home_text[<?php echo $language_id; ?>]" <?php if(isset($home_text[$language_id])) { echo 'value="'.$home_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Add to compare:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="add_to_compare_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_compare_text[$language_id])) { echo 'value="'.$add_to_compare_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Add to wishlist:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="add_to_wishlist_text[<?php echo $language_id; ?>]" <?php if(isset($add_to_wishlist_text[$language_id])) { echo 'value="'.$add_to_wishlist_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Quickview:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="quickview_text[<?php echo $language_id; ?>]" <?php if(isset($quickview_text[$language_id])) { echo 'value="'.$quickview_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">More details:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="more_details_text[<?php echo $language_id; ?>]" <?php if(isset($more_details_text[$language_id])) { echo 'value="'.$more_details_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Our brands:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="our_brands_text[<?php echo $language_id; ?>]" <?php if(isset($our_brands_text[$language_id])) { echo 'value="'.$our_brands_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Limited time offer:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="limited_time_offer_text[<?php echo $language_id; ?>]" <?php if(isset($limited_time_offer_text[$language_id])) { echo 'value="'.$limited_time_offer_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Previous product:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="previous_product_text[<?php echo $language_id; ?>]" <?php if(isset($previous_product_text[$language_id])) { echo 'value="'.$previous_product_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Next product:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="next_product_text[<?php echo $language_id; ?>]" <?php if(isset($next_product_text[$language_id])) { echo 'value="'.$next_product_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">All categories:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="all_categories_text[<?php echo $language_id; ?>]" <?php if(isset($all_categories_text[$language_id])) { echo 'value="'.$all_categories_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shop by car:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shop_by_car_text[<?php echo $language_id; ?>]" <?php if(isset($shop_by_car_text[$language_id])) { echo 'value="'.$shop_by_car_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>

                                <div class="input">
                                    <p style="width:200px">Shop by brand:</p>
                                    <div class="list-language">
                                        <?php foreach($languages as $language) { ?>
                                        <div class="language">
                                            <?php $language_id = $language['language_id']; ?>
                                            <img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" />
                                            <input type="text" name="shop_by_brand_text[<?php echo $language_id; ?>]" <?php if(isset($shop_by_brand_text[$language_id])) { echo 'value="'.$shop_by_brand_text[$language_id].'"'; } ?>>
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
						</div>
						
						
						
						
						<!-- **************** END TAB GENERAL OPTIONS -->
								
					</div>
					
					<!-- ////////////////////// End General -->
					
					
					<!-- Footer -->
					
					<div id="tab_footer" class="tab-content3">
					
						<div class="footer_left">
						
							<!-- Contact, About us, Facebook TABS -->
							
                            <div id="tabs_footer" class="htabs main-tabs">
								
								<?php foreach ($languages as $language): ?>
								<a href="#tab_customfooter_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							
							</div>
                           
							<!-- End Contact, About us, Facebook Tabs -->
						
						</div>
						
						<div class="footer_right">
							
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							
							<div id="tab_customfooter_<?php echo $language_id; ?>">
							
								<!-- Contact, About us, Facebook TABS -->
								
								<div id="tabs_<?php echo $language_id; ?>" class="htabs tabs-design">
								
									<a href="#tab_contact_<?php echo $language_id; ?>" class="tcontact"><span>Contact</span></a>
									<a href="#tab_aboutus_<?php echo $language_id; ?>" class="taboutus"><span>About us</span></a>
									<a href="#tab_facebook_<?php echo $language_id; ?>" class="tfacebook"><span>Facebook</span></a>
									<a href="#tab_twitter_<?php echo $language_id; ?>" class="ttwitter"><span>Twitter</span></a>
									<a href="#tab_customblock_<?php echo $language_id; ?>" class="tcustomblock"><span>Custom</span></a>
								
								</div>
								
								<!-- Contact, About us, Facebook -->
								
								<!-- TAB CONTACT -->
								
								<div id="tab_contact_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
									<!-- Status -->
									
									<?php if(isset($customfooter[$language_id]['contact_status'])) { ?>
										<?php if($customfooter[$language_id]['contact_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_contact_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; } ?>
									
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="<?php echo $customfooter[$language_id]['contact_status']; ?>" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } else { ?>
										<?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_contact_status"></div>'; ?>
										<input name="customfooter[<?php echo $language_id; ?>][contact_status]" value="0" id="customfooter_<?php echo $language_id; ?>_contact_status" type="hidden" />
									<?php } ?>
                                    </div>
                                    
                                    
                                    <div class="section">
                                        <div class="section-title">
                                            <h4>Contact</h4>
                                        </div>
                                        <div class="section-content">
									
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Title:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_title'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_title]" type="text" value="<?php echo $customfooter[$language_id]['contact_title']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_title]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Phone:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_phone'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone]" type="text" value="<?php echo $customfooter[$language_id]['contact_phone']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Phone 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_phone2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" type="text" value="<?php echo $customfooter[$language_id]['contact_phone2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_phone2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Skype:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_skype'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype]" type="text" value="<?php echo $customfooter[$language_id]['contact_skype']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>Skype 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_skype2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" type="text" value="<?php echo $customfooter[$language_id]['contact_skype2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_skype2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>E-mail:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_email'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email]" type="text" value="<?php echo $customfooter[$language_id]['contact_email']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        <!-- Input -->

                                        <div class="input">

                                            <p>E-mail 2:</p>
                                            <?php if(isset($customfooter[$language_id]['contact_email2'])) { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email2]" type="text" value="<?php echo $customfooter[$language_id]['contact_email2']; ?>" />
                                            <?php } else { ?>
                                                <input name="customfooter[<?php echo $language_id; ?>][contact_email2]" type="text" value="" />
                                            <?php } ?>

                                            <div class="clear"></div>

                                        </div>

                                        <!-- End Input -->
                                        </div>
                                    </div>

								</div>
								
								<!-- End TAB CONTACT -->
								
								<!-- TAB About us -->
								
								<div id="tab_aboutus_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['aboutus_status'])) { ?>
                                            <?php if($customfooter[$language_id]['aboutus_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="<?php echo $customfooter[$language_id]['aboutus_status']; ?>" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_aboutus_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][aboutus_status]" value="0" id="customfooter_<?php echo $language_id; ?>_aboutus_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>About us</h4>
                                        </div>
                                        <div class="section-content">
									
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['aboutus_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" type="text" value="<?php echo $customfooter[$language_id]['aboutus_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][aboutus_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input-with-editor editor-no-border">										

                                                <?php if(isset($customfooter[$language_id]['aboutus_text'])) { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]" id="customfooter_<?php echo $language_id; ?>_aboutus_text"><?php echo $customfooter[$language_id]['aboutus_text']; ?></textarea>
                                                <?php } else { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][aboutus_text]" id="customfooter_<?php echo $language_id; ?>_aboutus_text"></textarea>
                                                <?php } ?>

                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#customfooter_<?php echo $language_id; ?>_aboutus_text').summernote({
                                                        height: 250
                                                    });
                                                </script>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB About US -->
								
								<!-- TAB Facebook -->
								
								<div id="tab_facebook_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['facebook_status'])) { ?>
                                            <?php if($customfooter[$language_id]['facebook_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="<?php echo $customfooter[$language_id]['facebook_status']; ?>" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_facebook_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][facebook_status]" value="0" id="customfooter_<?php echo $language_id; ?>_facebook_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Facebook</h4>
                                        </div>
                                        <div class="section-content">
									
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_title]" type="text" value="<?php echo $customfooter[$language_id]['facebook_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Facebook ID:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_id'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_id]" type="text" value="<?php echo $customfooter[$language_id]['facebook_id']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_id]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Show Faces:</p>
                                                <select name="customfooter[<?php echo $language_id; ?>][show_faces]">
                                                    <?php if(isset($customfooter[$language_id]['show_faces'])) { ?>
                                                        <option value="0" <?php if($customfooter[$language_id]['show_faces'] =='0'){echo ' selected="selected"';} ?>>Yes</option>
                                                        <option value="1" <?php if($customfooter[$language_id]['show_faces'] =='1'){echo ' selected="selected"';} ?>>No</option>
                                                    <?php } else { ?>
                                                        <option value="0" selected="selected">Yes</option>
                                                        <option value="1">No</option>						              
                                                    <?php } ?>
                                                </select>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Number of faces:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_faces'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" type="text" value="<?php echo $customfooter[$language_id]['facebook_faces']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_faces]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Height:</p>
                                                <?php if(isset($customfooter[$language_id]['facebook_height'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_height]" type="text" value="<?php echo $customfooter[$language_id]['facebook_height']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][facebook_height]" type="text" value="" />
                                                <?php } ?>
                                                <span style="display: block;float: left;width: auto;padding-top:12px">px</span>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Color scheme:</p>
                                                <select name="customfooter[<?php echo $language_id; ?>][color_scheme]">
                                                    <?php if(isset($customfooter[$language_id]['color_scheme'])) { ?>
                                                        <option value="0" <?php if($customfooter[$language_id]['color_scheme'] =='0'){echo ' selected="selected"';} ?>>Light</option>
                                                        <option value="1" <?php if($customfooter[$language_id]['color_scheme'] =='1'){echo ' selected="selected"';} ?>>Dark</option>
                                                    <?php } else { ?>
                                                        <option value="0" selected="selected">Light</option>
                                                        <option value="1">Dark</option>						              
                                                    <?php } ?>
                                                </select>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Facebook -->
								
								<!-- TAB Twitter -->
								
								<div id="tab_twitter_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['twitter_status'])) { ?>
                                            <?php if($customfooter[$language_id]['twitter_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="<?php echo $customfooter[$language_id]['twitter_status']; ?>" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_twitter_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][twitter_status]" value="0" id="customfooter_<?php echo $language_id; ?>_twitter_status" type="hidden" />
                                        <?php } ?>
                                    </div>

									<div class="section">
                                        <div class="section-title">
                                            <h4>Twiter</h4>
                                        </div>
                                        <div class="section-content">

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['twitter_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_title]" type="text" value="<?php echo $customfooter[$language_id]['twitter_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                            <!-- Input -->

                                            <div class="input">

                                                <p>Widget id:</p>
                                                <?php if(isset($customfooter[$language_id]['twitter_widget_id'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" type="text" value="<?php echo $customfooter[$language_id]['twitter_widget_id']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][twitter_widget_id]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Twitter -->
								
								<!-- TAB Custom block -->
								
								<div id="tab_customblock_<?php echo $language_id; ?>" class="tab-content4">
								
                                    <div class="section">
                                        <!-- Status -->

                                        <?php if(isset($customfooter[$language_id]['customblock_status'])) { ?>
                                            <?php if($customfooter[$language_id]['customblock_status'] == 1) { echo '<div class="status status-on" title="1" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; } ?>

                                            <input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="<?php echo $customfooter[$language_id]['customblock_status']; ?>" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
                                        <?php } else { ?>
                                            <?php echo '<div class="status status-off" title="0" rel="customfooter_'.$language_id.'_customblock_status"></div>'; ?>
                                            <input name="customfooter[<?php echo $language_id; ?>][customblock_status]" value="0" id="customfooter_<?php echo $language_id; ?>_customblock_status" type="hidden" />
                                        <?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">

                                            <!-- Input -->

                                            <div class="input">

                                                <p>Title:</p>
                                                <?php if(isset($customfooter[$language_id]['customblock_title'])) { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][customblock_title]" type="text" value="<?php echo $customfooter[$language_id]['customblock_title']; ?>" />
                                                <?php } else { ?>
                                                    <input name="customfooter[<?php echo $language_id; ?>][customblock_title]" type="text" value="" />
                                                <?php } ?>

                                                <div class="clear"></div>

                                            </div>

                                            <!-- End Input -->

                                            <!-- Input -->

                                            <div class="input-with-editor editor-no-border">										

                                                <?php if(isset($customfooter[$language_id]['customblock_text'])) { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]" id="customfooter_<?php echo $language_id; ?>_customblock_text"><?php echo $customfooter[$language_id]['customblock_text']; ?></textarea>
                                                <?php } else { ?>
                                                    <textarea rows="0" cols="0" name="customfooter[<?php echo $language_id; ?>][customblock_text]" id="customfooter_<?php echo $language_id; ?>_customblock_text"></textarea>
                                                <?php } ?>

                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#customfooter_<?php echo $language_id; ?>_customblock_text').summernote({
                                                        height: 250
                                                    });
                                                </script>

                                            </div>

                                            <!-- End Input -->
                                        </div>
                                    </div>
																	
								</div>
								
								<!-- End TAB Custom block -->
								
								<script type="text/javascript"><!--
								$('#tabs_<?php echo $language_id; ?> a').tabs();
								if($.cookie('tabs_<?php echo $language_id; ?>') > 0) {
									$('#tabs_<?php echo $language_id; ?> a').eq($.cookie('tabs_<?php echo $language_id; ?>')).trigger("click");
								}
								$('#tabs_<?php echo $language_id; ?> a').click(function() {
									var element_index = $('#tabs_<?php echo $language_id; ?> a').index(this);
									$.cookie('tabs_<?php echo $language_id; ?>', element_index); 
								});
								//--></script> 
							
							</div>
							
							<?php } ?>
						
						</div>
						
						<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;"></p>
					
					</div>
					
					<!-- End Footer -->
					
					<!-- ''''''''''''''' PAYMENT -->
					
					<div id="tab_payment" class="tab-content">
					
                        <div class="section">
                            <!-- Status -->
                            <?php if($payment_status == 0 && $payment_status != '') { echo '<div class="status status-off" title="0" rel="payment_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_status"></div>'; } ?>
                            <input name="payment_status" value="<?php echo $payment_status; ?>" id="payment_status" type="hidden" />
						</div>
						<table class="payment_images" id="payment">
							<thead>
								<tr>
									<td class="first">Icon</td>
									<td>Name</td>
									<td>Link</td>
									<td>Sort</td>
									<td>New Tab</td>
									<td>Delete</td>
								</tr>
							</thead>
							<?php $module_row = 0; if($payment != '') { ?>
								<?php foreach($payment as $payments) { ?>
								<tbody id="payment<?php echo $module_row; ?>">
									<tr>
										<td class="first">
											<div class="own_image">
												<input type="hidden" name="payment[<?php echo $module_row; ?>][img]" value="<?php echo $payments['img']; ?>" id="input-<?php echo $module_row; ?>_img_preview" />
												
												<?php if($payments['img'] == '') { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } else { ?>
													<a href="" id="thumb-<?php echo $module_row; ?>_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="../image/<?php echo $payments['img']; ?>" alt="" data-placeholder="<?php echo $placeholder; ?>" /></a>
												<?php } ?>
											</div>
										</td>
										<td>
											<div class="payment-name">
												<input type="text" value="<?php if(isset($payments['name'])) { echo $payments['name']; } ?>" name="payment[<?php echo $module_row; ?>][name]">
											</div>
										</td>
										<td>
											<input type="text" value="<?php if(isset($payments['link'])) { echo $payments['link']; } ?>" name="payment[<?php echo $module_row; ?>][link]">
										</td>
										<td>
											<input type="text" class="sort" value="<?php if(isset($payments['sort'])) { echo $payments['sort']; } ?>" name="payment[<?php echo $module_row; ?>][sort]">
										</td>
										<td>
											<?php if(isset($payments['new_tab'])) { ?>
												<?php if($payments['new_tab'] == 0 && $payments['new_tab'] != '') { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } else { echo '<div class="status status-on" title="1" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<?php } else { echo '<div class="status status-off" title="0" rel="payment_'.$module_row.'_new_tab"></div>'; } ?>
											<input name="payment[<?php echo $module_row; ?>][new_tab]" value="<?php if(isset($payments['new_tab'])) { echo $payments['new_tab']; } else { echo '0'; } ?>" id="payment_<?php echo $module_row; ?>_new_tab" type="hidden" />
										</td>
										<td>
											<a onclick="$('#payment<?php echo $module_row; ?>').remove();" class="remove-payment">Remove</a>
										</td>
									</tr>
								</tbody>
								<?php $module_row++; } ?>
							<?php } ?>
							<tfoot></tfoot>
						</table>
						
                        <a onclick="addPayment();" class="add-item-payment">Add<br> item</a>
						
						<script type="text/javascript"><!--
						var module_row = <?php echo $module_row; ?>;
						
						function addPayment() {
							html  = '<tbody id="payment' + module_row + '">';
							html += '  <tr>';
							html += '	 <td class="first">';
							html += '		<div class="own_image"><input type="hidden" name="payment[' + module_row + '][img]" value="" id="input-' + module_row + '_img_preview" /><a href="" id="thumb-' + module_row + '_img_preview" class="img-thumbnail img-edit" data-toggle="image"><img src="<?php echo $placeholder; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a></div>';
							html += '	 </td>';
							html += '    <td>';
							html += '		<div class="payment_name"><input type="text" name="payment[' + module_row + '][name]"></div>';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" name="payment[' + module_row + '][link]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<input type="text" class="sort" name="payment[' + module_row + '][sort]">';
							html += '    </td>';
							html += '    <td>';
							html += '		<div class="status status-off" title="0" rel="payment_' + module_row + '_new_tab"></div><input name="payment[' + module_row + '][new_tab]" value="0" id="payment_' + module_row + '_new_tab" type="hidden" />';
							html += '    </td>';
							html += '    <td><a onclick="$(\'#payment' + module_row + '\').remove();" class="remove-payment">Remove</a></td>';
							html += '  </tr>';
							html += '</tbody>';
							
							$('#payment tfoot').before(html);
							
							module_row++;
						}
						//--></script> 
	
					</div>
					
					<!-- ''''''''''''''''' END PAYMENT -->
					
					<!-- Custom code -->
					
					<div id="tab_custom_code" class="tab-content2">
					
						<!-- Font, colors, background TABS -->
						
						<div id="tabs_custom_code" class="htabs tabs-design">
						
							<a href="#tab_css" id="tcss"><span>Css</span></a>
							<a href="#tab_javascript" id="tjavascript"><span>Javascript</span></a>
						
						</div>
						
						<!-- ....... TABS CSS -->
						
						<div id="tab_css" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_css_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_css_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_css_status"></div>'; } ?>
							
							<input name="custom_code_css_status" value="<?php echo $custom_code_css_status; ?>" id="custom_code_css_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_css)) { ?>
								<textarea rows="0" cols="0" name="custom_code_css"><?php echo $custom_code_css; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_css"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS CSS -->
						
						<!-- ....... TABS JAVASCRIPT -->
						
						<div id="tab_javascript" class="tab-content">
						
							<!-- Status -->
							
							<?php if($custom_code_javascript_status == 1) { echo '<div class="status status-on" title="1" rel="custom_code_javascript_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_code_javascript_status"></div>'; } ?>
							
							<input name="custom_code_javascript_status" value="<?php echo $custom_code_javascript_status; ?>" id="custom_code_javascript_status" type="hidden" />
							
							<!-- Input -->
							
							<div class="input">										
							
								<?php if(isset($custom_code_js)) { ?>
								<textarea rows="0" cols="0" name="custom_code_js"><?php echo $custom_code_js; ?></textarea>
								<?php } else { ?>
								<textarea rows="0" cols="0" name="custom_code_js"></textarea>
								<?php } ?>
							
								<div class="clear"></div>
							
							</div>
							
							<!-- End Input -->
						
						</div>
						
						<!-- ....... END TABS JAVASCRIPT -->
										
					</div>
					
					<!-- End Custom code -->
					
					<!-- Widget -->
					
					<div id="tab_widgets" class="tab-content2">
											
						<div id="tabs_widgets" class="htabs tabs-design">
						
							<a href="#tab_widget_facebook" class="tfacebook"><span>Facebook</span></a>
							<a href="#tab_widget_twitter" class="ttwitter"><span>Twitter</span></a>
							<a href="#tab_widget_custom" class="tcustomblock"><span>Custom</span></a>
						
						</div>
												
						<div id="tab_widget_facebook" class="tab-content">
						
                            <div class="section">
							<!-- Status -->
							
							<?php if($widget_facebook_status == 1) { echo '<div class="status status-on" title="1" rel="widget_facebook_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_facebook_status"></div>'; } ?>
							
							<input name="widget_facebook_status" value="<?php echo $widget_facebook_status; ?>" id="widget_facebook_status" type="hidden" />
							
							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Facebook</h4>
                                </div>
                                <div class="section-content">
							
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Facebook ID:</p>
                                        <?php if(isset($widget_facebook_id)) { ?>
                                            <input name="widget_facebook_id" type="text" value="<?php echo $widget_facebook_id; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_facebook_id" type="text" value="" />
                                        <?php } ?>

                                        <a href="http://findmyfacebookid.com/" target="_blank" style="display: block;float: left;width: auto;margin-top: 7px">Find your Facebook ID »</a>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_facebook_position">
                                            <?php if(isset($widget_facebook_position)) { ?>
                                               <option value="0" <?php if($widget_facebook_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_facebook_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
						
						</div>
												
						<div id="tab_widget_twitter" class="tab-content">
						
                            <div class="section">
							<!-- Status -->
							
							<?php if($widget_twitter_status == 1) { echo '<div class="status status-on" title="1" rel="widget_twitter_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_twitter_status"></div>'; } ?>
							
							<input name="widget_twitter_status" value="<?php echo $widget_twitter_status; ?>" id="widget_twitter_status" type="hidden" />
							
							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Twitter</h4>
                                </div>
                                <div class="section-content">
							
                                    <!-- Input -->

                                    <div class="input">

                                        <p>Twitter username:</p>
                                        <?php if(isset($widget_twitter_user_name)) { ?>
                                            <input name="widget_twitter_user_name" type="text" value="<?php echo $widget_twitter_user_name; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_twitter_user_name" type="text" value="" />
                                        <?php } ?>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Widget ID:</p>
                                        <?php if(isset($widget_twitter_id)) { ?>
                                            <input name="widget_twitter_id" type="text" value="<?php echo $widget_twitter_id; ?>" />
                                        <?php } else { ?>
                                            <input name="widget_twitter_id" type="text" value="" />
                                        <?php } ?>

                                        <div class="clear"></div>

                                    </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Tweet limit:</p>
                                        <select name="widget_twitter_limit">
                                            <?php if(isset($widget_twitter_limit)) { ?>
                                               <option value="1" <?php if($widget_twitter_limit =='1'){echo ' selected="selected"';} ?>>1</option>
                                               <option value="2" <?php if($widget_twitter_limit =='2'){echo ' selected="selected"';} ?>>2</option>
                                               <option value="3" <?php if($widget_twitter_limit =='3'){echo ' selected="selected"';} ?>>3</option>
                                             <?php } else { ?>
                                                <option value="1">1</option>
                                                <option value="2">2</option>						              
                                                <option value="3" selected="selected">3</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_twitter_position">
                                            <?php if(isset($widget_twitter_position)) { ?>
                                               <option value="0" <?php if($widget_twitter_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_twitter_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
						
						</div>
						
						<div id="tab_widget_custom" class="tab-content">
						
                            <div class="section">
                                <!-- Status -->

                                <?php if($widget_custom_status == 1) { echo '<div class="status status-on" title="1" rel="widget_custom_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="widget_custom_status"></div>'; } ?>

                                <input name="widget_custom_status" value="<?php echo $widget_custom_status; ?>" id="widget_custom_status" type="hidden" />

							</div>
									
                            <div class="section">
                                <div class="section-title">
                                    <h4>Custom block</h4>
                                </div>
                                <div class="section-content">
							
                                    <div class="customblocktabs htabs">
                                        <?php foreach ($languages as $language) { ?>
                                        <a href="#content_customblock_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a>
                                        <?php } ?>
                                    </div>

                                    <?php foreach ($languages as $language) { $lang_id = $language['language_id']; ?>
                                    <!-- Input -->
                                    <div id="content_customblock_<?php echo $language['language_id']; ?>" class="content_customblock">
                                        <div class="input-with-editor clearfix">
                                            <textarea name="widget_custom_content[<?php echo $language['language_id']; ?>]" id="widget_custom_content_<?php echo $language['language_id']; ?>" style="float: none;clear: both"><?php if(isset($widget_custom_content[$lang_id])) { echo $widget_custom_content[$lang_id]; } ?></textarea>
                                        </div>
                                    </div>
                                    <?php } ?>

                                    <!-- Input -->

                                    <div class="input">

                                        <p>Position:</p>
                                        <select name="widget_custom_position">
                                            <?php if(isset($widget_custom_position)) { ?>
                                               <option value="0" <?php if($widget_custom_position =='0'){echo ' selected="selected"';} ?>>Right</option>
                                               <option value="1" <?php if($widget_custom_position =='1'){echo ' selected="selected"';} ?>>Left</option>
                                             <?php } else { ?>
                                                    <option value="0" selected="selected">Right</option>
                                                <option value="1">Left</option>						              
                                             <?php } ?>
                                        </select>

                                        <div class="clear"></div>

                                     </div>

                                    <!-- End Input -->
                                </div>
                            </div>
							
						</div>
																
					</div>
					
					<!-- End Widgets -->
					
					<!-- Compressor Code -->
					
					<div id="tab_compressor_code" class="tab-content">
					
						<!-- Status -->
						<?php if($compressor_code_status == 0) { echo '<div class="status status-off" title="0" rel="compressor_code_status"></div>'; } else { echo '<div class="status status-on" title="1" rel="compressor_code_status"></div>'; } ?>
						
						<input name="compressor_code_status" value="<?php echo $compressor_code_status; ?>" id="compressor_code_status" type="hidden" />
						
						<p style="font-family:Open Sans;color:#4c4c4c;font-size:12px;line-height: 21px;padding-top: 15px">The content of css and js files are placed in a single file, delete spaces, which allows for faster page loading. Changes made when this option is enabled will be visible after an hour.</p>
						
						<div class="hint" style="margin-top: 17px">You can enable Compressor code ONLY when your store will be complete and no more changes will be made.</div>
						
					</div>
					
					<!-- End Compressor Code -->
					
									
					<!-- Custom block -->
					
					<div id="tab_custom_block" class="tab-content3">
						<div class="footer_left" style="margin-top: 280px">
							<div id="tabs_custom_block" class="htabs main-tabs">
								<?php foreach ($languages as $language): ?>
								<a href="#tab_custom_block_<?php echo $language['language_id']; ?>"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" alt="<?php echo $language['name']; ?>" width="16px" height="11px" /><span><?php echo $language['name']; ?></span></a>
								<?php endforeach; ?>
							</div>
						</div>
						
						<div class="footer_right">
							<?php foreach ($languages as $language) { ?>
							<?php $language_id = $language['language_id']; ?>
							<div id="tab_custom_block_<?php echo $language_id; ?>">
								<div id="tabs_custom_block_<?php echo $language_id; ?>" class="htabs tabs-design">
									<a href="#tab_contact_page_<?php echo $language_id; ?>" class="tcontact"><span>Contact page</span></a>
									<a href="#tab_product_page_<?php echo $language_id; ?>" class="tproduct"><span>Product page</span></a>
								</div>
								
								<div id="tab_contact_page_<?php echo $language_id; ?>" class="tab-content4">
									
                                    <div class="section">
                                    <!-- Status -->
									<?php if(isset($custom_block['contact_page'][$language_id]['status'])) { ?>
									<?php if($custom_block['contact_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; } ?>
									
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['contact_page'][$language_id]['status']; ?>" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } else { ?>
									<?php echo '<div class="status status-off" title="0" rel="custom_block_contact_page_'.$language_id.'_status"></div>'; ?>
									<input name="custom_block[contact_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_contact_page_<?php echo $language_id; ?>_status" type="hidden" />
									<?php } ?>
                                    </div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">
                                            <div class="input">
                                                <p>Heading:</p>
                                                <?php if(isset($custom_block['contact_page'][$language_id]['heading'])) { ?>
                                                <input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" type="text" value="<?php echo $custom_block['contact_page'][$language_id]['heading']; ?>" />
                                                <?php } else { ?>
                                                <input name="custom_block[contact_page][<?php echo $language_id; ?>][heading]" type="text" value="" />
                                                <?php } ?>
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input-with-editor editor-no-border">										
                                                <?php if(isset($custom_block['contact_page'][$language_id]['text'])) { ?>
                                                <textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]" id="custom_block_contact_page_<?php echo $language_id; ?>_text"><?php echo $custom_block['contact_page'][$language_id]['text']; ?></textarea>
                                                <?php } else { ?>
                                                <textarea rows="0" cols="0" name="custom_block[contact_page][<?php echo $language_id; ?>][text]" id="custom_block_contact_page_<?php echo $language_id; ?>_text"></textarea>
                                                <?php } ?>
                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#custom_block_contact_page_<?php echo $language_id; ?>_text').summernote({
                                                        height: 400
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
								</div>
								
								<div id="tab_product_page_<?php echo $language_id; ?>" class="tab-content4">
									
                                    <div class="section">
                                        <!-- Status -->
                                        <?php if(isset($custom_block['product_page'][$language_id]['status'])) { ?>
                                        <?php if($custom_block['product_page'][$language_id]['status'] == 1) { echo '<div class="status status-on" title="1" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } else { echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; } ?>

                                        <input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="<?php echo $custom_block['product_page'][$language_id]['status']; ?>" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
                                        <?php } else { ?>
                                        <?php echo '<div class="status status-off" title="0" rel="custom_block_product_page_'.$language_id.'_status"></div>'; ?>
                                        <input name="custom_block[product_page][<?php echo $language_id; ?>][status]" value="0" id="custom_block_product_page_<?php echo $language_id; ?>_status" type="hidden" />
                                        <?php } ?>
									</div>
									
									<div class="section">
                                        <div class="section-title">
                                            <h4>Custom block</h4>
                                        </div>
                                        <div class="section-content">
                                            <div class="input">
                                                <p>Heading:</p>
                                                <?php if(isset($custom_block['product_page'][$language_id]['heading'])) { ?>
                                                <input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" type="text" value="<?php echo $custom_block['product_page'][$language_id]['heading']; ?>" />
                                                <?php } else { ?>
                                                <input name="custom_block[product_page][<?php echo $language_id; ?>][heading]" type="text" value="" />
                                                <?php } ?>
                                                <div class="clear"></div>
                                            </div>

                                            <div class="input-with-editor editor-no-border">										
                                                <?php if(isset($custom_block['product_page'][$language_id]['text'])) { ?>
                                                <textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]" id="custom_block_product_page_<?php echo $language_id; ?>_text"><?php echo $custom_block['product_page'][$language_id]['text']; ?></textarea>
                                                <?php } else { ?>
                                                <textarea rows="0" cols="0" name="custom_block[product_page][<?php echo $language_id; ?>][text]" id="custom_block_product_page_<?php echo $language_id; ?>_text"></textarea>
                                                <?php } ?>
                                                <div class="clear"></div>

                                                <script type="text/javascript">
                                                    $('#custom_block_product_page_<?php echo $language_id; ?>_text').summernote({
                                                        height: 400
                                                    });
                                                </script>
                                            </div>
                                        </div>
                                    </div>
								</div>
							</div>
							
							<script type="text/javascript"><!--
							$('#tabs_custom_block_<?php echo $language_id; ?> a').tabs();
							if($.cookie('tabs_custom_block_<?php echo $language_id; ?>') > 0) {
								$('#tabs_custom_block_<?php echo $language_id; ?> a').eq($.cookie('tabs_custom_block_<?php echo $language_id; ?>')).trigger("click");
							}
							$('#tabs_custom_block_<?php echo $language_id; ?> a').click(function() {
								var element_index = $('#tabs_custom_block_<?php echo $language_id; ?> a').index(this);
								$.cookie('tabs_custom_block_<?php echo $language_id; ?>', element_index); 
							});
							//--></script> 
							<?php } ?>
						</div>		
					</div>
					
					<!-- End Custom block -->
										
					<p style="font-size:1px;line-height:1px;height:1px;clear:both;margin:0px;padding:0px;position:relative;margin-top:-1px"></p>
				
				</div>
				
				<!-- End Tabs -->
				
				<!-- Buttons -->
				
				<div class="buttons"><input type="submit" name="button-save" class="button-save" value=""></div>
				
				<!-- End Buttons -->
			
			</div>
		
		</div>
		<!-- End Content -->
		<?php } else { ?>
			<div class="content">
				<div style="padding:20px 40px;text-align:center;">
					You need to add or active skin.
				</div>
			</div>
		<?php } ?>
		
	</form>
	
</div>
<!-- End Theme Options -->

</div>

<!-- END #CONTENT -->

<script type="text/javascript">

$(document).ready(function() {

	$('.color_input input').ColorPicker({
		onChange: function (hsb, hex, rgb, el) {
			$(el).val("#" +hex);
			$(el).next('.color_selected').css("background", "#" + hex);
		},
		onShow: function (colpkr) {
			$(colpkr).show();
			return false;
		},
		onHide: function (colpkr) {
			$(colpkr).hide();
			return false;
		}
	});
});
</script>
<script type="text/javascript"><!--
$(document).ready(function(){ 
	$('#tabs a').tabs();
	if($.cookie('tabs_cookie') > 0) {
		$('#tabs a').eq($.cookie('tabs_cookie')).trigger("click");
	}
	$('#tabs a').click(function() {
		var element_index = $('#tabs a').index(this);
		$.cookie('tabs_cookie', element_index); 
	});
	
	$('#tabs_design a').tabs();
	if($.cookie('tabs_design_cookie') > 0) {
		$('#tabs_design a').eq($.cookie('tabs_design_cookie')).trigger("click");
	}
	$('#tabs_design a').click(function() {
		var element_index = $('#tabs_design a').index(this);
		$.cookie('tabs_design_cookie', element_index); 
	});
	
	$('#tabs_background_layers a').tabs();
	
	$('#tabs_footer a').tabs();
	if($.cookie('tabs_footer_cookie') > 0) {
		$('#tabs_footer a').eq($.cookie('tabs_footer_cookie')).trigger("click");
	}
	$('#tabs_footer a').click(function() {
		var element_index = $('#tabs_footer a').index(this);
		$.cookie('tabs_footer_cookie', element_index); 
	});
	
	$('#tabs_general a').tabs();
	if($.cookie('tabs_general_cookie') > 0) {
		$('#tabs_general a').eq($.cookie('tabs_general_cookie')).trigger("click");
	}
	$('#tabs_general a').click(function() {
		var element_index = $('#tabs_general a').index(this);
		$.cookie('tabs_general_cookie', element_index); 
	});
		
	$('#tabs_widgets a').tabs();
	if($.cookie('tabs_widgets_cookie') > 0) {
		$('#tabs_widgets a').eq($.cookie('tabs_widgets_cookie')).trigger("click");
	}
	$('#tabs_widgets a').click(function() {
		var element_index = $('#tabs_widgets a').index(this);
		$.cookie('tabs_widgets_cookie', element_index); 
	});
	
	$('#tabs_custom_code a').tabs();
	if($.cookie('tabs_custom_code_cookie') > 0) {
		$('#tabs_custom_code a').eq($.cookie('tabs_custom_code_cookie')).trigger("click");
	}
	$('#tabs_custom_code a').click(function() {
		var element_index = $('#tabs_custom_code a').index(this);
		$.cookie('tabs_custom_code_cookie', element_index); 
	});
	
	$('#tabs_custom_block a').tabs();
	if($.cookie('tabs_custom_block') > 0) {
		$('#tabs_custom_block a').eq($.cookie('tabs_custom_block')).trigger("click");
	}
	$('#tabs_custom_block a').click(function() {
		var element_index = $('#tabs_custom_block a').index(this);
		$.cookie('tabs_custom_block', element_index); 
	});
});
//--></script> 

<script type="text/javascript">
	<?php foreach ($languages as $language) { ?>
	$('#widget_custom_content_<?php echo $language['language_id']; ?>').summernote({
		height: 200
	});
	<?php } ?>
	
	$('.customblocktabs a').tabs();
</script>

<script type="text/javascript">
jQuery(document).ready(function($) {
	
	$('#theme-options').on('click', '.status', function () {
		
		var styl = $(this).attr("rel");
		var co = $(this).attr("title");
		
		if(co == 1) {
		
			$(this).removeClass('status-on');
			$(this).addClass('status-off');
			$(this).attr("title", "0");

			$("#"+styl+"").val(0);
		
		}
		
		if(co == 0) {
		
			$(this).addClass('status-on');
			$(this).removeClass('status-off');
			$(this).attr("title", "1");

			$("#"+styl+"").val(1);
		
		}
		
	});

});	
</script>
<script type="text/javascript">
$(document).ready(function() {

     $('#theme-options').on('change', 'select#select_demo', function () {
     	$("select#select_demo option:selected").each(function() {
     		$(".versions").hide();
     		$(".version-" + $(this).val()).show();
     		$("#demo").html("for " + $(this).text() + " version");
     	});
     });
     
     <?php if($select_demo > 1) { ?>
          $(".versions").hide();
          $(".version-<?php echo $select_demo; ?>").show();
          $("#demo").html("for " + $("#select_demo option:selected").text() + " version");
     <?php } ?>
	
	$('#theme-options').on('change', 'select.select-page-width', function () {
		$("select.select-page-width option:selected").each(function() {
			if($(this).val() == 2) {
				$(".page-width").show();
			} else {
				$(".page-width").hide();
			}
		});
	});
	
	$('#theme-options').on('change', '.input-subtle-pattern', function () {
		$(this).parent().parent().css("background-image", "url(../image/subtle_patterns/" + $(this).val() + ")");
	});
    
    
    $('.section.accordion .section-title').click(function(){
        if(!$(this).parent().hasClass('opened')){
            $(this).parent().addClass('opened')
            $(this).next('.section-content').hide().stop().slideDown();
        }else{
            $(this).parent().removeClass('opened')
            $(this).next('.section-content').show().stop().slideUp();
        }
    })
    
    $('.header_type').click(function(){
        $('.custom-headers .header_type').removeClass('active');
        $(this).addClass('active');
    })
    
    $('.hover_effect_type').click(function(){
        $('.custom-banners .hover_effect_type').removeClass('active');
        $(this).addClass('active');
        $('.custom-banners').find('input').attr('checked', false);
        $(this).find('input').attr('checked', true);
        $('input[name=hover_effect_type]').attr('value',  $(this).find('input').attr('value'));
    })
    
    $('.subtle-pattern').click(function(){
        $(this).parent().find('.subtle-pattern').removeClass('selected');
        $(this).addClass('selected');
        $(this).find('input').trigger('click');
    })
    
    $('.subtle-pattern input').click(function(e){
        e.stopPropagation();
    })
    
    $('.main-tabs .menu-switcher').click(function(){
        $('.bg-tabs').toggleClass('shrinked');
        if($.cookie('main-menu-shrinked')  == 1) {
            $.cookie('main-menu-shrinked', 0); 
        }else{
            $.cookie('main-menu-shrinked', 1); 
        }
        
    })
    
    $('#tab_advanced_settings .desc-switcher').click(function(){
        if($(this).hasClass('hide-desc')){
            $(this).hide();
            $('#tab_advanced_settings .desc-switcher.show-desc').show();
            $(this).parent().find('.advanced_description').hide();
            $.cookie('advanced-settings-desc-hidden', 1); 
        }else{
            $(this).hide();
            $('#tab_advanced_settings .desc-switcher.hide-desc').show();
            $(this).parent().find('.advanced_description').show();
            $.cookie('advanced-settings-desc-hidden', 0); 
        }
        
    })
    
    $('.preview-container').beforeAfter({
        animateIntro : true,
        introDelay : 1000,
        introDuration : 300,
        showFullLinks : false,
        imagePath: 'view/javascript/beforeafter/'
    });

});
	if($.cookie('main-menu-shrinked')  == 1) {
        $('.bg-tabs').addClass('shrinked');
    }
	if($.cookie('advanced-settings-desc-hidden') == 1) {
        $('#tab_advanced_settings .advanced_description').hide();
        $('#tab_advanced_settings .desc-switcher.hide-desc').hide();
        $('#tab_advanced_settings .desc-switcher.show-desc').show();
    }
	if($.cookie('main-menu-shrinked')  == 1) {
        $('.bg-tabs').addClass('shrinked');
    }
</script>
<?php echo $footer; ?>
