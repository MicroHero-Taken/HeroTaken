<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" >
    <head>
    <title>Taken</title>
        <meta charset="utf-8" />
        <link href="../css/main.css" rel="stylesheet" type="text/css" />
    </head>  
    <body>
            <div id="Garage">Garage</div>        
        
                
        <div class="pss_main"> <!-- main parallax scrolling slider object -->
            <input id="r_1" type="radio" name="p" class="sel_page_1" style="display: none" checked="checked" /> <!-- hidden radios -->
            <input id="r_2" type="radio" name="p" class="sel_page_2" style="display: none" />
            <input id="r_3" type="radio" name="p" class="sel_page_3" style="display: none" />
            <input id="r_4" type="radio" name="p" class="sel_page_4" style="display: none" />
            <input id="r_5" type="radio" name="p" class="sel_page_5" style="display: none" />
            <input id="r_6" type="radio" name="p" class="sel_page_6" style="display: none" />
            <input id="r_7" type="radio" name="p" class="sel_page_7" style="display: none" />

<!--             <label for="r_1" class="pss_contr c1"></label> controls -->
<!--             <label for="r_2" class="pss_contr c2"></label> -->
<!--             <label for="r_3" class="pss_contr c3"></label> -->
<!--             <label for="r_4" class="pss_contr c4"></label> -->
<!--             <label for="r_5" class="pss_contr c5"></label>  -->
<!--             <label for="r_6" class="pss_contr c6"></label> -->
<!--             <label for="r_7" class="pss_contr c7"></label> -->
            
            <c:forEach var="i" begin="1" end="${count}">
            	<label for="r_${i}" class="pss_contr c${i}"></label>
            </c:forEach>
          
            <div class="pss_slides">
                <div class="pss_background"></div>
                <ul> <!-- slides -->
                <c:forEach var="memberHero" items="${memberHero}">
                	<li><img src="${pageContext.request.contextPath}/Garage?heroNo=${memberHero.heroNo}"  />
                        <form action="<c:url value="/ChangeHeroSkin"/>">
                        	<div>Name: <input type="hidden" name="heroName" value="${memberHero.heroName}">${memberHero.heroName} <br><br>
                        	<input type="submit" style="width: 100px"  value="Replace" id="replace"/>
                        </form>
                        </div>
                    </li>
                </c:forEach>    
                </ul>
          </div>
        </div>
    </body>
</html>
                