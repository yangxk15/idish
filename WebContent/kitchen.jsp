<!DOCTYPE html>
<html>
  <head>
    <base target="_parent" />
    <title>Kitchen (Actually Favorite)</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/upload/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/upload/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      function check() {
          if ("${user.favorite[0]}" == "") {
        	  document.getElementById("p0").href = "javascript:void(0)";
        	  document.getElementById("p00").href = "javascript:void(0)";
        	  document.getElementById("p000").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u2_img").src = "images/recipes/" + "${recipelist[user.favorite[0]].recipeid}" + ".png";
        	  document.getElementById("u4").style.opacity = "0.75";
          }
          if ("${user.favorite[1]}" == "") {
        	  document.getElementById("p1").href = "javascript:void(0)";
        	  document.getElementById("p11").href = "javascript:void(0)";
        	  document.getElementById("p111").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u10_img").src = "images/recipes/" + "${recipelist[user.favorite[1]].recipeid}" + ".png";
        	  document.getElementById("u12").style.opacity = "0.75";
          }
          if ("${user.favorite[2]}" == "") {
        	  document.getElementById("p2").href = "javascript:void(0)";
        	  document.getElementById("p22").href = "javascript:void(0)";
        	  document.getElementById("p222").href = "javascript:void(0)";
          }
          else {
        	  document.getElementById("u18_img").src = "images/recipes/" + "${recipelist[user.favorite[2]].recipeid}" + ".png";
        	  document.getElementById("u20").style.opacity = "0.75";
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
        <img id="u0_img" class="img " src="images/favorite/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u2" class="ax_image">
        <a id="p0" href="recipe.jsp?id=${recipelist[user.favorite[0]].recipeid}"><img id="u2_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_shape" style="opacity: 0">
        <img id="u4_img" class="img " src="images/favorite/u4.png"/>
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
          <p><span><a id="p00" href="recipe.jsp?id=${recipelist[user.favorite[0]].recipeid}">${recipelist[user.favorite[0]].description}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_h2">
        <img id="u8_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p><span><a id="p000" href="recipe.jsp?id=${recipelist[user.favorite[0]].recipeid}">${recipelist[user.favorite[0]].name}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u10" class="ax_image">
        <a id="p1" href="recipe.jsp?id=${recipelist[user.favorite[1]].recipeid}"><img id="u10_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u11" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u12" class="ax_shape" style="opacity: 0">
        <img id="u12_img" class="img " src="images/favorite/u4.png"/>
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
          <p><span><a id="p11" href="recipe.jsp?id=${recipelist[user.favorite[1]].recipeid}">${recipelist[user.favorite[1]].description}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u16" class="ax_h2">
        <img id="u16_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u17" class="text">
          <p><span style="font-family:'AppleGothic', 'AppleGothic';font-weight:400;"><a id="p111" href="recipe.jsp?id=${recipelist[user.favorite[1]].recipeid}">${recipelist[user.favorite[1]].name}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u18" class="ax_image">
        <a id="p2" href="recipe.jsp?id=${recipelist[user.favorite[2]].recipeid}"><img id="u18_img" class="img " src="images/recipe/u37.png"/></a>
        <!-- Unnamed () -->
        <div id="u19" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u20" class="ax_shape" style="opacity: 0">
        <img id="u20_img" class="img " src="images/favorite/u4.png"/>
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
          <p><span><a id="p22" href="recipe.jsp?id=${recipelist[user.favorite[2]].recipeid}">${recipelist[user.favorite[2]].description}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u24" class="ax_h2">
        <img id="u24_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u25" class="text">
          <p><span><a id="p222" href="recipe.jsp?id=${recipelist[user.favorite[2]].recipeid}">${recipelist[user.favorite[2]].name}</a></span></p>
        </div>
      </div>
    </div>
  </body>

</html>
