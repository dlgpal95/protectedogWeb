<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>��ȣ�Ұ� �� �о��ı�� ����</title>
	<!--  meta  -->
	<meta charset="EUC-KR">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<!--  bootstrap CDN  -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/12.3.0/classic/ckeditor.js"></script>
	
	<!--  CSS -->
	<style>
		@font-face {
			font-family: ng;
			src: url(NanumGothic.eot);
			src: local(��), url(NanumGothic.woff) format(��woff��);
		}
		
		body {
			font-family: '��������', 'NanumGothic', ng
		}
		
		body {
			padding-top: 50px;
		}
		
		#preview img {
			width: 100px;
			height: 100px;
		}
		
		#preview p {
			text-overflow: ellipsis;
			overflow: hidden;
		}
		
		.preview-box {
			padding: 5px;
			border-radius: 2px;
			margin-bottom: 10px;
		}
		
		.ck.ck-editor {
			min-width: 95%;
		}
		
		.ck-editor__editable {
			text-align: left;
			min-height: 300px;
			min-width: 95%;
		}
		
		label {
			background-color: #3e6dad;
			color: white;
			border-radius: 10px;
		}
	</style>

	<!--  JavaScript  -->
	<script type="text/javascript">


	</script>

</head>

<body>

	<jsp:include page="/layout/toolbar.jsp"></jsp:include>
	<div class="container">
		<h3 class=" text-info">�ı�� ����</h3>

		<hr>

		<div style="border: 1px solid #d7dade; padding: 3px;">

			<form class="form-horizontal" name="detailForm">

				<input type="hidden" name="postNo" value="${board.postNo}">
				<div class="row">
					<div class="col-xs-12 col-md-12">
						<input type="text" class="form-control" name="postTitle"
							id="postTitle" style="height: 50px; font-size: 20px" value="${board.postTitle}"
							placeholder="������ �Է��ϼ���." />
					</div>
				</div>


				<br />

				<div class="row">
					<div class="col-xs-12 col-md-12">
						<div class="body">
							<!-- ÷�� ��ư -->
							<div id="attach">
								<label class="waves-effect waves-teal btn-flat"
									for="uploadInputBox">����÷��</label> <input id="uploadInputBox"
									style="display: none" type="file" name="filedata" multiple />
							</div>

							<!-- �̸����� ���� -->
							<div id="preview" class="content" align="center"
								style="display: inline; min-width: 600px;"></div>

							<!-- multipart ���ε�� ���� -->
							<div id="uploadForm" style="display: none;"></div>
						</div>
					</div>
				</div>

				<hr />

				<div id="ckEditor" align="center">

					<div id="toolbar-container" align="center"
						class="col-xs-12 col-md-12"></div>
					<textarea class="col-xs-12 col-md-12" id="editor"
						name="postContent" style="text-align: left;">
						${board.postContent}
					</textarea>
				</div>
				

               		

			</form>
		</div>

		<hr />
		
		
		<div class="row mt-5 pt-3 d-flex">
          	<div class="col-md-12">
          	
				<p><button class="btn btn-primary py-3 px-4 col-md-12">����</button></p>
				
				<div class="form-group">
					<div class="col-md-12">
						<div class="radio" align="right">
							<p><a href="#" ><font color="gray">���</font></a></p>
						</div>
					</div>
				</div>
				
          	</div>
        </div>



	</div>
	
	<br/><br/><br/><br/>
	<jsp:include page="/layout/footer.jsp"></jsp:include>


			
	<script>
	
	


	      //  ================================ CKEditor ============================================== 
	let editor;
	
	ClassicEditor
    .create( document.querySelector( '#editor' ),{
    
    	toolbar : [ 'heading', '|', 'bold', 'italic', 'link', 'bulletedList', 'numberedList', 'blockQuote' ],
    	heading: {
            options: [
                { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' }
            ]
        }
    	
    })
    .then( newEditor => {
        editor = newEditor;
    } )
    .catch( error => {
        console.error( error );
    } );
	
	 $(document).ready(function() {

         //============= �����̸����� =============
         $('#attach input[type=file]').change(function() {
            addPreview($(this)); //preview form �߰��ϱ�
        });
	 });
         
	function fncUpdateAdoptReview(){
	         
	      //============= �������Ͼ��ε� AJAX =============
	    	  
	    	  var title = $("#postTitle").val();
	      
	      	  if(title.length < 1 || title == null ){
	      		  alert("������ �Է��� �ּ���");
	      	  }
	          $(function() {     
	            var form = $('#uploadForm')[0];
	            var formData = new FormData(form);

	            for (var index = 0; index < 100; index++) {
	                formData.append('files',files[index]);
	            }
	                
	                $.ajax({
	                type : 'POST',
	                enctype : 'multipart/form-data',
	                processData : false,
	                contentType : false,
	                cache : false,
	                timeout : 600000,
	                url : '/Images/json/imageupload/IS',
	                dataType : 'JSON',
	                data : formData,
	                success : function(result) {
	                    if (result === -1) {
	                        alert('jpg, gif, png, bmp Ȯ���ڸ� ���ε� �����մϴ�.');
	                        // ���� ���� ...
	                    } else if (result === -2) {
	                        alert('������ 10MB�� �ʰ��Ͽ����ϴ�.');
	                        // ���� ���� ...
	                    } else {
	                        alert('�̹��� ���ε� ����');
	                    }
	                }
	            });
	        });


	      $('form').attr("method","POST").attr("action","/adoptReview/updateAdoptReview").attr("enctype","multipart/form-data").submit();
	   }
	   
	   //============= "�������Ͼ��ε� ���ϸ��� �����ؼ� value" =============   
	   function fnAddFile(fileNameArray) {
	         $("#multiFile").val(fileNameArray)    
	   }   
	   
	   //============= "�������Ͼ��ε�"  Event ó�� ��  ���� =============      

	       //������ file object����
	     var files = {};
	     var previewIndex = 0;
	     var fileNameArray = new Array();
	     // image preview ��� ����
	     // input = file object[]
	     function addPreview(input) {
	         if (input[0].files) {
	             //���� ������ ���������� ���� ����
	             for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {

	                 var file = input[0].files[fileIndex];
	                
	                 if (validation(file.name))
	                     continue;

	                var fileName = file.name + "";   
	                var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
	                var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex, fileName.length);       
	                
	                //append�Ҷ� ������ �̹��� �������ֱ�
	               var imgSelectName = "img";
	               if(fileNameExtension === 'mp4' || fileNameExtension === 'avi'){
	                  imgSelectName = "iframe";
	               }                           

	                 var reader = new FileReader();
	                 reader.onload = function(img) {
	                     //div id="preview" ���� �����ڵ��߰�.
	                     //�� �κ��� �����ؼ� �̹��� ��ũ �� ���ϸ�, ������ ���� �ΰ������� �� �� ���� ���̴�.
	                     
	                     var imgNum = previewIndex++;
	                     
	                     var previewId = "";             
	                     if(imgNum==0){
	                        previewId = "start";
	                     }else{
	                        previewId = "startNo";   
	                     }
	                    //8�� �̻� ���ε��
	                     if(Object.keys(files).length>=8){
	                        alert("������ 8������� ���ε� �����մϴ�.");
	                        delete files[imgNum];
	                     }else{
	               // 8�� ���� 
	               
	               			document.querySelector( '#editor' ).addEventListener( 'click', () => {
                	    const editorData = editor.getData();     	           
                		} );
	               
	               		 editor.setData(editor.getData()+"<p><"+imgSelectName+" src='" + img.target.result + "' style='min-width:100%'/></p><p/>");
	          
	                     $("#preview").append(
	                                     "<div class=\"preview-box\"  id="+previewId+"  value=\"" + imgNum +"\"  style='display:inline;float:left;width:140px' >"
	                                             + "<"+imgSelectName+" class=\"thumbnail\" src=\"" + img.target.result + "\"\/ width=\"120px;\" height=\"120px;\"/>"
	                                             + "<a href=\"#\" value=\""
	                                             + imgNum
	                                             + "\" onclick=\"deletePreview(this)\">"
	                                             + "   ����" + "</a>" + "</div>");

	                     files[imgNum] = file;
	                     fileNameArray[imgNum]=file.name;
	                     fnAddFile(fileNameArray);
	                     }

	                 };

	                 reader.readAsDataURL(file);
	             }
	         } else
	             alert('invalid file input'); // ÷��Ŭ�� �� ��ҽ��� ����å�� ������ �ʾҴ�.
	     }

	     //============= preview �������� ���� ��ư Ŭ���� �ش� �̸������̹��� ���� ���� =============
	     function deletePreview(obj) {
	         var imgNum = obj.attributes['value'].value;
	         delete files[imgNum];
	         fileNameArray.splice(imgNum,1);
	         fnAddFile(fileNameArray);
	         $("#preview .preview-box[value=" + imgNum + "]").remove();
	         resizeHeight();
	     }

	     //============= ���� Ȯ���� validation üũ =============
	     function validation(fileName) {
	         fileName = fileName + "";
	         var fileNameExtensionIndex = fileName.lastIndexOf('.') + 1;
	         var fileNameExtension = fileName.toLowerCase().substring(
	                 fileNameExtensionIndex, fileName.length);
	         if (!((fileNameExtension === 'jpg')|| (fileNameExtension === 'gif') || (fileNameExtension === 'png')||(fileNameExtension === 'avi')||(fileNameExtension === 'mp4'))) {
	             alert('jpg, gif, png, avi, mp4 Ȯ���ڸ� ���ε� �����մϴ�.');
	             return true;
	         } else {
	             return false;
	         }
	     }
	     
	     
	   ///////////////////////////////////////////////////////////////////////////////
	     
	     $(function() {
				$( "button:contains('����')" ).on("click" , function() {
					fncUpdateAdoptReview();
				});
				
				$( "a:contains('���')" ).on("click" , function() {
					self.location = "/adoptReview/getAdoptReview?postNo=${board.postNo}"
				});
		 });
</script>


</body>
</html>