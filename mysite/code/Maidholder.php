<?php 
class MaidHolder extends Page{
    static $db = array(
    );
    static $has_one = array(
    );
    static $allowed_children = array('Maid');
}

class MaidHolder_Controller extends Page_Controller{
  	public function init() {
		parent::init();
		Requirements::themedCSS('maidholder'); 
}
}
?>