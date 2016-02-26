<!DOCTYPE html>
<%@ page import="bean.User" %>
<html>
  <head>
    <title>RECIPE</title>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/recipe/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/recipe/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      var ifFav = 0;
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
	    	  document.getElementById("u95").style.visibility = "hidden";
	    	  document.getElementById("u102_input").style.visibility = "hidden";
	    	  document.getElementById("u103_input").style.visibility = "hidden";
        	  document.getElementById("u108_img").style.visibility = "visible";
        	  <%
        	  User user = (User) session.getAttribute("user");
        	  if (user != null && user.getFavorite().contains(Integer.valueOf(request.getParameter("id")))) {%>
        	      document.getElementById("u8").style.opacity = "0.75";
	        	  document.getElementById("u9").innerHTML = "Favorited";
	        	  ifFav = 1;
	    	  <%}%>
	      }
	      else {
		      var login = "${requestScope.login}";
	    	  if (login == "false") {
	    		  alert("Invalid Username and Password!");
	    	  }
	    	  document.getElementById("u95").style.visibility = "visible";
	    	  document.getElementById("u102_input").style.visibility = "visible";
	    	  document.getElementById("u103_input").style.visibility = "visible";
        	  document.getElementById("u108_img").style.visibility = "hidden";
        	  document.getElementById("pl").href = "javascript:void(0)";
        	  document.getElementById("pl2").href = "javascript:void(0)";
	      }
	      document.getElementById("u2_img").src = "images/recipes/" + "${recipelist[param.id].recipeid}" + ".png";
	      document.getElementById("u10_img").src = "images/recipes/" + "${recipelist[param.id].recipeid}" + "-1.png";
	      document.getElementById("u41_img").src = "images/recipes/" + "${recipelist[param.id].recipeid}" + "-2.png";
	      document.getElementById("u45_img").src = "images/recipes/" + "${recipelist[param.id].recipeid}" + "-3.png";
      }
      function over() {
    	  if (ifFav == 0) {
    	      document.getElementById("u8").style.opacity = "0.75";
        	  document.getElementById("u9").innerHTML = "Favor it!";
    	  }
    	  else {
    	      document.getElementById("u8").style.opacity = "1";
        	  document.getElementById("u9").innerHTML = "Cancel";
    	  }
      }
      function out() {
    	  if (ifFav == 0) {
    	      document.getElementById("u8").style.opacity = "1";
        	  document.getElementById("u9").innerHTML = "Favorite";
    	  }
    	  else {
    	      document.getElementById("u8").style.opacity = "0.75";
        	  document.getElementById("u9").innerHTML = "Favorited";
    	  }
      }
      function favor() {
    	  var user = "${sessionScope.user}";
    	  if (user == "") {
    		  alert("Login first!");
    		  return;
    	  }
    	  var tmp = document.createElement("form");
    	  tmp.action = "favor?id=" + "${param.id}";
    	  tmp.method = "post";
    	  document.body.appendChild(tmp);
    	  tmp.submit();
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
        <img id="u0_img" class="img " src="images/recipe/u0.png"/>
        <!-- Unnamed () -->
        <div id="u1" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u2" class="ax_image">
        <img id="u2_img" class="img " src="images/recipes/${recipelist[param.id].recipeid }.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u4" class="ax_h2">
        <img id="u4_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u5" class="text">
          <p><span>${recipelist[param.id].name }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u6" class="ax_paragraph">
        <img id="u6_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u7" class="text">
          <p style="font-size:28px;"><span style="font-size:28px;">${recipelist[param.id].score }</span></p><p style="font-size:10px;"><span style="font-size:10px;">SCORE</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u8" class="ax_shape" onmouseover="over()" onmouseout="out()" onclick="favor()">
        <img id="u8_img" class="img " src="images/recipe/u8.png"/>
        <!-- Unnamed () -->
        <div id="u9" class="text">
          <p><span>FAVORITE</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u10" class="ax_image">
        <img id="u10_img" class="img " src="images/recipe/u10.png"/>
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
          <p style="font-size:20px;"><span style="font-size:20px;">STEP 1</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:3px;">&nbsp;</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:13px;">${recipelist[param.id].steps[0] }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u14" class="ax_shape">
        <img id="u14_img" class="img " src="images/recipe/u14.png"/>
        <!-- Unnamed () -->
        <div id="u15" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u16" class="ax_h2">
        <img id="u16_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u17" class="text">
          <p><span>Sort</span></p>
        </div>
      </div>

      <!-- Unnamed (Table) -->
      <div id="u18" class="ax_table">

        <!-- Unnamed (Table Cell) -->
        <div id="u19" class="ax_table_cell">
          <img id="u19_img" class="img " src="images/recipe/u19.png"/>
          <!-- Unnamed () -->
          <div id="u20" class="text" style="z-index:2">
            <p><span>INGREDIENT</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u21" class="ax_table_cell">
          <img id="u21_img" class="img " src="images/recipe/u21.png"/>
          <!-- Unnamed () -->
          <div id="u22" class="text" style="visibility:visible">
            <p><span>AMOUNT</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u23" class="ax_table_cell">
          <img id="u23_img" class="img " src="images/recipe/u19.png"/>
          <!-- Unnamed () -->
          <div id="u24" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredients[0]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u25" class="ax_table_cell">
          <img id="u25_img" class="img " src="images/recipe/u21.png"/>
          <!-- Unnamed () -->
          <div id="u26" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredientsDes[0]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u27" class="ax_table_cell">
          <img id="u27_img" class="img " src="images/recipe/u19.png"/>
          <!-- Unnamed () -->
          <div id="u28" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredients[1]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u29" class="ax_table_cell">
          <img id="u29_img" class="img " src="images/recipe/u21.png"/>
          <!-- Unnamed () -->
          <div id="u30" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredientsDes[1]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u31" class="ax_table_cell">
          <img id="u31_img" class="img " src="images/recipe/u19.png"/>
          <!-- Unnamed () -->
          <div id="u32" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredients[2]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u33" class="ax_table_cell">
          <img id="u33_img" class="img " src="images/recipe/u21.png"/>
          <!-- Unnamed () -->
          <div id="u34" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredientsDes[2]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u35" class="ax_table_cell">
          <img id="u35_img" class="img " src="images/recipe/u35.png"/>
          <!-- Unnamed () -->
          <div id="u36" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredients[3]}</span></p>
          </div>
        </div>

        <!-- Unnamed (Table Cell) -->
        <div id="u37" class="ax_table_cell">
          <img id="u37_img" class="img " src="images/recipe/u37.png"/>
          <!-- Unnamed () -->
          <div id="u38" class="text" style="visibility:visible">
            <p><span>${recipelist[param.id].ingredientsDes[3]}</span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u39" class="ax_shape">
        <img id="u39_img" class="img " src="images/recipe/u39.png"/>
        <!-- Unnamed () -->
        <div id="u40" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u41" class="ax_image">
        <img id="u41_img" class="img " src="images/recipe/u10.png"/>
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
          <p style="font-size:20px;"><span style="font-size:20px;">STEP 2</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:3px;">&nbsp;</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:13px;">${recipelist[param.id].steps[1] }</span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u45" class="ax_image">
        <img id="u45_img" class="img " src="images/recipe/u10.png"/>
        <!-- Unnamed () -->
        <div id="u46" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u47" class="ax_paragraph">
        <img id="u47_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u48" class="text">
          <p style="font-size:20px;"><span style="font-size:20px;">STEP 3</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:3px;">&nbsp;</span><span style="font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-size:13px;">${recipelist[param.id].steps[2] }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u49" class="ax_h2">
        <img id="u49_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u50" class="text">
          <p><span>TIPS</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u51" class="ax_shape">
        <img id="u51_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u52" class="text">
          <p><span>Duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u53" class="ax_shape">
        <img id="u53_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u54" class="text">
          <p><span>Roasted</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u55" class="ax_shape">
        <img id="u55_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u56" class="text">
          <p><span>Thai</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u57" class="ax_shape">
        <img id="u57_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u58" class="text">
          <p><span>Thai roasted duck</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u59" class="ax_shape">
        <img id="u59_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u60" class="text">
          <p><span>Chinese</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u61" class="ax_shape">
        <img id="u61_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u62" class="text">
          <p><span>Roasted Chicken</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u63" class="ax_paragraph">
        <img id="u63_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u64" class="text">
          <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan .</span></p>
        </div>
      </div>

      <!-- Unnamed (Horizontal Line) -->
      <div id="u65" class="ax_horizontal_line">
        <img id="u65_start" class="img " src="resources/images/transparent.gif" alt="u65_start"/>
        <img id="u65_end" class="img " src="resources/images/transparent.gif" alt="u65_end"/>
        <img id="u65_line" class="img " src="images/recipe/u65_line.png" alt="u65_line"/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u66" class="ax_paragraph">
        <img id="u66_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u67" class="text">
          <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan .</span></p>
        </div>
      </div>

      <!-- Unnamed (Horizontal Line) -->
      <div id="u68" class="ax_horizontal_line">
        <img id="u68_start" class="img " src="resources/images/transparent.gif" alt="u68_start"/>
        <img id="u68_end" class="img " src="resources/images/transparent.gif" alt="u68_end"/>
        <img id="u68_line" class="img " src="images/recipe/u65_line.png" alt="u68_line"/>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u69" class="ax_paragraph">
        <img id="u69_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u70" class="text">
          <p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismo.</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u71" class="ax_shape">
        <img id="u71_img" class="img " src="images/home/u48.png"/>
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
      <div id="u75" class="ax_shape">
        <img id="u75_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u76" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u77" class="ax_shape">
        <img id="u77_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u78" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u79" class="ax_paragraph">
        <img id="u79_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u80" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Contact Us</span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">1 (603) 123 - 1234</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">admin@idish.com</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u81" class="ax_paragraph">
        <img id="u81_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u82" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Privacy Policy</span></p><p style="font-size:6px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">Term Of Use</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u83" class="ax_paragraph">
        <img id="u83_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u84" class="text">
          <p style="font-size:16px;"><span style="font-family:'Arial-BoldMT', 'Arial Bold', 'Arial';font-weight:700;font-size:16px;">Others</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:6px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">© 2017 Idish.com</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:13px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:3px;">&nbsp;</span><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:13px;"></span></p><p style="font-size:12px;"><span style="font-family:'ArialMT', 'Arial';font-weight:400;font-size:12px;">All Rights Reserved</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u85" class="ax_paragraph">
        <img id="u85_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u86" class="text">
          <p><span>${recipelist[param.id].description }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u87" class="ax_h2">
        <img id="u87_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u88" class="text">
          <p><span>Brief</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u89" class="ax_paragraph">
        <img id="u89_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u90" class="text">
          <p><span>Serves: ${recipelist[param.id].serve }</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u91" class="ax_h2">
        <img id="u91_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u92" class="text">
          <p><span>Alternative</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u93" class="ax_shape">
        <img id="u93_img" class="img " src="images/home/u62.png"/>
        <!-- Unnamed () -->
        <div id="u94" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u95" class="ax_shape" onclick="document.loginform.submit();" style="z-index:2">
        <img id="u95_img" class="img " src="images/home/u64.png"/>
        <!-- Unnamed () -->
        <div id="u96" class="text">
          <p><span>Sign In</span></p>
        </div>
      </div>

      <!-- Unnamed (Text Field) -->
      <form name="search" action="search" method="post">
      <div id="u97" class="ax_text_field">
        <input name="query" id="u97_input" type="text" value="" placeholder="Search here"/>
      </div>
      </form>

      <!-- Unnamed (Image) -->
      <div id="u98" class="ax_image">
        <a href="home.jsp"><img id="u98_img" class="img " src="images/home/u77.png"/></a>
        <!-- Unnamed () -->
        <div id="u99" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u100" class="ax_shape">
        <img id="u100_img" class="img " src="images/home/u67.png"/>
        <!-- Unnamed () -->
        <div id="u101" class="text">
          <p><span></span></p>
        </div>
      </div>

	<form name="loginform" action="login" method="post">
      <!-- Unnamed (Text Field) -->
      <div id="u102" class="ax_text_field">
        <input id="u102_input" name="username" type="text" value="" placeholder="username"/>
      </div>

      <!-- Unnamed (Text Field) -->
      <div id="u103" class="ax_text_field">
        <input id="u103_input" name="password" type="password" value="" placeholder="password"/>
      </div>
	</form>
      <!-- Unnamed (Shape) -->
      <div id="u104" class="ax_paragraph">
        <img id="u104_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u105" class="text">
          <p><span>Your sweetest cooking instructor.</span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u106" class="ax_paragraph">
        <img id="u106_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u107" class="text">
          <p><span id="name"><a id="pl2" href="personal.jsp">${user.realname}</a></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u108" class="ax_image" onclick="location.href='personal.jsp'">
        <a id="pl" href="personal.jsp"><img id="u108_img" class="img " src="images/users/${user.userid}.png"/></a>
        <!-- Unnamed () -->
        <div id="u109" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Image) -->
      <div id="u110" class="ax_image" onclick="document.search.submit()">
        <img id="u110_img" class="img " src="images/home/u79.png"/>
        <!-- Unnamed () -->
        <div id="u111" class="text">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (Shape) -->
      <div id="u112" class="ax_paragraph">
        <img id="u112_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u113" class="text">
          <p><span>idish</span></p>
        </div>
      </div>
    </div>
  </body>
</html>
