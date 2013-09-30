<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<link rel="shortcut icon" href="/favicon.ico" /> 
	<% require themedCSS(prettyPhotoCustom) %>
	<head>
		<% base_tag %>
		$MetaData
		$MetaTags
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/core.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/typography.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/layout.css" />		
	<!--[if IE]>
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/ie.css" />
	<![endif]-->
	<!--[if lte IE 6]>
		<link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/ie6.css" />
	<![endif]-->
	</head>
	<body>
		<div id="outerheader">
   		<div id="header" class="clearfix">
			<div id="branding">
	   			<h1><a href="$BaseHref">$SiteConfig.Title</a></h1>
	   			<h1 class="tagline">$SiteConfig.Tagline</h1>
	   		</div>	
	   		<div id="nav">
	   			<% include MainNav %>
	   		</div>
			<div align="center">
			<div id="slidebg" align="center" style="" >

			<div style="width: 700px;height: 400px; " >
				$FlexSlider(1,700,400)
				</div>
			</div> 
			</div>
		</div>
   		
  
    <div id="wrapper">
	$Layout
   </div>
  
    	<div id="footer"  >
	    	<div id="credits">
		    	 <p>Design & Code by Nuros</p>
		    	 	    	</div>	    		
	    	<div id="footernav">
				<p><imp>§<a href="/maidcafe/Impressum">Impressum</a></imp></p>
	    	</div>
    	</div>
    </div>
</body>
</html>
