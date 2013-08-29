    	<div id="main" class="clearfix">
	
	<div id="primaryContent" class="clearfix">
    			<div class="innerpad">
    	
    		
    	$Content
        <% loop $PaginatedNews %>
	<div id="newspage">
		<img src="$ThemeDir/images/$Parent.Title$newsicon" alt="Homepage image" />
	<div class="newsheader">
	
	
		$Title
		$Author
		$Date.Long
	</div>
	
	<div id="paper" style="outline-color: $categorycolour;">$Content.LimitWordCount(30)
	
	<div><a href="$Link" title="Mehr von &quot;{$Title}&quot sehen:">Weiterlesen &gt;&gt;</a></div>
        </div>
	
	
 
	</div>
        <% end_loop %>
        
        <div id="PageNumbers">
            <% if $PaginatedNews.MoreThanOnePage %>
                <p class="pageNumbers">
                    <% if $PaginatedNews.NotFirstPage %>
                        <a class="prev" href="$PaginatedNews.PrevLink">&lt; Prev</a>
                    <% end_if %>

                    <% loop $PaginatedNews.Pages %>
                        <% if $CurrentBool %>
                            <span class="selected">$PageNum</span>
                        <% else %>
                            <% if $Link %>
                                <a href="$Link" title="Go to page $PageNum">$PageNum</a>
                            <% else %>
                                ...
                            <% end_if %>
                        <% end_if %>
                    <% end_loop %>

                    <% if $PaginatedNews.NotLastPage %>
                        <a class="next" href="$PaginatedNews.NextLink">Next &gt;</a>
                    <% end_if %>
                </p>
            <% end_if %>
        </div>
    		</div>
    			
    		</div>
                
                
                
    		<div id="secondaryContent">
    			<div class="innerpad">
					<% include SubNav %>
    			</div>
    		</div>
    	</div>
