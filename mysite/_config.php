<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => '',
	"database" => 'maidcafe',
	"path" => '',
);

MySQLDatabase::set_connection_charset('utf8');

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
SSViewer::set_theme('simple');

// Set the site locale
i18n::set_locale('de_DE');

// Enable nested URLs for this site (e.g. page/sub-page/)
if (class_exists('SiteTree')) SiteTree::enable_nested_urls();

SS_Log::add_writer(new SS_LogFileWriter('ss_errors.txt'), SS_Log::ERR);
Object::add_extension('Page', 'FlexSliderExtension');