<!DOCTYPE html>
<html>
  <head>
    <title>PERSONAL222</title>
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
          document.getElementById("u5_img").src = "images/users/" + "${user.userid}" + ".png";
          if ("${user.kitchen[0]}" == "") {
        	  document.getElementById("p0").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u17_img").src = "images/recipes/" + "${recipelist[user.kitchen[0]].recipeid}" + ".png";
        	  document.getElementById("u19").style.opacity = "0.75";
          }
          if ("${user.kitchen[1]}" == "") {
        	  document.getElementById("p1").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u25_img").src = "images/recipes/" + "${recipelist[user.kitchen[1]].recipeid}" + ".png";
        	  document.getElementById("u27").style.opacity = "0.75";
          }
          if ("${user.kitchen[2]}" == "") {
        	  document.getElementById("p2").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u33_img").src = "images/recipes/" + "${recipelist[user.kitchen[2]].recipeid}" + ".png";
        	  document.getElementById("u35").style.opacity = "0.75";
          }
          if ("${requestScope.upload}" == "true") {
        	  alert("Upload Succeeded!")
          }
      }
    </script>
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

      <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_shape">
        <img id="u2_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u4" class="ax_text_field">
        <input id="u4_input" type="text" value=""/>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u5" class="ax_image">
        <a href="personal.jsp"><img id="u5_img" class="img " src="images/personal/u5.png"/></a>
        <!-- Unnamed () -->
        <div id="u6" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u7" class="ax_image">
        <img id="u7_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u9" class="ax_paragraph">
        <img id="u9_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u10" class="text">
          <p><span>${user.realname}'s Kitchen</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u11" class="ax_shape">
        <a href="upload.jsp"><img id="u11_img" class="img " src="images/recipe/u8.png"/></a>
        <!-- Unnamed () -->
        <div id="u12" class="text">
          <p><span><a href="upload.jsp" style='text-decoration: none'>PUBLISH</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u13" class="ax_paragraph">
        <img id="u13_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u14" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">2.4k</span></p><p style="font-size:10px;"><span style="font-size:10px;">FOLLOWER</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u15" class="ax_paragraph">
        <img id="u15_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u16" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">75</span></p><p style="font-size:10px;"><span style="font-size:10px;">RECIPES</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u17" class="ax_image" >
        <a id="p0" href="recipe.jsp?id=${recipelist[user.kitchen[0]].recipeid }"><img id="u17_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u18" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u19" class="ax_shape" style="opacity:0">
        <img id="u19_img" class="img " src="images/personal/u19.png"/>
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
          <p><span>${recipelist[user.kitchen[0]].description}</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u23" class="ax_h2">
        <img id="u23_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span>${recipelist[user.kitchen[0]].name}</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u25" class="ax_image">
        <a id="p1" href="recipe.jsp?id=${recipelist[user.kitchen[1]].recipeid }"><img id="u25_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u26" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u27" class="ax_shape" style="opacity:0">
        <img id="u27_img" class="img " src="images/personal/u19.png"/>
        <!-- Unnamed () -->
        <div id="u28" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u29" class="ax_paragraph">
        <img id="u29_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u30" class="text">
          <p><span>${recipelist[user.kitchen[1]].description}</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u31" class="ax_h2">
        <img id="u31_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u32" class="text">
          <p><span style="font-family:'AppleGothic', 'AppleGothic';font-weight:400;">${recipelist[user.kitchen[1]].name}</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u33" class="ax_image">
        <a id="p2" href="recipe.jsp?id=${recipelist[user.kitchen[2]].recipeid }"><img id="u33_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u34" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u35" class="ax_shape" style="opacity:0">
        <img id="u35_img" class="img " src="images/personal/u19.png"/>
        <!-- Unnamed () -->
        <div id="u36" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u37" class="ax_paragraph">
        <img id="u37_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u38" class="text">
          <p><span>${recipelist[user.kitchen[2]].description}</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u39" class="ax_h2">
        <img id="u39_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u40" class="text">
          <p><span>${recipelist[user.kitchen[2]].name}</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u41" class="ax_shape">
        <img id="u41_img" class="img " src="images/personal/u41.png"/>
        <!-- Unnamed () -->
        <div id="u42" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u43" class="ax_h2">
        <img id="u43_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u44" class="text">
          <p><span>Sort</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u45" class="ax_shape">
        <img id="u45_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u46" class="text">
          <p><span>French toast</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u47" class="ax_shape">
        <img id="u47_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u48" class="text">
          <p><span>Duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u49" class="ax_shape">
        <img id="u49_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u50" class="text">
          <p><span>Indian style</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u51" class="ax_shape">
        <img id="u51_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u52" class="text">
          <p><span>Thai roasted duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u53" class="ax_shape">
        <img id="u53_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u54" class="text">
          <p><span>Dessert</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u55" class="ax_shape">
        <img id="u55_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u56" class="text">
          <p><span>Roasted Chicken</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u57" class="ax_h2">
        <img id="u57_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u58" class="text">
          <p><span>Alternative</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u59" class="ax_shape">
        <img id="u59_img" class="img " src="images/personal/u59.png"/>
        <!-- Unnamed () -->
        <div id="u60" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u61" class="ax_h2">
        <img id="u61_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u62" class="text">
          <p><span>Comment</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u63" class="ax_shape">
        <img id="u63_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u64" class="text">
          <p><span>The mango curry is reaaaaaally yummy!! </span></p><p><span>&nbsp;</span></p><p><span>- Jun</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u65" class="ax_shape">
        <img id="u65_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u66" class="text">
          <p><span>We enjoyed our dinner.</span></p><p><span>&nbsp;</span></p><p><span>- Lily</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u67" class="ax_shape">
        <img id="u67_img" class="img " src="images/home/u48.png"/>
        <!-- Unnamed () -->
        <div id="u68" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u69" class="ax_shape">
        <img id="u69_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u70" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u71" class="ax_shape">
        <img id="u71_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u72" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u73" class="ax_shape">
        <img id="u73_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u74" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u75" class="ax_paragraph">
        <img id="u75_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u76" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Contact Us</span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">1 (603) 123 - 1234</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">admin@idish.com</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u77" class="ax_paragraph">
        <img id="u77_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u78" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Privacy Policy</span></p><p style="font-size:6px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">Term Of Use</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u79" class="ax_paragraph">
        <img id="u79_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u80" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">© 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u81" class="ax_shape">
        <img id="u81_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u82" class="text">
          <p><span>Jun is satisfied.</span></p><p><span>&nbsp;</span></p><p><span>- Louis</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u83" class="ax_shape">
        <img id="u83_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u84" class="text">
          <p><span>....</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u85" class="ax_shape">
        <img id="u85_img" class="img " src="images/personal/u85.png"/>
        <!-- Unnamed () -->
        <div id="u86" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u87" class="ax_h2">
        <img id="u87_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u88" class="text">
          <p><span>Recipes</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u89" class="ax_shape">
        <img id="u89_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u90" class="text">
          <p><span>French Toast</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u91" class="ax_shape">
        <img id="u91_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u92" class="text">
          <p><span>Steve's Waffle</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u93" class="ax_shape">
        <img id="u93_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u94" class="text">
          <p><span>Thai</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u95" class="ax_shape">
        <img id="u95_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u96" class="text">
          <p><span>Chinese</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u97" class="ax_shape">
        <img id="u97_img" class="img " src="images/personal/u59.png"/>
        <!-- Unnamed () -->
        <div id="u98" class="text">
          <p><span></span></p>
        </div>
      </div>
    </div>
  </body>
</html>
