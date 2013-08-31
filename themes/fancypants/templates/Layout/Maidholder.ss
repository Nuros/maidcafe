<div id="main" class="clearfix">
<div id="pagetitle"><h2><span>$Title</span></h2></div>
<div id="primaryContent2" class="clearfix">
    	<div class="innerpad">
	
	<% loop Children %>
	<div class="maidProfilePreview">
	<div class="previewContent">
	
							<!--- <div align="center" style="border-style:  double;height: 385px;overflow: hidden;border-width:10px;border-color:$mcolour;"> --->
							<div id="center" align="center" style="height: 420px;width:250px;overflow: hidden;">
							<div class="headline">
                        <a href="$Link" style="border-bottom: dotted;border-color:$mcolour;color: $mcolour">$Title</a>
</div>
                    
                        <a href="$Link" >
			$maidphoto.SetWidth(150)
			</a>
						
						<div id="rang" style="border-color:$mcolour;">
						$Type
						</div>
						
						<div id="about" style="height: 85px; width: 200px; overflow:hidden;" >$aboutme.FirstSentence</div>
						</div>
						
						</div>
                    

            
	</div>
	<% end_loop %>
		</div>
    		</div>
</div>