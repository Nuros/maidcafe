<div id="MainContent">
	<!-- Content -->
	<% loop Children %>
	<div class="maidProfilePreview column-{$Modulus(3)}">
	<div class="previewContent">
	
							<div align="center">
							<div class="headline">
                        <a href="$Link"><h1>$Title</h1></a>
</div>
                    
                        <a href="$Link">
			$maidphoto.SetWidth(150)
			</a>
						
						<p>$Type</p>
						<p>$aboutme.FirstSentence</p>
						</div>
						
						</div>
                    

            
	</div>
	<% end_loop %>
</div>