<?php
class ArticleHolder extends Page {
    static $allowed_children = array('ArticleCategory');

}
class ArticleHolder_Controller extends Page_Controller{
  public function rss() {
    $rss = new RSSFeed($this->LatestUpdates(), $this->Link(), "Lucky Chocolate MaidCafé");
    return $rss->outputToBrowser();
}
function LatestUpdates() {
        // 10 is the number of pages
        return DataObject::get("ArticlePage", "", "Date DESC", "" );
    } 
    public function init() {
        Requirements::css('themes/fancypants/css/news.css');
        RSSFeed::linkToFeed($this->Link() . "rss");   
        parent::init();
    }

    public function PaginatedNews() {
        $start = (isset($_GET['start'])) ? (int)$_GET['start'] : 0;
        $length = 3;

        $allCategorys = DataObject::get("ArticleCategory");
        $allNews = new ArrayList();

        if ($allCategorys->exists()) {
            foreach($allCategorys as $category){
                $articlePage = DataObject::get("ArticlePage", "ParentID = $category->ID", "Date DESC", "", (string)$start+","+ (string)$length);
                if($articlePage->exists())
                    $allNews->merge($articlePage);
            }
        }

        $allNews->sort('Date', 'DESC');

        $paginatedNewsList = new PaginatedList($allNews, $this->request ); 
        $paginatedNewsList->setPageLength(3); 

        return $paginatedNewsList; 
    }

    public function CategoryNames(){
        $allCategorys = DataObject::get("ArticleCategory");

        return ($allCategorys) ? $allCategorys : false;
    }


}
?>