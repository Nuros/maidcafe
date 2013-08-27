<?php 
class Albumholder extends Page{
    static $db = array(
    );
    static $has_one = array(
    );
    static $allowed_children = array('GalleryPage');
}

class Albumholder_Controller extends Page_Controller{
      	public function init() {
		parent::init();
		Requirements::themedCSS('albumholder'); 
}
}
?>