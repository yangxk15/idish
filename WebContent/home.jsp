<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/home/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/home/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      function check() {
    	  var userlist = "${sessionScope.userlist}"
    	  if (userlist == "") {
	    	  var tmp = document.createElement("form");
	    	  tmp.action = "load";
	    	  tmp.method = "post";
	    	  document.body.appendChild(tmp);
	    	  tmp.submit();
			  return;
    	  }
	      var user = "${sessionScope.user}";
	      if (user != "") {
	    	  document.getElementById("u64").style.visibility = "hidden";
	    	  document.getElementById("u69_input").style.visibility = "hidden";
	    	  document.getElementById("u70_input").style.visibility = "hidden";
        	  document.getElementById("u75_img").style.visibility = "visible";
	      }
	      else {
		      var login = "${requestScope.login}";
	    	  if (login == "false") {
	    		  alert("Invalid Username and Password!");
	    	  }
	    	  document.getElementById("u64").style.visibility = "visible";
	    	  document.getElementById("u69_input").style.visibility = "visible";
	    	  document.getElementById("u70_input").style.visibility = "visible";
        	  document.getElementById("u75_img").style.visibility = "hidden";
	      }
      }
    </script>
  </head>
  <body onload="check()">
    <div id="base" class="">

      <!-- Unnamed (Image) -->
      <div id="u0" class="ax_image">
        <a href="recipe.jsp?id=0"><img id="u0_img" class="img " src="images/recipes/0.png"/></a>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u2" class="ax_image">
        <a href="recipe.jsp?id=1"><img id="u2_img" class="img " src="images/recipes/1.png"/></a>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_shape">
        <img id="u4_img" class="img " src="images/home/u4.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u6" class="ax_paragraph">
        <img id="u6_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u7" class="text">
          <p><span>${recipelist[0].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_h2">
        <img id="u8_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p><span>${recipelist[0].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u10" class="ax_shape">
        <img id="u10_img" class="img " src="images/home/u10.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u12" class="ax_paragraph">
        <img id="u12_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u13" class="text">
          <p><span>${recipelist[1].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_h2">
        <img id="u14_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span>${recipelist[1].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u16" class="ax_image">
        <a href="recipe.jsp?id=2"><img id="u16_img" class="img " src="images/recipes/2.png"/></a>
        <!-- Unnamed () -->
        <div id="u17" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u18" class="ax_image">
        <a href="recipe.jsp?id=3"><img id="u18_img" class="img " src="images/recipes/3.png"/></a>
        <!-- Unnamed () -->
        <div id="u19" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u20" class="ax_shape">
        <img id="u20_img" class="img " src="images/home/u10.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u21" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u22" class="ax_paragraph">
        <img id="u22_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u23" class="text">
          <p><span>${recipelist[2].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u24" class="ax_h2">
        <img id="u24_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u25" class="text">
          <p><span>${recipelist[2].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u26" class="ax_shape">
        <img id="u26_img" class="img " src="images/home/u10.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u27" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u28" class="ax_paragraph">
        <img id="u28_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u29" class="text">
          <p><span>${recipelist[3].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u30" class="ax_h2">
        <img id="u30_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u31" class="text">
          <p><span>${recipelist[3].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u32" class="ax_image">
        <a href="recipe.jsp?id=4"><img id="u32_img" class="img " src="images/recipes/4.png"/></a>
        <!-- Unnamed () -->
        <div id="u33" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u34" class="ax_image">
        <a href="recipe.jsp?id=5"><img id="u34_img" class="img " src="images/recipes/5.png"/></a>
        <!-- Unnamed () -->
        <div id="u35" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u36" class="ax_shape">
        <img id="u36_img" class="img " src="images/home/u10.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u37" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u38" class="ax_paragraph">
        <img id="u38_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u39" class="text">
          <p><span>${recipelist[4].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u40" class="ax_h2">
        <img id="u40_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u41" class="text">
          <p><span>${recipelist[4].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u42" class="ax_shape">
        <img id="u42_img" class="img " src="images/home/u10.png" style="opacity:0.75"/>
        <!-- Unnamed () -->
        <div id="u43" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u44" class="ax_paragraph">
        <img id="u44_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u45" class="text">
          <p><span>${recipelist[5].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u46" class="ax_h2">
        <img id="u46_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u47" class="text">
          <p><span>${recipelist[5].name }</span></p>
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
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">� 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u62" class="ax_shape">
        <img id="u62_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u63" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u64" class="ax_shape" onclick="document.loginform.submit();" style="z-index:2">
        <img id="u64_img" class="img " src="images/home/u64.png"/>
        <!-- Unnamed () -->
        <div id="u65" class="text">
          <p><span>Sign In</span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <form name="search" action="search" method="post">
	      <div id="u66" class="ax_text_field">
	        <input name="query" id="u66_input" type="text" value="" placeholder="Search here"/>
	      </div>
	  </form>
      <!-- Unnamed (Shape) -->
      <div id="u67" class="ax_shape">
        <img id="u67_img" class="img " src="images/home/u67.png"/>
        <!-- Unnamed () -->
        <div id="u68" class="text">
          <p><span></span></p>
        </div>
      </div>
      
	  <form name="loginform" action="login" method="post">
	      <!-- Unnamed (Text Field) -->
	      <div id="u69" class="ax_text_field">
	        <input id="u69_input" name="username" type="text" value="" placeholder="username"/>
	      </div>
	
	      <!-- Unnamed (Text Field) -->
	      <div id="u70" class="ax_text_field">
	        <input id="u70_input" name="password" type="password" value="" placeholder="password"/>
	      </div>
      </form>

      <!-- Unnamed (Shape) -->
      <div id="u71" class="ax_paragraph">
        <img id="u71_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u72" class="text">
          <p><span>Your sweetest cooking instructor.</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u73" class="ax_paragraph">
        <img id="u73_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u74" class="text">
          <p><span id="name">${sessionScope.user.realname}</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u75" class="ax_image" onclick="location.href='personal.jsp'">
        <img id="u75_img" class="img " src="images/users/${user.userid}.png"/>
        <!-- Unnamed () -->
        <div id="u76" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u77" class="ax_image">
        <a href="home.jsp"><img id="u77_img" class="img " src="images/home/u77.png"/></a>
        <!-- Unnamed () -->
        <div id="u78" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u79" class="ax_image" onclick="document.search.submit()">
        <img id="u79_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u80" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u81" class="ax_paragraph">
        <img id="u81_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u82" class="text">
          <p><span>idish</span></p>
        </div>
      </div>
    </div>
  </body>
</html>
