<div id="MainContent">
	<!-- Content -->
	<% loop Children %>
	<div class="maidProfilePreview column-{$Modulus(3)}">
	<div class="previewContent">
	
							<div align="center" style="border-style:  double;height: 370px;overflow: hidden;border-width:10px;border-color:$mcolour;">
							<div class="headline">
                        <a href="$Link" style="border-bottom: dotted;border-color:$mcolour;color: $mcolour">$Title</a>
</div>
                    
                        <a href="$Link" >
			$maidphoto.SetWidth(150)
			</a>
						
						<div id="rang" style="border-color:$mcolour;">
						$Type
						</div>
						$aboutme.FirstSentence
						</div>
						
						</div>
                    

            
	</div>
	<% end_loop %>
</div>