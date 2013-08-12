<div id="main" class="clearfix">
<div id="primaryContent2" class="clearfix">
<div class="innerpad">
$Content
 
<% if $Children %>
<% loop $Children %>

<a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
<span class="text">$MenuTitle.XML</span>
</a>
<% end_loop %>
<% end_if %>
</div>
 </div>    
</div>