<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<div class="demo-drawer mdl-layout__drawer mdl-color--blue-grey-900 mdl-color-text--blue-grey-50">
    <header class="demo-drawer-header">
      <img src="resources/images/user.jpg" class="demo-avatar">
      <div class="demo-avatar-dropdown">
        <span>hello@example.com</span>
        <div class="mdl-layout-spacer"></div>
        <button id="accbtn" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon">
          <i class="material-icons" role="presentation">arrow_drop_down</i>
          <span class="visuallyhidden">Accounts</span>
        </button>
        <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect" for="accbtn">
          <li class="mdl-menu__item">hello@example.com</li>
          <li class="mdl-menu__item">info@example.com</li>
          <li class="mdl-menu__item"><i class="material-icons">add</i>Add another account...</li>
        </ul>
      </div>
    </header>
    <spring:message code="menu.sections" var="secs"/>
    <c:set var = "sections" value = "${secs.split(',')}"/>
    
    <nav class="demo-navigation mdl-navigation mdl-color--blue-grey-800">
        <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">home</i>${sections[0]}</a>
      <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/inbox"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">inbox</i>${sections[1]}</a>      
      <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/updates"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">flag</i>${sections[2]}</a>      
      <a class="mdl-navigation__link" href="${pageContext.request.contextPath}/team"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">people</i>${sections[3]}</a>
      <a class="mdl-navigation__link" href="#"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">delete</i>${sections[4]}</a>
      <a class="mdl-navigation__link" href="#"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">report</i>${sections[5]}</a>
      <a class="mdl-navigation__link" href="#"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">forum</i>${sections[6]}</a>
      <a class="mdl-navigation__link" href="#"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">local_offer</i>${sections[7]}</a>
      <a class="mdl-navigation__link" href="#"><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">shopping_cart</i>${sections[8]}</a>
      <div class="mdl-layout-spacer"></div>
      <a class="mdl-navigation__link" href=""><i class="mdl-color-text--blue-grey-400 material-icons" role="presentation">help_outline</i><span class="visuallyhidden">Help</span></a>
    </nav>
</div>

