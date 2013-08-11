<?php

class ArticleCategory extends Page{

	
	static $db = array(
	);
	static $has_one = array(
	);
	static $allowed_children = array('ArticlePage');
}
        
class ArticleCategory_Controller extends Page_Controller{
    function init() {
        parent::init();
        Requirements::css('themes/fancypants/css/news.css');
	
    }        
    public function PaginatedNews(){
        $start = (isset($_GET['start'])) ? (int)$_GET['start'] : 0;
        $length = 3;

        $pagedNews = DataObject::get("ArticlePage", "ParentID = $this->ID", "Date DESC", "", (string)$start+","+(string)$length);
        
        $paginatedNewsList = new PaginatedList($pagedNews, $this->request ); 
        $paginatedNewsList->setPageLength(3); 
        
        return $paginatedNewsList;
    }

    public function CategoryNames(){
        $allCategorys = DataObject::get("ArticleCategory");

        return ($allCategorys) ? $allCategorys : false;
    }

}
?>