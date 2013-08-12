<?php
class Maid extends Page {
    static $db = array(
        'Type' => 'Text',
        'colour' => 'Text',
        'since' => 'Int',
        'maidreason' => 'Text',
        'BDay' => 'Date',
        'zodiac' => 'Text',
        'size' => 'Text',
        'hobbys' => 'Text',
        'favfood' => 'Text',
        'favsweet' => 'Text',
        'favanimal' => 'Text',
        'pokemon' => 'Text',
        'anime' => 'Text',
        'animelocation' => 'Text',
        'magicalgirl' => 'Text',
        'funfairlocation' => 'Text',
        'wish' => 'Text',
        'aboutme' => 'Text',
    );
    static $has_one = array(
        'maidphoto' => 'Image'
    );
     
    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->removeFieldFromTab("Root.Main","Content");
        $fields->removeFieldFromTab('Root.Main', 'Page name');
         

        
        $fields->addFieldToTab(
                'Root.Upload',
                $UploadField = new UploadField(
                $name = 'maidphoto',
                $title = 'ProfilBild'
                )
                );
        $UploadField->getValidator()->setAllowedExtensions(array('jpg', 'jpeg', 'png'));
        $UploadField->setConfig('allowedMaxFileNumber', 1);
        
        
        $fields->addFieldToTab('Root.Main', new TextField('Title', 'Maidname'), 'MenuTitle');
        $fields->addFieldToTab(
            'Root.Main', 
            new OptionsetField(
                "Type",
                "Typ",
                array(
                    "Organisator" =>  "Organisator",
                    "K&uumlchenchef" => "K&uumlchenchef",
                    "Entertainment" => "Entertainment",
                    "Design" => "Design",
                    "Facebook" => "Facebook",
                    "Homepage" => "Homepage",
                    "Maid" => "Maid",
                ),
                "1"
            )
        );
        $fields->addFieldToTab('Root.Main', new TextField('colour', 'Maid-Farbe:'));
        $fields->addFieldToTab('Root.Main', new TextField('since', 'Dabei seit:'));
        $fields->addFieldToTab('Root.Main', new TextField('maidreason', 'Warum ich Maid geworden bin:'));
        $fields->addFieldToTab('Root.Main', $dateField = new DateField('BDay', 'Geburtstag:'));
        $dateField->setConfig('showcalendar', true);
        $dateField->setConfig('dateformat', 'dd.MM.YYYY');
        
        $fields->addFieldToTab('Root.Main', new TextField('zodiac', 'Sternzeichen:'));
        $fields->addFieldToTab('Root.Main', new TextField('size', 'Gr&ouml&szlige:'));
        $fields->addFieldToTab('Root.Main', new TextField('hobbys', 'Hobbies:'));
        $fields->addFieldToTab('Root.Main', new TextField('favfood', 'Lieblingsessen:'));
        $fields->addFieldToTab('Root.Main', new TextField('favsweet', 'Lieblingss&uuml&szligigkeit:'));
        $fields->addFieldToTab('Root.Main', new TextField('favanimal', 'Lieblingstier:'));
        $fields->addFieldToTab('Root.Main', new TextField('pokemon', 'Was f&uumlr ein Pok&eacutemon w&aumlre ich und warum?'));
        $fields->addFieldToTab('Root.Main', new TextField('anime', 'Lieblingsanime/manga:'));
        $fields->addFieldToTab('Root.Main', new TextField('animelocation', 'In welcher Anime/Mangawelt w&uumlrde ich gerne leben?'));
        $fields->addFieldToTab('Root.Main', new TextField('magicalgirl', 'Welches Magicalgirl w&aumlre ich und wieso?'));
        $fields->addFieldToTab('Root.Main', new TextField('funfairlocation', 'An welchem Ort w&uumlrde man mich in einem Vergn&uumlgungspark finden?'));
        $fields->addFieldToTab('Root.Main', new TextField('wish', 'Wenn mir eine Fee einen Wunsch erf&uumlllen w&uumlrde, w&uumlnsche ich mir:'));
        $fields->addFieldToTab('Root.Main', new TextField('aboutme', '&Uumlber mich:'));
        
        return $fields;
    }
}
 class Maid_Controller extends Page_Controller {
}