function vgseColumnKeyToExportKey(e){if(vgse_editor_settings.export_keys_mapping&&vgse_editor_settings.export_keys_mapping[e])var t=vgse_editor_settings.export_keys_mapping[e];else t=e;return t}function vgse_reset_column_mapping(e){e.find("li.map-columns .map-template:not(.hidden)").toArray().forEach(function(e){var t=jQuery(e),a=t.find("select");a.val(a.data("original_selected_value")),t.removeClass("wpse-hidden")}),e.find("li.map-columns button.wpse-show-columns-again").addClass("wpse-hidden"),e.find("li.map-columns button.next-step").last().removeClass("wpse-hidden"),e.find("li.map-columns .wpse-all-columns-ignored-message").remove()}function vgse_get_import_columns_mapping_status(e){var t=e.find("li.map-columns .map-template:not(.hidden)"),a=!0,o=!0;return t.toArray().forEach(function(e){var t=jQuery(e);t.hasClass("wpse-hidden")||(o=!1),""!==t.find("select").val()&&(a=!1)}),{all_columns_are_being_ignored:a,all_columns_are_hidden:o}}function vgse_column_mapping_step_is_valid(e,t){if(!e.find(".step.current").hasClass("map-columns"))return!0;var a=e.find("li.map-columns .map-template:not(.hidden)");!!t&&(t.parent().hasClass("import-auto-map-notice")&&t.hasClass("next-step"))&&vgse_reset_column_mapping(e);var o=jQuery(document.createElement("p")).attr({class:"wpse-all-columns-ignored-message"}).text(vgse_editor_settings.texts.import_all_columns_ignored),n=e.find("li.map-columns button.wpse-show-columns-again"),r=e.find("li.map-columns button.next-step"),i=0<e.find("li.map-columns .wpse-all-columns-ignored-message").length;if(n.length<=0){n=jQuery(document.createElement("button")).attr({class:"wpse-show-columns-again wpse-hidden button button-primary button-primario"}).text(vgse_editor_settings.texts.import_show_all_columns_rows);r.last().after(n)}var s=vgse_get_import_columns_mapping_status(e);return s.all_columns_are_being_ignored?(i||a.last().after(o),s.all_columns_are_hidden&&(r.last().addClass("wpse-hidden"),n.removeClass("wpse-hidden")),!1):(e.find("li.map-columns .wpse-all-columns-ignored-message").remove(),!0)}jQuery(document).ready(function(){if(!jQuery(".import-csv-modal").length)return!0;jQuery(".import-csv-modal .remodal-confirm").hide();var l=jQuery(".import-csv-form");function i(){var e=l.find(".step.current"),t=l.find(".step.current").prev(".step");e.slideToggle(),e.removeClass("current"),t.show(),t.addClass("current")}l.on("click",".map-columns .wpse-show-columns-again",function(e){e.preventDefault(),vgse_reset_column_mapping(l)}),l.on("click",".map-columns .wpse-ignore-column-cross",function(){jQuery;var e=jQuery(this).parent();e.addClass("wpse-hidden"),e.find("select").val(""),vgse_column_mapping_step_is_valid(l)}),l.find(".import-column-bulk-actions select").change(function(e){"unselect"===jQuery(this).val()&&jQuery(".map-columns .map-template select").val("")}),l.find(".toggle-advanced-options").change(function(e){l.find(".advanced-options").slideToggle()}),l.find(".existing-check-csv-field").change(function(e){var t=jQuery(this).val();t&&(l.find(".map-columns .csv-column-name-value").filter(function(){return jQuery(this).val()===t}).parent().find("select").val()?l.find(".wp-field-requires-ignored-column").hide():(l.find(".wp-field-requires-ignored-column").show(),jQuery(this).val("")),jQuery(this).parent(".field-wrapper").next(".field-wrapper").find("option").filter(function(){return jQuery(this).text()===t||"record_id"===t&&"ID"===jQuery(this).text()}).prop("selected",!0).trigger("change"))}),l.find('[name="writing_type"]').change(function(e){jQuery(this).val()&&"all_new"!==jQuery(this).val()?l.find(".field-find-existing-columns").show():l.find(".field-find-existing-columns").hide()}),l.find(".data-input,.step").hide(),l.find(".step").first().show(),l.find(".source").change(function(e){var t=jQuery(this).val();if(l.find(".data-input").hide(),"csv_upload"===t)l.find(".data-input.csv-upload").show();else if("csv_url"===t)l.find(".data-input.csv-url").show();else if("server_file"===t)l.find(".data-input.server-file").show();else if("paste"===t){l.find(".data-input.paste").show(),window.importHOT&&window.importHOT.destroy();var a={minSpareRows:4,wordWrap:!0,allowInsertRow:!0,columnSorting:!0,colHeaders:!1,width:l.width(),height:300},o=document.getElementById("handsontable-paste");window.importHOT=new Handsontable(o,a)}}),l.on("click",".next-step",function(e){if(e.preventDefault(),vgse_column_mapping_step_is_valid(l,jQuery(this))){!function(){var e=l.find(".step.current"),t=l.find(".step.current").next(".step");e.slideToggle(),e.removeClass("current"),t.show(),t.addClass("current")}();var t=l.find(".step.current");if(t.hasClass("preview-step")&&window.vgseImportData&&window.vgseImportData.success){window.importPreviewHOT&&window.importPreviewHOT.destroy();var a={data:window.vgseImportData.data.firstRows,minSpareRows:1,wordWrap:!0,allowInsertRow:!0,columnSorting:!0,colHeaders:window.vgseImportData.data.rowHeaders,width:l.width(),height:170},o=document.getElementById("hot-preview");window.importPreviewHOT=new Handsontable(o,a),jQuery(".import-csv-modal .remodal-confirm").show(),setFormSubmitting()}t.hasClass("write-type")}}),l.on("click",".prev-step",function(e){e.preventDefault(),i()}),l.find(".vgse-upload-csv-file").click(function(e){e.preventDefault();var t=jQuery(this),o=t.parents(".data-input");loading_ajax({estado:!0});var a={data:{action:"vgse_upload_file_for_import",data_type:t.data("type"),vgse_plain_mode:"yes",nonce:jQuery("#vgse-wrapper").data("nonce"),separator:o.parents(".step").find(".separator").val(),decode_quotes:o.parents(".step").find(".decode-quotes").is(":checked")?"on":"",post_type:jQuery("#post-data").data("post-type")},type:"POST",url:ajaxurl};if("local"===t.data("type")){var n=new FormData;n.append("action","vgse_upload_file_for_import"),n.append("data_type",t.data("type")),n.append("nonce",jQuery("#vgse-wrapper").data("nonce")),n.append("post_type",jQuery("#post-data").data("post-type")),n.append("separator",o.parents(".step").find(".separator").val()),n.append("decode_quotes",o.parents(".step").find(".decode-quotes").is(":checked")?"on":""),n.append("data",""),n.append("file",document.getElementById("vgse-import-local-file").files[0]),a.processData=!1,a.contentType=!1,a.data=n}else"url"===t.data("type")?a.data.data=o.find(".data").val():"server_file"===t.data("type")?a.data.data=o.find(".data").val():a.data.data=window.importHOT.getSourceData();jQuery.ajax(a).always(function(r){if(window.vgseImportData=r,loading_ajax({estado:!1}),r.success&&r.data.rowHeaders){l.find(".existing-check-csv-field").each(function(){jQuery(this).find("option:not(:eq(0))").remove()}),l.find(".import-file").val(r.data.filePath),l.find(".total-rows").val(r.data.totalRows);var e=r.data.rowHeaders;l.find(".map-template:not(.hidden)").remove(),l.find(".import-column-bulk-actions").val(""),jQuery.each(e,function(e,t){if(t){var a=l.find(".map-template.hidden").clone();a.removeClass("hidden"),a.find(".csv-column-name-text").text(t),a.find(".csv-column-name-example").append(jQuery("<span>"+r.data.firstRows[0][t]+"</span>").text().substring(0,100)),a.find(".csv-column-name-value").val(t),l.find(".map-template").last().after(a);if(-1<["ID","id","record_id"].indexOf(t))var o="ID";else o=t;var n=o.replace(/[0-9]+/g,"");vgse_editor_settings.post_type===vgse_editor_settings.woocommerce_product_post_type_key&&vgse_editor_settings.wc_repeatable_columns&&jQuery.each(vgse_editor_settings.wc_repeatable_columns,function(e,t){e.replace(/\%d/g,"")===n&&(o=t)}),l.find(".map-template").last().find("select option").each(function(){var e=jQuery(this),t=jQuery.trim(e.text());jQuery.trim(o.toLowerCase())===t.toLowerCase()&&(e.prop("selected",!0),e.closest("select").data("original_selected_value",e.val()),e.parents("select").trigger("change"))}),l.find(".existing-check-csv-field").append('<option value="'+t+'">'+t+"</option>")}});var t=l.find(".map-template:not(.hidden) select").filter(function(){return!jQuery(this).val()});1===e.length?l.find(".one-column-detected-tip").show():l.find(".one-column-detected-tip").hide(),t.length?(l.find(".import-column-list-headers, .import-column-bulk-actions").show(),l.find(".map-template:not(.hidden)").show(),l.find(".import-auto-map-notice").hide(),l.find(".map-columns .button-primario.next-step").show()):(l.find(".import-auto-map-notice").show(),l.find(".import-column-list-headers, .import-column-bulk-actions").hide(),l.find(".map-columns .button-primario.next-step").hide(),l.find(".import-auto-map-notice .import-map-select-columns").click(function(e){e.preventDefault(),l.find(".import-column-list-headers, .import-column-bulk-actions").show(),l.find(".map-template:not(.hidden)").show(),l.find(".map-columns .button-primario.next-step").show()}))}else{i();var a=void 0!==r.data.message?r.data.message:"Error";notification({mensaje:"Error",tipo:"error",tiempo:18e4}),o.parents(".step").find(".file-upload-error").remove(),o.parents(".step").find(".advanced-options").before('<div class="alert alert-red file-upload-error">'+a+"</div>")}})}),vgse_editor_settings.post_type===vgse_editor_settings.woocommerce_product_post_type_key&&jQuery("body").on("change",".map-template select",function(){if(-1<jQuery(this).val().indexOf(":"))if("meta:"===jQuery(this).val()){jQuery(this).find("option:selected").attr("value",jQuery(this).parents(".map-template").find(".csv-column-name-text").text().replace("Meta: ","meta:"))}else{var t=jQuery(this).find("option:selected").attr("value").replace(/[0-9]/g,"");l.find('.map-template select option[value*="'+t+'"]:selected').each(function(e){jQuery(this).attr("value",t+e)})}});var p=jQuery(".import-csv-modal");jQuery(document).on("closed",".import-csv-modal",function(){l.show(),l.find(".step").removeClass("current").hide(),l.find(".step").first().addClass("current").show(),p.find(".import-step").hide(),p.find(".remodal-confirm").hide()}),l.append('<input type="hidden" name="wpse_source_suffix" value="'+(vgse_editor_settings.wpse_source_suffix||"")+'" />'),p.submit(function(e){e.preventDefault(),p.find(".import-step").show();var r=p.find(".import-response");r.empty(),p.find("#be-import-nanobar-container").remove(),r.before('<div id="be-import-nanobar-container" />');var t={classname:"be-progress-bar",target:document.getElementById("be-import-nanobar-container")},i=new Nanobar(t);i.go(1),l.hide(),p.find(".remodal-cancel").hide();var a=parseInt(l.find(".total-rows").val()),s={updated:0,created:0,processed:0},d=0;return l.find(".existing-check-wp-field").val()&&l.find(".auto-retry-failed-batches").prop("checked",!0),window.beImportLoop=beAjaxLoop({totalCalls:Math.ceil(a/vgse_editor_settings.save_posts_per_page),url:ajaxurl,dataType:"json",method:"POST",data:l.serializeArray(),onSuccess:function(a,o){if(d=0,!a.success)return"string"==typeof a.data.row&&(a.data.message+=". Row: "+a.data.row+"<br>"+vgse_editor_settings.texts.import_data_issue_correct_restart),r.append("<p>"+a.data.message+"</p>"),r.scrollTop(r[0].scrollHeight),i.go(100),p.find("#be-import-nanobar-container").remove(),p.find(".remodal-cancel").show(),p.find(".import-actions").hide(),!1;if(jQuery.isArray(o.data)){var n=!1;o.data.forEach(function(e,t){"file_position"===e.name&&(o.data[t].value=a.data.file_position,n=!0)}),n||o.data.push({name:"file_position",value:a.data.file_position})}else o.data.file_position=a.data.file_position;s.updated+=a.data.updated,s.created+=a.data.created,s.processed+=a.data.processed;var e=a.data.message.replace("{total_updated}",s.updated).replace("{total_created}",s.created);return o.totalCalls=Math.ceil(parseInt(a.data.total)/vgse_editor_settings.save_posts_per_page),r.empty(),r.append(e),r.scrollTop(r[0].scrollHeight),o.current===o.totalCalls||a.data.force_complete?(r.append(vgse_editor_settings.texts.import_finished),r.scrollTop(r[0].scrollHeight),i.go(100),p.find("#be-import-nanobar-container").remove(),p.find(".remodal-cancel").show(),p.find(".import-actions").hide(),vgseReloadSpreadsheet(!0),!1):(i.go(o.current/o.totalCalls*100),p.find(".remodal-cancel").hide(),p.find(".import-actions").show(),!0)},onError:function(e,t,a){if(++d<=3)var o=!!l.find(".auto-retry-failed-batches").is(":checked")||confirm(vgse_editor_settings.texts.import_failed_retry_server_error);else o=!1;return o?(window.vgseDontNotifyServerError=!0,a.current--,i.go(a.current/a.totalCalls*100),p.find(".remodal-cancel").hide(),p.find(".import-actions").show(),!0):(r.append(vgse_editor_settings.texts.import_failed_server_error_tips),r.scrollTop(r[0].scrollHeight),i.go(100),p.find("#be-import-nanobar-container").remove(),p.find(".remodal-cancel").show(),p.find(".import-actions").hide(),!1)}}),p.find(".pause-import").data("action","pause").addClass("button-secondary").removeClass("button-primary").html('<i class="fa fa-pause"></i> Pause'),!1}),p.find(".pause-import").click(function(e){e.preventDefault();var t=jQuery(this);"pause"===t.data("action")?(t.data("action","play").addClass("button-primary").removeClass("button-secondary").html('<i class="fa fa-play"></i> Resume'),window.beImportLoop.pause(),p.find(".remodal-cancel").show(),p.find(".remodal-confirm").show()):(t.data("action","pause").addClass("button-secondary").removeClass("button-primary").html('<i class="fa fa-pause"></i> Pause'),window.beImportLoop.resume(),p.find(".remodal-cancel").hide(),p.find(".remodal-confirm").hide())})}),jQuery(document).ready(function(){var d;if(!(d=jQuery(".export-csv-form")).length)return!0;(d=jQuery(".export-csv-form")).find(".export-actions").hide(),d.find(".select-all").click(function(e){e.preventDefault(),d.find(".export-columns option").prop("selected",!0).trigger("change")}),d.find(".select-active").click(function(e){e.preventDefault();var o=d.find(".export-columns");o.find("option").prop("selected",!1),jQuery.each(vgse_editor_settings.columnsFormat,function(e,t){var a=vgseColumnKeyToExportKey(e);o.find('option[value="'+a+'"]').prop("selected",!0)}),d.find(".export-columns").trigger("change")}),d.find(".unselect-all").click(function(e){e.preventDefault(),d.find(".export-columns option").prop("selected",!1).trigger("change")}),d.submit(function(e){window.beExportLoop=null;var o=jQuery(".export-response");o.empty(),d.find("#be-export-nanobar-container").remove(),o.before('<div id="be-export-nanobar-container" />');var t={classname:"be-progress-bar",target:document.getElementById("be-export-nanobar-container")},n=new Nanobar(t);n.go(1),d.find(".remodal-cancel").hide(),d.find(".remodal-confirm").hide(),d.find(".export-actions").show(),d.find(".export-columns").prop("disabled",!0).trigger("change");var r=vgse_editor_settings.export_page_size,a={action:"vgse_load_data",vgse_plain_mode:"yes",posts_per_page:r,vgse_csv_export:"yes",custom_enabled_columns:d.find(".export-columns").val().join(","),add_excel_separator_flag:d.find(".excel-compatibility-container select").val()?1:0,nonce:jQuery("#vgse-wrapper").data("nonce"),post_type:jQuery("#post-data").data("post-type"),filters:beGetRowsFilters(),export_key:[vgseFormatDate(),jQuery("#post-data").data("post-type"),vgseGuidGenerator()].join("-"),wpse_source_suffix:vgse_editor_settings.wpse_source_suffix||""};if(d.find('[name="save_for_later_name"]').val()){a.save_for_later={name:d.find('[name="save_for_later_name"]').val(),columns:a.custom_enabled_columns,add_excel_separator_flag:a.add_excel_separator_flag,filters:a.filters,post_type:a.post_type};var i=jQuery(".export_csv-container");i.find(".toolbar-submenu").length||i.append('<div class="toolbar-submenu" />');var s=i.find(".toolbar-submenu").length;i.find(".toolbar-submenu .button:contains("+a.save_for_later.name+")").parent().remove(),i.find(".toolbar-submenu").append('<div class="button-container save_export-container"><button name="save_export'+s+'" class="button" data-start-saved-export>'+a.save_for_later.name+"</button></div>"),i.find(".toolbar-submenu").find(".button").last().data("start-saved-export",a.save_for_later)}return window.beExportLoop=beAjaxLoop({totalCalls:Math.ceil(window.beFoundRows/r),url:ajaxurl,dataType:"json",method:"POST",data:a,prepareData:function(e,t){return e.paged=e.page,e},onSuccess:function(e,t){return e.success?(t.totalCalls=Math.ceil(parseInt(e.data.total)/r),o.empty(),o.append(e.data.message),o.scrollTop(o[0].scrollHeight),t.current===t.totalCalls?(e.data.export_file_url&&window.location.href.indexOf("no_redirect=1")<0&&(window.location.href=e.data.export_file_url),o.scrollTop(o[0].scrollHeight),n.go(100),d.find("#be-export-nanobar-container").remove(),d.find(".export-actions").hide(),d.find(".remodal-cancel").show(),d.find(".remodal-confirm").show(),d.find(".export-columns").prop("disabled",!1).trigger("change"),!1):(n.go(t.current/t.totalCalls*100),d.find(".remodal-cancel").hide(),!0)):(o.append("<p>"+e.data.message+"</p>"),o.scrollTop(o[0].scrollHeight),n.go(100),d.find("#be-export-nanobar-container").remove(),d.find(".remodal-cancel").show(),d.find(".remodal-confirm").show(),d.find(".export-columns").prop("disabled",!1).trigger("change"),!1)},onError:function(e,t,a){return 30<r&&(500<=e.status||"timeout"===t)?(window.vgseDontNotifyServerError=!0,r=10,a.data.posts_per_page=r,a.current=0,d.find(".remodal-cancel").hide(),!0):confirm(vgse_editor_settings.texts.formula_retry_batch)?(window.vgseDontNotifyServerError=!0,a.current--,n.go(a.current/a.totalCalls*100),d.find(".remodal-cancel").hide(),!0):(o.append(vgse_editor_settings.texts.process_execution_failed),o.scrollTop(o[0].scrollHeight),n.go(100),d.find("#be-export-nanobar-container").remove(),d.find(".remodal-cancel").show(),d.find(".remodal-confirm").show(),d.find(".export-columns").prop("disabled",!1).trigger("change"),!1)}}),d.find(".pause-export").data("action","pause").addClass("button-secondary").removeClass("button-primary").html('<i class="fa fa-pause"></i> Pause'),!1}),d.find(".pause-export").click(function(e){e.preventDefault();var t=jQuery(this);"pause"===t.data("action")?(t.data("action","play").addClass("button-primary").removeClass("button-secondary").html('<i class="fa fa-play"></i> Resume'),window.beExportLoop.pause(),d.find(".remodal-cancel").show(),d.find(".remodal-confirm").show(),d.find(".export-columns").prop("disabled",!1).trigger("change"),d.find(".export-actions").show()):(t.data("action","pause").addClass("button-secondary").removeClass("button-primary").html('<i class="fa fa-pause"></i> Pause'),window.beExportLoop.resume(),d.find(".remodal-cancel").hide(),d.find(".remodal-confirm").hide())}),d.find(".export-columns").change(function(){window.beExportLoop&&(window.beExportLoop.pause(),d.find(".export-actions").hide())})}),jQuery(document).ready(function(){var o=jQuery('[data-remodal-id="export-csv-modal"]');jQuery("body").on("click","[data-start-saved-export]",function(e){e.preventDefault();var t=jQuery(this).data("start-saved-export");o.remodal().open();var a=o.find(".export-columns");a.find("option").prop("selected",!1),t.columns.split(",").forEach(function(e){a.find('option[value="'+e+'"]').prop("selected",!0)}),a.trigger("change"),o.find(".excel-compatibility-container select").val(t.add_excel_separator_flag?"yes":""),jQuery("body").data("be-filters",""),beAddRowsFilter(t.filters),o.find('[name="save_for_later_name"]').val(""),o.find('[name="use_search_query"]').prop("checked",!0),o.find(".vgse-trigger-export").click()}),jQuery(document).on("opened",".export-csv-modal",function(){var o=jQuery(".export-columns");o.data("wpse-sort-fixed")||o.select2().on("select2:select",function(e){var t=e.params.data.id,a=jQuery(e.target).children("[value="+t+"]");a.detach(),jQuery(e.target).append(a).change(),o.data("wpse-sort-fixed",1)})})}),jQuery(window).on("load",function(){jQuery("body").on("click",".wpse-quick-access-link",function(e){e.preventDefault();var t=jQuery(this);"function"==typeof loading_ajax&&loading_ajax({estado:!0}),jQuery.get(vgse_universal_sheet_data.rest_base_url+"sheet-editor/v1/sheet/generate-quick-access?_wpnonce="+vgse_universal_sheet_data.rest_nonce+"&sheet_key="+vgse_universal_sheet_data.post_type,function(e){t.parent().find(".wpsegs-quick-access input").val(e.quick_access_url).focus(),t.parent().find(".wpsegs-quick-access").show(),"function"==typeof loading_ajax&&loading_ajax({estado:!1})})})}),jQuery(document).ready(function(){var o=jQuery('[data-remodal-id="export-csv-modal"]');if("undefined"==typeof hot||!o.length)return!0;var e=hot.getSettings().contextMenu;void 0===e.items&&(e.items={}),e.items.wpse_export_column={name:vgse_editor_settings.texts.export_column,hidden:function(){if(!hot.getSelected())return!0;var e=hot.colToProp(hot.getSelected()[0][1]);return!(o.find(".export-columns").find('option[value="'+e+'"]').length||vgse_editor_settings.export_keys_mapping&&vgse_editor_settings.export_keys_mapping[e])},callback:function(e,t,a){var r=o.find(".export-columns");r.find("option").toArray().forEach(function(e){jQuery(e).prop("selected",!1)}),t.forEach(function(e){for(var t=e.start.col>e.end.col?e.end.col:e.start.col,a=e.start.col>e.end.col?e.start.col:e.end.col,o=[],n=t;n<=a;n++)o.push(n);o.forEach(function(e){var t=vgseColumnKeyToExportKey(hot.colToProp(e));r.find('option[value="'+t+'"]').prop("selected",!0)})}),o.remodal().open(),r.find('option[value="'+vgseColumnKeyToExportKey(hot.colToProp(1))+'"]').prop("selected",!0),r.trigger("change"),o.find('[name="use_search_query"]').prop("checked",!0),o.find(".vgse-trigger-export").click()}},hot.updateSettings({contextMenu:e})});