<?php
class ContactPage extends Page{
   static $db = array(
        'Mailto' => 'Varchar(100)',
        'SubmitText' => 'Text'
    );
     
    function getCMSFields() {
        $fields = parent::getCMSFields();
     
        $fields->addFieldToTab("Root.Content.OnSubmission", new TextField('Mailto', 'Email submissions to'));   
        $fields->addFieldToTab("Root.Content.OnSubmission", new TextareaField('SubmitText', 'Text on Submission'));     
     
        return $fields;
    }
}
class ContactPage_Controller extends Page_Controller{
        static $allowed_actions = array(
        'ContactForm'
    );
 
    function ContactForm() {
        // Create fields         
        $fields = new FieldSet(
            new TextField('Name', 'Name*'),
            new EmailField('Email', 'Email*'),
            new TextareaField('Comments','Comments*')
        );
             
        // Create action
        $actions = new FieldSet(
            new FormAction('SendContactForm', 'Send')
        );
         
        // Create Validators
        $validator = new RequiredFields('Name', 'Email', 'Comments');
         
        return new Form($this, 'ContactForm', $fields, $actions, $validator);
    }
        function SendContactForm($data, $form) {
   
        //Set data
        $From = $data['Email'];
        $To = "a.stenzel@webschmitz.de"; 
        $Subject = "Website Contact message";    
        $email = new Email($From, $To, $Subject);
        //set template
        $email->setTemplate('ContactEmail');
        //populate template
        $email->populateTemplate($data);
        //send mail
        $email->send();
        //return to submitted message
        Director::redirect($this->Link("?success=1"));
    }
       public function Success()
    {
        return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
    }
}