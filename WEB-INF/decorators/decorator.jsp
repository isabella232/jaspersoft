<%--
  ~ Copyright (C) 2005 - 2011 Jaspersoft Corporation. All rights reserved.
  ~ http://www.jaspersoft.com.
  ~
  ~ Unless you have purchased  a commercial license agreement from Jaspersoft,
  ~ the following license terms  apply:
  ~
  ~ This program is free software: you can redistribute it and/or  modify
  ~ it under the terms of the GNU Affero General Public License  as
  ~ published by the Free Software Foundation, either version 3 of  the
  ~ License, or (at your option) any later version.
  ~
  ~ This program is distributed in the hope that it will be useful,
  ~ but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
  ~ GNU Affero  General Public License for more details.
  ~
  ~ You should have received a copy of the GNU Affero General Public  License
  ~ along with this program. If not, see <http://www.gnu.org/licenses/>.
  --%>

<%@ page contentType="text/html" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/spring" prefix="spring"%>
<%@ taglib uri="/WEB-INF/jasperserver.tld" prefix="js" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<%@ page import="com.jaspersoft.jasperserver.war.webHelp.WebHelpLookup" %>
<%@ page import="com.jaspersoft.jasperserver.api.engine.common.service.impl.NavigationActionModelSupport" %>

<html>
    <head>
        <title>Jaspersoft: <decorator:title /></title>
        <meta http-equiv="Content-Type" content="text/html; charset=${requestScope['com.jaspersoft.ji.characterEncoding']}">
		<meta http-equiv="X-UA-Compatible" content="IE=8"/>
		<link rel="shortcut icon" href="favicon.ico" />
        <%@ include file="decoratorCommonImports.jsp" %>
        <decorator:head />
    </head>

    <body id="<decorator:getProperty property='body.id'/>" class="<decorator:getProperty property='body.class'/>">
		<a class="offLeft" href="#maincontent">Skip to main content</a> 
        <%@ include file="decoratorCommonComponents.jsp" %>

        <div id="frame" class="column decorated">
            <tiles:insertTemplate template="/WEB-INF/jsp/templates/utility_cosmetic.jsp"/>
            <div class="content">
               <div class="header">
                   <span class="cosmetic"></span>
                   <%--
                       We can cancel menu generation by passing following meta tag:
                       <meta name="noMenu" content="true">

                       This is necessary for example in analysis drill-down pop-up
                   --%>
                   <c:if test="${pageProperties['meta.noMenu']==null}">
                       <div id="mainNavigation" class="menu horizontal primaryNav">
                           <ul id="navigationOptions" data-tab-index="2" data-component-type="navigation">
                               <li id="main_home" tabIndex="-1" class="leaf"><p class="wrap button"><span class="icon"></span><spring:message code="menu.home"/></p></li>
                           </ul>
                       </div>
                   </c:if>
               </div><!--/#frame .header -->

            <!-- START decorated page content-->
            <decorator:body />
            <!-- END decorated page content -->

                <!-- <div class="footer"></div> --><!--/#frame .footer -->
            </div><!--/#frame .content -->
        </div><!--/#frame -->
        <div id="footer" class="footer">
            <a id="about" href="#"><spring:message code="decorator.aboutLink"/></a>
            <p id="copyright"><spring:message code="decorators.main.copyright"/></p>
        </div>

        <%--JavaScript which is common to all pages and requires JSTL access--%>
        <%@ include file="../jsp/modules/commonJSTLScripts.jsp" %>
    </body>
</html>






