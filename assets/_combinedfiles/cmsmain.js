/****** FILE: cms/javascript/CMSMain.js *****/

;
/****** FILE: cms/javascript/CMSMain.EditForm.js *****/

(function($){$.entwine('ss',function($){$('.cms-edit-form :input[name=ClassName]').entwine({onchange:function(){alert(ss.i18n._t('CMSMAIN.ALERTCLASSNAME'));}});$('.cms-edit-form input[name=Title]').entwine({onmatch:function(){var self=this;self.data('OrigVal',self.val());var form=self.parents('form');var url_segment=$('.field.urlsegment',form).find(':text');var live_link=$('input[name=LiveLink]',form);self._addActions();if(url_segment.length>0){this.bind('change',function(e){var origTitle=self.data('OrigVal');var title=self.val();self.data('OrigVal',title);if((url_segment.val().indexOf('new')==0)&&live_link.val()==''){self.updateURLSegment(title);}else{$('.update',self.parent()).show();}
self.updateRelatedFields(title,origTitle);self.updateBreadcrumbLabel(title);});}
this._super();},onunmatch:function(){this._super();},updateRelatedFields:function(title,origTitle){this.parents('form').find('input[name=MetaTitle], input[name=MenuTitle]').each(function(){var $this=$(this);if($this.val()==origTitle){$this.val(title);if($this.updatedRelatedFields)$this.updatedRelatedFields();}});},updateURLSegment:function(title){var url_segment_field=$('.field.urlsegment',this.parents('form'));var updateURLFromTitle=$('.update',this.parent());url_segment_field.update(title);if(updateURLFromTitle.is(':visible')){updateURLFromTitle.hide();}},updateBreadcrumbLabel:function(title){var pageID=$('.cms-edit-form input[name=ID]').val();var panelCrumb=$('span.cms-panel-link.crumb');if(title&&title!=""){panelCrumb.text(title);}},_addActions:function(){var self=this;var updateURLFromTitle;updateURLFromTitle=$('<button />',{'class':'update ss-ui-button-small','text':'Update URL','click':function(e){e.preventDefault();self.updateURLSegment(self.val());}});updateURLFromTitle.insertAfter(self);updateURLFromTitle.hide();}});$('.cms-edit-form input[name=MenuTitle]').entwine({onchange:function(){this.updatedRelatedFields();},updatedRelatedFields:function(){var menuTitle=this.val();this.updateTreeLabel(menuTitle);},updateTreeLabel:function(title){var pageID=$('.cms-edit-form input[name=ID]').val();var treeItem=$('.item:first',$('.cms-tree').find("[data-id='"+pageID+"']"));if(title&&title!=""){treeItem.text(title);}}});$('.cms-edit-form .parentTypeSelector').entwine({onmatch:function(){var self=this;this.find(':input[name=ParentType]').bind('click',function(e){self._toggleSelection(e);});this.find('.TreeDropdownField').bind('change',function(e){self._changeParentId(e);});this._changeParentId();this._toggleSelection();this._super();},onunmatch:function(){this._super();},_toggleSelection:function(e){var selected=this.find(':input[name=ParentType]:checked').val();if(selected=='root')this.find(':input[name=ParentID]').val(0);else this.find(':input[name=ParentID]').val(this.find('#Form_EditForm_ParentType_subpage').data('parentIdValue'));this.find('#ParentID').toggle(selected!='root');},_changeParentId:function(e){var value=this.find(':input[name=ParentID]').val();this.find('#Form_EditForm_ParentType_subpage').data('parentIdValue',value);}});$('.cms-edit-form #CanViewType, .cms-edit-form #CanEditType, .cms-edit-form #CanCreateTopLevelType').entwine({onmatch:function(){var dropdown;if(this.attr('id')=='CanViewType')dropdown=$('#ViewerGroups');else if(this.attr('id')=='CanEditType')dropdown=$('#EditorGroups');else if(this.attr('id')=='CanCreateTopLevelType')dropdown=$('#CreateTopLevelGroups');this.find('.optionset :input').bind('change',function(e){var wrapper=$(this).closest('.middleColumn').parent('div');if(e.target.value=='OnlyTheseUsers'){wrapper.addClass('remove-splitter');dropdown['show']();}
else{wrapper.removeClass('remove-splitter');dropdown['hide']();}});var currentVal=this.find('input[name='+this.attr('id')+']:checked').val();dropdown[currentVal=='OnlyTheseUsers'?'show':'hide']();this._super();},onunmatch:function(){this._super();}});$('.cms-edit-form .Actions #Form_EditForm_action_print').entwine({onclick:function(e){var printURL=$(this[0].form).attr('action').replace(/\?.*$/,'')
+'/printable/'
+$(':input[name=ID]',this[0].form).val();if(printURL.substr(0,7)!='http://')printURL=$('base').attr('href')+printURL;window.open(printURL,'printable');return false;}});$('.cms-edit-form .Actions #Form_EditForm_action_rollback').entwine({onclick:function(e){var form=this.parents('form:first'),version=form.find(':input[name=Version]').val(),message='';if(version){message=ss.i18n.sprintf(ss.i18n._t('CMSMain.RollbackToVersion'),version);}else{message=ss.i18n._t('CMSMain.ConfirmRestoreFromLive');}
if(confirm(message)){return this._super(e);}else{return false;}}});$('.cms-edit-form.CMSPageSettingsController input[name="ParentType"]:checked').entwine({onmatch:function(){this.redraw();this._super();},onunmatch:function(){this._super();},redraw:function(){var treeField=$('.cms-edit-form.CMSPageSettingsController #ParentID');if($(this).attr('id')=='Form_EditForm_ParentType_root')treeField.slideUp();else treeField.slideDown();},onclick:function(){this.redraw();}});if($('.cms-edit-form.CMSPageSettingsController input[name="ParentType"]:checked').attr('id')=='Form_EditForm_ParentType_root'){$('.cms-edit-form.CMSPageSettingsController #ParentID').hide();}});}(jQuery));
;
/****** FILE: cms/javascript/CMSMain.AddForm.js *****/

(function($){$.entwine('ss',function($){$(".cms-add-form .parent-mode :input").entwine({onclick:function(e){if(this.val()=='top'){var parentField=this.closest('form').find('#ParentID .TreeDropdownField');parentField.setValue('');}}});$(".cms-add-form").entwine({onmatch:function(){var self=this;this.find('#ParentID .TreeDropdownField').bind('change',function(){self.updateTypeList();});this.updateTypeList();this._super();},onunmatch:function(){this._super();},updateTypeList:function(){var hints=this.find('.hints').data('hints'),metadata=this.find('#ParentID .TreeDropdownField').data('metadata'),id=this.find('#ParentID .TreeDropdownField').getValue(),newClassName=metadata?metadata.ClassName:null,hintKey=newClassName?newClassName:'Root',hint=(typeof hints[hintKey]!='undefined')?hints[hintKey]:null;var disallowedChildren=(hint&&typeof hint.disallowedChildren!='undefined')?hint.disallowedChildren:[],defaultChildClass=(hint&&typeof hint.defaultChild!='undefined')?hint.defaultChild:null;this.find('#PageType li').each(function(){var className=$(this).find('input').val(),isAllowed=($.inArray(className,disallowedChildren)==-1);$(this).setEnabled(isAllowed);});if(defaultChildClass){var selectedEl=this.find('#PageType li input[value='+defaultChildClass+']').parents('li:first');}else{var selectedEl=this.find('#PageType li:not(.disabled):first');}
selectedEl.setSelected(true);selectedEl.siblings().setSelected(false);var buttonState=(this.find('#PageType li:not(.disabled)').length)?'enable':'disable';this.find('button[name=action_doAdd]').button(buttonState);}});$(".cms-add-form #PageType li").entwine({onclick:function(){this.setSelected(true);},setSelected:function(bool){var input=this.find('input');this.toggleClass('selected',bool);if(bool&&!input.is(':disabled')){this.siblings().setSelected(false);input.attr('checked','checked');}},setEnabled:function(bool){$(this).toggleClass('disabled',!bool);if(!bool)$(this).find('input').attr('disabled','disabled').removeAttr('checked');else $(this).find('input').removeAttr('disabled');}});$(".cms-page-add-button").entwine({onclick:function(e){var selected=$('.cms-tree').jstree('get_selected'),parentId=selected?$(selected[0]).data('id'):null,data={selector:this.data('targetPanel'),pjax:this.data('pjax')},url=parentId?ss.i18n.sprintf(this.data('urlAddpage'),parentId):this.attr('href');$('.cms-container').loadPanel(url,null,data);e.preventDefault();}});});}(jQuery));
;
/****** FILE: cms/javascript/CMSPageHistoryController.js *****/

(function($){$.entwine('ss',function($){$('#Form_VersionsForm').entwine({onmatch:function(){var self=this;this.find(':input[name=ShowUnpublished]').bind('change',function(e){if($(this).attr("checked")){self.find("tr[data-published=false]").show();}
else{self.find("tr[data-published=false]").hide()._unselect();}});this._super();},onunmatch:function(){this._super();},onsubmit:function(e,d){e.preventDefault();var id,self=this;id=this.find(':input[name=ID]').val();if(!id)return false;var button,url,selected,to,from,compare,data;compare=(this.find(":input[name=CompareMode]").is(":checked"));selected=this.find("table input[type=checkbox]").filter(":checked");if(compare){if(selected.length!=2)return false;to=selected.eq(0).val();from=selected.eq(1).val();button=this.find(':submit[name=action_doCompare]');url=ss.i18n.sprintf(this.data('linkTmplCompare'),id,from,to);}
else{to=selected.eq(0).val();button=this.find(':submit[name=action_doShowVersion]');url=ss.i18n.sprintf(this.data('linkTmplShow'),id,to);}
$('.cms-container').loadPanel(url,'',{pjax:'CurrentForm'});}});$("#Form_VersionsForm tbody tr").entwine({onclick:function(e){var compare,selected;compare=this.parents("form").find(':input[name=CompareMode]').attr("checked"),selected=this.siblings(".active");if(compare&&this.hasClass('active')){this._unselect();return;}
else if(compare){if(selected.length>1){return alert(ss.i18n._t('ONLYSELECTTWO','Can only compare two versions at at time.'));}
this._select();if(selected.length==1){this.parents('form').submit();}
return;}
else{this._select();selected._unselect();this.parents("form").submit();}},_unselect:function(){this.removeClass('active');this.find(":input[type=checkbox]").attr("checked",false);},_select:function(){this.addClass('active');this.find(":input[type=checkbox]").attr("checked",true);}})});})(jQuery);
;
/****** FILE: cms/javascript/CMSMain.Tree.js *****/

(function($){$.entwine('ss.tree',function($){$('.cms-tree').entwine({getTreeConfig:function(){var self=this,config=this._super(),hints=this.getHints();config.plugins.push('contextmenu');config.contextmenu={'items':function(node){var pagetype=node.data('pagetype');var id=node.data('id');var allowedChildren=new Object;$(hints[pagetype].allowedChildren).each(function(key,val){allowedChildren["allowedchildren-"+key]={'label':'<span class="jstree-pageicon"></span>'+val.ssname,'_class':'class-'+val.ssclass,'action':function(obj){$('.cms-container').entwine('.ss').loadPanel(ss.i18n.sprintf(self.data('urlAddpage'),id,val.ssclass));}};});var menuitems={'edit':{'label':ss.i18n._t('Tree.EditPage'),'action':function(obj){$('.cms-container').entwine('.ss').loadPanel(ss.i18n.sprintf(self.data('urlEditpage'),obj.data('id')));}}};if(allowedChildren.hasOwnProperty('allowedchildren-0')){menuitems['addsubpage']={'label':ss.i18n._t('Tree.AddSubPage'),'submenu':allowedChildren};}
return menuitems;}};return config;}});});}(jQuery));
;
/****** FILE: cms/javascript/SilverStripeNavigator.js *****/

function windowName(suffix){var base=document.getElementsByTagName('base')[0].href.replace('http://','').replace(/\//g,'_').replace(/\./g,'_');return base+suffix;}
(function($){$('#switchView a.newWindow').live('click',function(){var w=window.open(this.href,windowName(this.target));w.focus();return false;});$('#SilverStripeNavigatorLink').live('click',function(){$('#SilverStripeNavigatorLinkPopup').toggle();return false;});$('#SilverStripeNavigatorLinkPopup a.close').live('click',function(){$('#SilverStripeNavigatorLinkPopup').hide();return false;});$('#SilverStripeNavigatorLinkPopup input').live('focus',function(){this.select();});})(jQuery);
;
/****** FILE: cms/javascript/SiteTreeURLSegmentField.js *****/

(function($){$.entwine('ss',function($){$('.field.urlsegment:not(.readonly)').entwine({onmatch:function(){if(this.find(':text').length){this._addActions();this.edit();this._autoInputWidth();}
this._super();},onunmatch:function(){this._super();},edit:function(auto){var field=this.find(':text'),holder=this.find('.preview'),edit=this.find('.edit'),update=this.find('.update'),cancel=this.find('.cancel'),help=this.find('.help');holder.text(field.val());if(field.is(':visible')){update.hide();cancel.hide();field.hide();holder.show();edit.show();help.hide();}else{edit.hide();holder.hide();field.show();update.show();cancel.show();help.show();}
if(auto)this.edit();return field.val();},update:function(){var self=this,field=this.find(':text'),holder=this.find('.preview'),currentVal=holder.text(),updateVal,title=arguments[0];if(title&&title!==""){updateVal=title;}else{updateVal=field.val();}
if(currentVal!=updateVal){self.addClass('loading');self.suggest(updateVal,function(data){var newVal=decodeURIComponent(data.value);field.val(newVal);self.edit(title);self.removeClass('loading');});}else{self.edit();}},cancel:function(){var field=this.find(':text'),holder=this.find('.preview');field.val(holder.text());this.edit();return field.val();},suggest:function(val,callback){var field=this.find(':text'),urlParts=$.path.parseUrl(this.closest('form').attr('action')),url=urlParts.hrefNoSearch+'/field/'+field.attr('name')+'/suggest/?value='+encodeURIComponent(val);if(urlParts.search)url+='&'+urlParts.search.replace(/^\?/,'');$.get(url,function(data){callback.apply(this,arguments);});},_addActions:function(){var self=this,field=this.find(':text'),preview,editAction,updateAction,cancelAction;preview=$('<span />',{'class':'preview'});editAction=$('<button />',{'class':'ss-ui-button ss-ui-button-small edit','text':ss.i18n._t('URLSEGMENT.Edit','Edit'),'click':function(e){e.preventDefault();self.edit();self.find(':text').focus();}});updateAction=$('<button />',{'class':'update ss-ui-button-small','text':ss.i18n._t('URLSEGMENT.OK','OK'),'click':function(e){e.preventDefault();self.update();}});cancelAction=$('<button />',{'class':'cancel ss-ui-action-minor ss-ui-button-small','href':'#','text':ss.i18n._t('URLSEGMENT.Cancel','Cancel'),'click':function(e){e.preventDefault();self.cancel();}});preview.insertAfter('.prefix');editAction.insertAfter(field);cancelAction.insertAfter(field);updateAction.insertAfter(field);},_autoInputWidth:function(){var field=this.find(':text');field.width((field.width()+15)-this.find('.prefix').width());}});});}(jQuery));
;
/****** FILE: cms/javascript/lang/en_US.js *****/

if(typeof(ss)=='undefined'||typeof(ss.i18n)=='undefined'){if(typeof(console)!='undefined')console.error('Class ss.i18n not defined');}else{ss.i18n.addDictionary('en_US',{'CMSMAIN.WARNINGSAVEPAGESBEFOREADDING':"You have to save a page before adding children underneath it",'CMSMAIN.CANTADDCHILDREN':"You can't add children to the selected node",'CMSMAIN.ERRORADDINGPAGE':'Error adding page','CMSMAIN.FILTEREDTREE':'Filtered tree to only show changed pages','CMSMAIN.ERRORFILTERPAGES':'Could not filter tree to only show changed pages<br />%s','CMSMAIN.ERRORUNFILTER':'Unfiltered tree','CMSMAIN.PUBLISHINGPAGES':'Publishing pages...','CMSMAIN.SELECTONEPAGE':"Please select at least 1 page.",'CMSMAIN.ERRORPUBLISHING':'Error publishing pages','CMSMAIN.REALLYDELETEPAGES':"Do you really want to delete the %s marked pages?",'CMSMAIN.DELETINGPAGES':'Deleting pages...','CMSMAIN.ERRORDELETINGPAGES':'Error deleting pages','CMSMAIN.PUBLISHING':'Publishing...','CMSMAIN.RESTORING':'Restoring...','CMSMAIN.ERRORREVERTING':'Error reverting to live content','CMSMAIN.SAVING':'saving...','CMSMAIN.SELECTMOREPAGES':"You have %s pages selected.\n\nDo you really want to perform this action?",'CMSMAIN.ALERTCLASSNAME':'The page type will be updated after the page is saved','CMSMAIN.URLSEGMENTVALIDATION':'URLs can only be made up of letters, digits and hyphens.','AssetAdmin.BATCHACTIONSDELETECONFIRM':"Do you really want to delete %s folders?",'AssetTableField.REALLYDELETE':'Do you really want to delete the marked files?','AssetTableField.MOVING':'Moving %s file(s)','CMSMAIN.AddSearchCriteria':'Add Criteria','WidgetAreaEditor.TOOMANY':'Sorry, you have reached the maximum number of widgets in this area','AssetAdmin.ConfirmDelete':'Do you really want to delete this folder and all contained files?','Folder.Name':'Folder name','Tree.AddSubPage':'Add new page here','Tree.EditPage':'Edit','CMSMain.ConfirmRestoreFromLive':"Do you really want to copy the published content to the draft site?",'CMSMain.RollbackToVersion':"Do you really want to roll back to version #%s of this page?",'URLSEGMENT.Edit':'Edit','URLSEGMENT.OK':'OK','URLSEGMENT.Cancel':'Cancel'});}
;
/****** FILE: cms/javascript/lang/de_DE.js *****/

if(typeof(ss)=='undefined'||typeof(ss.i18n)=='undefined'){console.error('Class ss.i18n not defined');}else{ss.i18n.addDictionary('de_DE',{'CMSMAIN.WARNINGSAVEPAGESBEFOREADDING':"Sie müssen diese Seite speichern bevor Unterseiten hingefügt werden können",'CMSMAIN.CANTADDCHILDREN':"Unterseiten nicht erlaubt",'CMSMAIN.ERRORADDINGPAGE':'Fehler beim Hinzufügen der Seite','CMSMAIN.FILTEREDTREE':'Gefilterter Seitenbaum zeigt nur Änderungen','CMSMAIN.ERRORFILTERPAGES':'Konnte Seitenbaum nicht filtern<br />%s','CMSMAIN.ERRORUNFILTER':'Konnte Filterung des Seitenbaumes nicht aufheben<br />%s','CMSMAIN.PUBLISHINGPAGES':'Publiziere Seiten...','CMSMAIN.SELECTONEPAGE':"Bitte mindestens eine Seite auswählen",'CMSMAIN.ERRORPUBLISHING':'Fehler beim Veröffentlichen der Seiten','CMSMAIN.REALLYDELETEPAGES':"Wollen Sie wirklich %s Seiten löschen?",'CMSMAIN.DELETINGPAGES':'Lösche Seiten...','CMSMAIN.ERRORDELETINGPAGES':'Fehler beim Löschen der Seiten','CMSMAIN.PUBLISHING':'Veröffentliche...','CMSMAIN.RESTORING':'Wiederherstellen...','CMSMAIN.ERRORREVERTING':'Fehler beim Wiederherstellen des Live-Inhaltes','CMSMAIN.SAVING':'Sichern...','CMSMAIN.SELECTMOREPAGES':"Sie haben %s Seiten ausgewählt.\n\nWollen Sie wirklich diese Aktion durchführen?"});}
;
