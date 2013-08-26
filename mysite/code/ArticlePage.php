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
        
        $uploadField = new UploadField('Icon');
	$uploadField->getValidator()->allowedExtensions = array('jpg', 'png');
        $uploadField->setConfig('allowedMaxFileNumber', 1);
        
        $fields->addFieldToTab('Root.Main', $uploadField, 'Title');
	
	$fields->addFieldToTab(
            'Root.Main', 
            new OptionsetField(
                "newstype",
                "Typ",
                array(
                    "Allgemein" =>  "Allgemein",
		    "Maid Lounge" =>  "Maid Lounge",
                    "Gewinnspiel" =>  "Gewinnspiel",
                ),
                "1"
            )
        );

        $fields->addFieldToTab('Root.Main', $dateField = new DateField('Date','Artikeldatum (for example: 20/12/2010)'), 'Content');
        $dateField->setConfig('showcalendar', true);
        $fields->addFieldToTab('Root.Main', $dateField, 'Content');
        
	$fields->addFieldToTab('Root.Main', new TextField('Author','Authoren Name'), 'Content');
        return $fields;
    }
	

	}
class ArticlePage_Controller extends Page_Controller {
}