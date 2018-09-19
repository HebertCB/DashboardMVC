<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!--div class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid"></div-->
<div class="demo-graphs mdl-shadow--2dp mdl-color--white mdl-cell mdl-cell--8-col">
    <h3><spring:message code="update.pos.title" /></h3>
    <p><spring:message code="update.pos.message" arguments="2.0.1"/></p>
    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored">
        Update now
    </button>
</div>
<div class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
    <div class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
      <div class="mdl-card__title mdl-card--expand mdl-color--teal-300">
        <h2 class="mdl-card__title-text">Version 2.0.1</h2>
      </div>
      <div class="mdl-card__supporting-text mdl-color-text--grey-600">
        This update fixes some bugs and adds a new theme.
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect">Changelog</a>
      </div>
    </div>
    <div class="demo-separator mdl-cell--1-col"></div>
    <div class="demo-options mdl-card mdl-color--amber-600 mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--12-col-desktop">
      <div class="mdl-card__supporting-text mdl-color-text--blue-grey-50">
        <h3>Update options</h3>
        <ul>
          <li>
            <label for="chkbox1" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox1" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Notify me</span>
            </label>
          </li>
          <li>
            <label for="chkbox2" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox2" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Send me an email</span>
            </label>
          </li>
          <li>
            <label for="chkbox3" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox3" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Auto-update</span>
            </label>
          </li>
        </ul>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--blue-grey-50">Report a bug</a>
        <div class="mdl-layout-spacer"></div>
        <i class="material-icons">bug_report</i>
      </div>
    </div>
</div>
