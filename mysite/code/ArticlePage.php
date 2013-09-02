<?php
class ArticlePage extends Page {
 static $db = array(
        'Date' => 'Date',
        'Author' => 'Text',
	'newstype' => 'Text',
	
    );
    static $has_one = array(
		'Icon' => 'Image'
	);
    
public function getCMSFields() {
        $fields = parent::getCMSFields();
	$fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Artikeldatum (for example: 20/12/2010)'), 'Content');
        $dateField->setConfig('showcalendar', true);
        $fields->addFieldToTab('Root.Main', $dateField, 'Content');
        
	$fields->addFieldToTab('Root.Main', new TextField('Author','Authoren Name'), 'Content');
        return $fields;
    }
	    function newsicon() {
    return ".jpg";
    }
    

	}
class ArticlePage_Controller extends Page_Controller {
     function init() {
        Requirements::css('themes/fancypants/css/news.css');
        parent::init();
    }

}