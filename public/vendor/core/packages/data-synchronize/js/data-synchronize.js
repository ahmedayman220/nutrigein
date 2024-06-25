(()=>{function t(t,n){return function(t){if(Array.isArray(t))return t}(t)||function(t,e){var n=null==t?null:"undefined"!=typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null!=n){var a,o,r,i,l=[],s=!0,c=!1;try{if(r=(n=n.call(t)).next,0===e){if(Object(n)!==n)return;s=!1}else for(;!(s=(a=r.call(n)).done)&&(l.push(a.value),l.length!==e);s=!0);}catch(t){c=!0,o=t}finally{try{if(!s&&null!=n.return&&(i=n.return(),Object(i)!==i))return}finally{if(c)throw o}}return l}}(t,n)||function(t,n){if(!t)return;if("string"==typeof t)return e(t,n);var a=Object.prototype.toString.call(t).slice(8,-1);"Object"===a&&t.constructor&&(a=t.constructor.name);if("Map"===a||"Set"===a)return Array.from(t);if("Arguments"===a||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(a))return e(t,n)}(t,n)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function e(t,e){(null==e||e>t.length)&&(e=t.length);for(var n=0,a=new Array(e);n<e;n++)a[n]=t[n];return a}$((function(){var e=function(e,n,a){var o=$httpClient.make().withResponseType("blob");a&&o.withButtonLoading(a),o.post(e.prop("action"),n).then((function(n){var a=n.headers,o=n.data,r=t(a["content-disposition"].split("filename="),2),i=(r[0],r[1]),l=window.URL.createObjectURL(o),s=document.createElement("a");s.href=l,s.download=i,s.click(),window.URL.revokeObjectURL(l),Botble.showSuccess(e.data("success-message"))})).catch((function(){Botble.showError(e.data("error-message"))}))},n=$(document).find('[data-bb-toggle="import-form"]');if(n.length>0){var a=new FormData(n.get(0)),o=n.find('button[type="submit"]'),r=n.find('[data-bb-toggle="import-errors"]'),i=n.find(".data-synchronize-import-output"),l=[],s=null;n.on("change",(function(t){a.set(t.target.name,t.target.value)}));var c=function(t,e){e?i.append('<p class="text-'.concat(e,'">').concat(t,"</p>")):i.append("<p>".concat(t,"</p>")),i.scrollTop(i[0].scrollHeight)},u=new Dropzone(n.find(".dropzone").get(0),{url:n.prop("action"),headers:{"X-CSRF-TOKEN":n.find('input[name="_token"]').val()},previewTemplate:$("#data-synchronize-import-preview-template").html(),acceptedFiles:n.data("accepted-files"),maxFiles:1,autoProcessQueue:!1,chunking:!0,chunkSize:1048576,maxfilesexceeded:function(t){this.removeAllFiles(),this.addFile(t)}}),d=function(){Botble.hideButtonLoading(o),o.prop("disabled",!0).addClass("disabled"),u.removeAllFiles()},f=function t(e,o){var r=arguments.length>2&&void 0!==arguments[2]?arguments[2]:parseInt(n.find("input[name=chunk_size]").val()),i=arguments.length>3&&void 0!==arguments[3]?arguments[3]:0;a.set("file_name",e),a.set("offset",o),a.set("limit",r),a.set("total",i),$httpClient.make().post(n.data("import-url"),a).then((function(n){var a=n.data;a.data.count>0?(c(a.message),t(e,a.data.offset+r,r,a.data.total)):(c(a.message,"success"),d())})).catch((function(){return d()}))},p=function t(e,o){var i=arguments.length>2&&void 0!==arguments[2]?arguments[2]:parseInt(n.find("input[name=chunk_size]").val());a.set("file_name",e),a.set("offset",o),a.set("limit",i),$httpClient.make().post(n.data("validate-url"),a).then((function(e){var a=e.data;a.data.errors.length>0&&(l=l.concat(a.data.errors)),null===s&&(s=a.data.total),a.message&&c(a.message),a.data.count>0?t(a.data.file_name,a.data.offset+i,i):0===l.length?f(a.data.file_name,0):c(n.data("validate-failed-message"),"danger"),l.length>0&&(r.find("ul").html(l.map((function(t){return"<li>".concat(t,"</li>")})).join("")),r.show(),d())})).catch((function(){return d()}))};u.on("sending",(function(){i.empty(),i.show(),c(n.data("uploading-message")),Botble.showButtonLoading(o)})),u.on("success",(function(t,e){var n=e.data,a=e.error,o=e.message;if(a)return c(o,"danger"),void d();c(o),p(n.file_name,0)})),u.on("addedfile",(function(){o.prop("disabled",!1).removeClass("disabled")})),n.on("submit",(function(t){t.preventDefault(),u.getQueuedFiles().length>0&&u.processQueue()}))}$(document).on("click",'[data-bb-toggle="export-data"] button',(function(t){t.preventDefault();var n=$(t.currentTarget),a=n.closest("form");e(a,a.serialize(),n)})).on("click",'[data-bb-toggle="quick-export"]',(function(t){t.preventDefault(),e($('[data-bb-toggle="export-data"]'),{format:$(t.currentTarget).data("value")})}))}))})();