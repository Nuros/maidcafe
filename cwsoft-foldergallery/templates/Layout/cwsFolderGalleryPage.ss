<%-- Note: To adapt the Foldergallery layout to your theme layout, follow the steps below: --%>
<%--   1. copy "themes/your-template/templates/Layout/Page.ss" to "cwsoft-foldergallery/templates/Layout/cwsFolderGalleryPage.ss" --%>
<%--   2. add the code "<% include Foldergallery %>" after "$Content" (in file cwsFolderGalleryPage.ss) --%>
<%--   3. flush the cache and visit the Foldergallery page in the frontend --%>

 	<div id="main" class="clearfix">
    	<div id="pagetitle"><h2><span>$Title</span></h2></div>
    		<div id="primaryContent" class="clearfix">
    			<div class="innerpad">
				$Content
				$Form
				$PageComments
				<% include Foldergallery %>
    			</div>
    		</div>

    		<div id="secondaryContent">
    			<div class="innerpad">
					<% include SubNav %>
    			</div>
    		</div>
    	</div>