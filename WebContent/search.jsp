<!DOCTYPE html>
<html>
  <head>
    <title>SEARCH</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/search/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/search/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      function check() {
    	  var userlist = "${sessionScope.userlist}";
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
	    	  document.getElementById("u2").style.visibility = "hidden";
	    	  document.getElementById("u9_input").style.visibility = "hidden";
	    	  document.getElementById("u10_input").style.visibility = "hidden";
        	  document.getElementById("u15_img").style.visibility = "visible";
	      }
	      else {
		      var login = "${requestScope.login}";
	    	  if (login == "false") {
	    		  alert("Invalid Username and Password!");
	    	  }
	    	  document.getElementById("u2").style.visibility = "visible";
	    	  document.getElementById("u9_input").style.visibility = "visible";
	    	  document.getElementById("u10_input").style.visibility = "visible";
        	  document.getElementById("u15_img").style.visibility = "hidden";
        	  document.getElementById("pl").href = "javascript:void(0)";
        	  document.getElementById("pl2").href = "javascript:void(0)";
	      }
	      if ("${resultlist}" == "" || "${resultlist[0]}" == "") {
	    	  document.getElementById("u61").style.visibility = "hidden";
	    	  document.getElementById("first").innerHTML = "No result found."
		      document.getElementById("a01").href = "javascript:void(0)";
	      }
	      if ("${resultlist[1]}" == "") {
	    	  document.getElementById("u17").style.visibility = "hidden";
		      document.getElementById("a11").href = "javascript:void(0)";
	      }
	      if ("${resultlist[2]}" == "") {
	    	  document.getElementById("u19").style.visibility = "hidden";
		      document.getElementById("a21").href = "javascript:void(0)";
	      }
	      if ("${resultlist[3]}" == "") {
	    	  document.getElementById("u21").style.visibility = "hidden";
		      document.getElementById("a31").href = "javascript:void(0)";
	      }
	      if ("${resultlist[4]}" == "") {
	    	  document.getElementById("u67").style.visibility = "hidden";
		      document.getElementById("a41").href = "javascript:void(0)";
	      }
	      if ("${resultlist[5]}" == "") {
	    	  document.getElementById("u73").style.visibility = "hidden";
		      document.getElementById("a51").href = "javascript:void(0)";
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
        <img id="u0_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u2" class="ax_shape" onclick="document.loginform.submit();" style="z-index:2">
        <img id="u2_img" class="img " src="images/home/u64.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span>Sign In</span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      
      <form name="search" action="search" method="post">
      <div id="u4" class="ax_text_field">
        <input name="query" id="u4_input" type="text" value="${query }" placeholder="Search here"/>
      </div>
      </form>

      <!-- Unnamed (Image) -->
      <div id="u5" class="ax_image" onclick="document.search.submit()">
        <img id="u5_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u6" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u7" class="ax_shape">
        <img id="u7_img" class="img " src="images/home/u67.png"/>
        <!-- Unnamed () -->
        <div id="u8" class="text">
          <p><span></span></p>
        </div>
      </div>

	  <form name="loginform" action="login" method="post">
      <!-- Unnamed (Text Field) -->
      <div id="u9" class="ax_text_field">
        <input id="u9_input" type="text" value="" name="username" placeholder="username"/>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u10" class="ax_text_field">
        <input id="u10_input" type="password" value="" name="password" placeholder="password"/>
      </div>
      </form>

      <!-- Unnamed (Shape) -->
      <div id="u11" class="ax_paragraph">
        <img id="u11_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u12" class="text">
          <p><span>Your sweetest cooking instructor.</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u13" class="ax_paragraph">
        <img id="u13_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u14" class="text">
          <p><span><a id="pl2" href="personal.jsp">${user.realname }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u15" class="ax_image">
        <a id="pl" href="personal.jsp"><img id="u15_img" class="img " src="images/users/${user.userid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u16" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u17" class="ax_image">
        <a id="a11" href="recipe.jsp?id=${resultlist[1].recipeid }"><img id="u17_img" class="img " src="images/recipes/${resultlist[1].recipeid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u18" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u19" class="ax_image">
        <a id="a21" href="recipe.jsp?id=${resultlist[2].recipeid }"><img id="u19_img" class="img " src="images/recipes/${resultlist[2].recipeid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u20" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u21" class="ax_image">
        <a id="a31" href="recipe.jsp?id=${resultlist[3].recipeid }"><img id="u21_img" class="img " src="images/recipes/${resultlist[3].recipeid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u22" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u23" class="ax_shape">
        <img id="u23_img" class="img " src="images/recipe/u14.png"/>
        <!-- Unnamed () -->
        <div id="u24" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u25" class="ax_h2">
        <img id="u25_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u26" class="text">
          <p><span>Related</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u27" class="ax_shape">
        <img id="u27_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u28" class="text">
          <p><span>Thai Food</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u29" class="ax_shape">
        <img id="u29_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u30" class="text">
          <p><span>Roasted</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u31" class="ax_shape">
        <img id="u31_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u32" class="text">
          <p><span>Thai Tea</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u33" class="ax_shape">
        <img id="u33_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u34" class="text">
          <p><span>Chinese</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u35" class="ax_shape">
        <img id="u35_img" class="img " src="images/home/u48.png"/>
        <!-- Unnamed () -->
        <div id="u36" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u37" class="ax_shape">
        <img id="u37_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u38" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u39" class="ax_shape">
        <img id="u39_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u40" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u41" class="ax_shape">
        <img id="u41_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u42" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u43" class="ax_paragraph">
        <img id="u43_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u44" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Contact Us</span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">1 (603) 123 - 1234</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">admin@idish.com</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u45" class="ax_paragraph">
        <img id="u45_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u46" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Privacy Policy</span></p><p style="font-size:6px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">Term Of Use</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u47" class="ax_paragraph">
        <img id="u47_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u48" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">© 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u49" class="ax_paragraph">
        <img id="u49_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u50" class="text">
          <p><span><a id="a12" href="recipe.jsp?id=${resultlist[1].recipeid }">${resultlist[1].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u51" class="ax_shape">
        <img id="u51_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u52" class="text" style="width: 500px">
          <p><span><a id="a13" href="recipe.jsp?id=${resultlist[1].recipeid }">${resultlist[1].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u53" class="ax_paragraph">
        <img id="u53_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u54" class="text">
          <p><span><a id="a22" href="recipe.jsp?id=${resultlist[2].recipeid }">${resultlist[2].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u55" class="ax_shape">
        <img id="u55_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u56" class="text" style="width: 500px">
          <p><span><a id="a23" href="recipe.jsp?id=${resultlist[2].recipeid }">${resultlist[2].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u57" class="ax_paragraph">
        <img id="u57_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u58" class="text">
          <p><span><a id="a32" href="recipe.jsp?id=${resultlist[3].recipeid }">${resultlist[3].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u59" class="ax_shape">
        <img id="u59_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u60" class="text" style="width: 500px">
          <p><span><a id="a33" href="recipe.jsp?id=${resultlist[3].recipeid }">${resultlist[3].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u61" class="ax_image">
        <a id="a01" href="recipe.jsp?id=${resultlist[0].recipeid }"><img id="u61_img" class="img " src="images/recipes/${resultlist[0].recipeid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u62" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u63" class="ax_shape">
        <img id="u63_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u64" class="text" style="width: 500px">
          <p><span id="first"><a id="a02" href="recipe.jsp?id=${resultlist[0].recipeid }">${resultlist[0].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u65" class="ax_paragraph">
        <img id="u65_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u66" class="text">
          <p><span><a id="a03" href="recipe.jsp?id=${resultlist[0].recipeid }">${resultlist[0].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u67" class="ax_image">
        <a id="a41" href="recipe.jsp?id=${resultlist[4].recipeid }"><img id="u67_img" class="img " src="images/recipes/${resultlist[4].recipeid }.png"/></a>
        <!-- Unnamed () -->
        <div id="u68" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u69" class="ax_paragraph">
        <img id="u69_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u70" class="text">
          <p><span><a id="a42" href="recipe.jsp?id=${resultlist[4].recipeid }">${resultlist[4].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u71" class="ax_shape">
        <img id="u71_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u72" class="text" style="width: 500px">
          <p><span><a id="a43" href="recipe.jsp?id=${resultlist[4].recipeid }">${resultlist[4].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u73" class="ax_image">
        <a id="a51" href="recipe.jsp?id=${resultlist[5].recipeid }"><img id="u73_img" class="img " src="images/recipes/${resultlist[5].recipeid }.png"/></a>
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
          <p><span><a id="a52" href="recipe.jsp?id=${resultlist[5].recipeid }">${resultlist[5].description }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u77" class="ax_shape">
        <img id="u77_img" class="img " src="images/search/u51.png"/>
        <!-- Unnamed () -->
        <div id="u78" class="text" style="width: 500px">
          <p><span><a id="a53" href="recipe.jsp?id=${resultlist[5].recipeid }">${resultlist[5].name }</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u79" class="ax_image">
        <a href="home.jsp"><img id="u79_img" class="img " src="images/home/u77.png"/></a>
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
