<!DOCTYPE html>
<html>
  <head>
    <title>PERSONAL</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/personal/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/personal/data.js"></script>
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
          if ("${requestScope.upload}" == "true") {
        	  alert("Upload Succeeded!");
          }
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
    <div id="base" class="">

      <!-- Unnamed (Shape) -->
      <div id="u0" class="ax_shape">
        <img id="u0_img" class="img " src="images/personal/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- back2 (Shape) -->
      <div id="u2" class="ax_shape" data-label="back2">
        <img id="u2_img" class="img " src="images/personal/back2_u2.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- back1 (Shape) -->
      <div id="u4" class="ax_shape" data-label="back1">
        <img id="u4_img" class="img " src="images/personal/back1_u4.png"/>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- kitchenFrame (Inline Frame) -->
      <div id="u6" class="ax_inline_frame" data-label="kitchenFrame">
        <iframe id="u6_input" data-label="kitchenFrame" scrolling="auto" frameborder="0"></iframe>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_shape">
        <img id="u7_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span></span></p>
        </div>
        <div id="logout1" align="right" style="width: 60px;">
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <form name="search" action="search" method="post">
	      <div id="u9" class="ax_text_field">
	        <input id="u9_input" name="query" type="text" value="" placeholder="Search here"/>
	      </div>
      </form>

      <!-- Unnamed (Image) -->
      <div id="u10" class="ax_image">
        <a href="personal.jsp"><img id="u10_img" class="img " src="images/users/${user.userid}.png"/></a>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u12" class="ax_image" onclick="document.search.submit()">
        <img id="u12_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u13" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_paragraph">
        <img id="u14_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span>${user.realname }'s Kitchen</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u16" class="ax_shape" title="follow this person">
        <a href="upload.jsp"><img id="u16_img" class="img " src="images/recipe/u8.png"/></a>
        <!-- Unnamed () -->
        <div id="u17" class="text">
          <a href="upload.jsp"><p><span>Upload</span></p></a>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u18" class="ax_paragraph">
        <img id="u18_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u19" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">2.4k</span></p><p style="font-size:10px;"><span style="font-size:10px;">FOLLOWER</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u20" class="ax_paragraph">
        <img id="u20_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u21" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">75</span></p><p style="font-size:10px;"><span style="font-size:10px;">RECIPES</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u22" class="ax_shape">
        <img id="u22_img" class="img " src="images/personal/u22.png"/>
        <!-- Unnamed () -->
        <div id="u23" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u24" class="ax_h2">
        <img id="u24_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u25" class="text">
          <p><span>Sort</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u26" class="ax_shape">
        <img id="u26_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u27" class="text">
          <p><span>French toast</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u28" class="ax_shape">
        <img id="u28_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u29" class="text">
          <p><span>Duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u30" class="ax_shape">
        <img id="u30_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u31" class="text">
          <p><span>Indian style</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u32" class="ax_shape">
        <img id="u32_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u33" class="text">
          <p><span>Thai roasted duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u34" class="ax_shape">
        <img id="u34_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u35" class="text">
          <p><span>Dessert</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u36" class="ax_shape">
        <img id="u36_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u37" class="text">
          <p><span>Roasted Chicken</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u38" class="ax_h2">
        <img id="u38_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u39" class="text">
          <p><span>Alternative</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u40" class="ax_shape">
        <img id="u40_img" class="img " src="images/personal/u40.png"/>
        <!-- Unnamed () -->
        <div id="u41" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u42" class="ax_h2">
        <img id="u42_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u43" class="text">
          <p><span>Comment</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u44" class="ax_shape">
        <img id="u44_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u45" class="text">
          <p><span>The mango curry is reaaaaaally yummy!! </span></p><p><span>&nbsp;</span></p><p><span>- Jun</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u46" class="ax_shape">
        <img id="u46_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u47" class="text">
          <p><span>We enjoyed our dinner.</span></p><p><span>&nbsp;</span></p><p><span>- Lily</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u48" class="ax_shape">
        <img id="u48_img" class="img " src="images/home/u48.png"/>
        <!-- Unnamed () -->
        <div id="u49" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u50" class="ax_shape">
        <img id="u50_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u51" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u52" class="ax_shape">
        <img id="u52_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u53" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u54" class="ax_shape">
        <img id="u54_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u55" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u56" class="ax_paragraph">
        <img id="u56_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u57" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Contact Us</span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">1 (603) 123 - 1234</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">admin@idish.com</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u58" class="ax_paragraph">
        <img id="u58_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u59" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Privacy Policy</span></p><p style="font-size:6px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">Term Of Use</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u60" class="ax_paragraph">
        <img id="u60_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u61" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">© 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u62" class="ax_shape">
        <img id="u62_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u63" class="text">
          <p><span>Jun is satisfied.</span></p><p><span>&nbsp;</span></p><p><span>- Louis</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u64" class="ax_shape">
        <img id="u64_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u65" class="text">
          <p><span>....</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u66" class="ax_shape">
        <img id="u66_img" class="img " src="images/personal/u66.png"/>
        <!-- Unnamed () -->
        <div id="u67" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u68" class="ax_h2">
        <img id="u68_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u69" class="text">
          <p><span>Recipes</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u70" class="ax_shape">
        <img id="u70_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u71" class="text">
          <p><span>French Toast</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u72" class="ax_shape">
        <img id="u72_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u73" class="text">
          <p><span>Steve's Waffle</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u74" class="ax_shape">
        <img id="u74_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u75" class="text">
          <p><span>Thai</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u76" class="ax_shape">
        <img id="u76_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u77" class="text">
          <p><span>Chinese</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u78" class="ax_shape">
        <img id="u78_img" class="img " src="images/personal/u40.png"/>
        <!-- Unnamed () -->
        <div id="u79" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- favoriteFrame (Inline Frame) -->
      <div id="u80" class="ax_inline_frame" data-label="favoriteFrame">
        <iframe id="u80_input" data-label="likeFrame" scrolling="auto" frameborder="0"></iframe>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u81" class="ax_shape">
        <img id="u81_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u82" class="text">
          <p><span>My Recipes</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u83" class="ax_shape">
        <img id="u83_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u84" class="text">
          <p><span>My Favorites</span></p>
        </div>
      </div>
      
    </div>
  </body>
</html>
