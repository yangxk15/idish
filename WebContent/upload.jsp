<!DOCTYPE html>
<html>
  <head>
    <title>Upload</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/upload_1/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/upload_1/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      function check() {
    	  var user = "${sessionScope.user}";
    	  if (user == "") {
    		  alert("Please login first!");
        	  location.href='home.jsp'; 
    		  return;
    	  }
      }
      function submit() {
    	  document.uploadform.submit();
      }
    </script>
    <style>
		a:link {
		    text-decoration: none;
		}
		
		a:visited {
		    text-decoration: none;
		}
		
		a:hover {
		    text-decoration: underline;
		}
		
		a:active {
		    text-decoration: underline;
		}
    </style>
  </head>
  <body onload="check()">

      <form action="search" name="searchform" method="post">
	      <div id="u16" class="ax_text_field">
	        <input id="u16_input" name="query" type="text" value="" placeholder="Search here"/>
	      </div>
      </form>
      
    <form name="uploadform" action="upload" method="post" enctype="multipart/form-data">
    <div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_shape">
        <img id="u0_img" class="img " src="images/home/u48.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_shape">
        <img id="u2_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_shape">
        <img id="u4_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u6" class="ax_shape">
        <img id="u6_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u7" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_paragraph">
        <img id="u8_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Contact Us</span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">1 (603) 123 - 1234</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">admin@idish.com</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u10" class="ax_paragraph">
        <img id="u10_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Privacy Policy</span></p><p style="font-size:6px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">Term Of Use</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u12" class="ax_paragraph">
        <img id="u12_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u13" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">� 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_shape">
        <img id="u14_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span></span></p>
        </div>
      </div>

      

      <!-- Unnamed (Image) -->
      <div id="u17" class="ax_image">
        <a href="personal.jsp"><img id="u17_img" class="img " src="images/users/${user.userid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u18" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u19" class="ax_image">
        <img id="u19_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u20" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u21" class="ax_paragraph">
        <img id="u21_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u22" class="text">
          <p><span>${user.realname }'s Kitchen</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u23" class="ax_shape" onclick="submit()">
        <img id="u23_img" class="img " src="images/recipe/u8.png"/>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span>SUBMIT</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u25" class="ax_shape">
        <img id="u25_img" class="img " src="images/upload_1/u25.png"/>
        <!-- Unnamed () -->
        <div id="u26" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u27" class="ax_text_field">
        <input id="u27_input" name="n" type="text" value=""/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u28" class="ax_paragraph">
        <img id="u28_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u29" class="text">
          <p><span>Add the name of recipe:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u30" class="ax_shape" onclick="">
        <a href="personal.jsp"><img id="u30_img" class="img " src="images/recipe/u8.png"/></a>
        <!-- Unnamed () -->
        <div id="u31" class="text">
          <p><span><a href="personal.jsp">CANCEL</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u32" class="ax_shape">
        <img id="u32_img" class="img " src="images/upload_1/u25.png"/>
        <!-- Unnamed () -->
        <div id="u33" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u34" class="ax_paragraph">
        <img id="u34_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u35" class="text">
          <p><span>Add the brief:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u36" class="ax_shape">
        <img id="u36_img" class="img " src="images/upload_1/u25.png"/>
        <!-- Unnamed () -->
        <div id="u37" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u38" class="ax_shape">
        <img id="u38_img" class="img " src="images/upload_1/u25.png"/>
        <!-- Unnamed () -->
        <div id="u39" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u40" class="ax_paragraph">
        <img id="u40_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u41" class="text">
          <p><span>Add the picture:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u42" class="ax_shape">
        <img id="u42_img" class="img " src="images/upload_1/u42.png"/>
        <!-- Unnamed () -->
        <div id="u43" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <input name="p" id="u44" class="text" type="file" style="width: 160px"/>

      <!-- Unnamed (Table) -->
      <div id="u46" class="ax_table">

        <!-- Unnamed (Table Cell) -->
        <div id="u47" class="ax_table_cell">
          <img id="u47_img" class="img " src="images/upload_1/u47.png"/>
          <!-- Unnamed () -->
          <div id="u48" class="text">
            <p><span>Ingredient</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u49" class="ax_table_cell">
          <img id="u49_img" class="img " src="images/upload_1/u49.png"/>
          <!-- Unnamed () -->
          <div id="u50" class="text">
            <p><span>Amount</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u51" class="ax_table_cell">
          <img id="u51_img" class="img " src="images/upload_1/u51.png"/>
          <!-- Unnamed () -->
          <div id="u52" class="text">
            <p><span>Ingredient</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u53" class="ax_table_cell">
          <img id="u53_img" class="img " src="images/upload_1/u53.png"/>
          <!-- Unnamed () -->
          <div id="u54" class="text">
            <p><span>Amount</span></p>
          </div>
        </div>
		<input id="u55" name="i1" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u57" name="d1" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u59" name="i2" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u61" name="d2" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		
		<input id="u63" name="i3" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u65" name="d3" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u67" name="i4" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>
		<input id="u69" name="d4" class="ax_table_cell" type="text" value="" style="visibility: visible; text-align: left"/>

      </div>

      <!-- Unnamed (Shape) -->
      <div id="u79" class="ax_paragraph">
        <img id="u79_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u80" class="text">
          <p><span>Add the ingredients:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u81" class="ax_shape">
        <img id="u81_img" class="img " src="images/upload_1/u25.png"/>
        <!-- Unnamed () -->
        <div id="u82" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u83" class="ax_paragraph">
        <img id="u83_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u84" class="text">
          <p><span>Add Steps:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u85" class="ax_paragraph">
        <img id="u85_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u86" class="text">
          <p><span>Step 1:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u87" class="ax_paragraph">
        <img id="u87_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u88" class="text">
          <p><span>Step 2:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u89" class="ax_paragraph">
        <img id="u89_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u90" class="text">
          <p><span>Step 3:</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u91" class="ax_h2">
        <img id="u91_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u92" class="text">
          <p><span>Tips</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u93" class="ax_paragraph">
        <img id="u93_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u94" class="text">
          <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo. Proin sodales pulvinar tempor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam fermentum.</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u95" class="ax_paragraph">
        <img id="u95_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u96" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">2.4k</span></p><p style="font-size:10px;"><span style="font-size:10px;">FOLLOWER</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u97" class="ax_paragraph">
        <img id="u97_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u98" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">75</span></p><p style="font-size:10px;"><span style="font-size:10px;">RECIPES</span></p>
        </div>
      </div>

      <input id="u99" name="sp1" class="text" type="file" style="width: 160px"/>
      <input id="u101" name="sp2" class="text" type="file" style="width: 160px"/>
      <input id="u103" name="sp3" class="text" type="file" style="width: 160px"/>

      <!-- Unnamed (Text Area) -->
      <div id="u105" class="ax_text_area">
        <textarea id="u105_input" name="D" style="border-color: rgb(220,220,220)"></textarea>
      </div>

      <!-- Unnamed (Text Area) -->
      <div id="u106" class="ax_text_area">
        <textarea id="u106_input" name="s1" style="border-color: rgb(220,220,220)"></textarea>
      </div>

      <!-- Unnamed (Text Area) -->
      <div id="u107" class="ax_text_area">
        <textarea id="u107_input" name="s2" style="border-color: rgb(220,220,220)"></textarea>
      </div>

      <!-- Unnamed (Text Area) -->
      <div id="u108" class="ax_text_area">
        <textarea id="u108_input" name="s3" style="border-color: rgb(220,220,220)"></textarea>
      </div>
    </div>
    </form>
  </body>
</html>
