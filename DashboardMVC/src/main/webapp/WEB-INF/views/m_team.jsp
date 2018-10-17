<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="demo-table mdl-shadow--2dp mdl-color--white mdl-cell mdl-cell--8-col"> 
    <c:if test="${!empty listaUsuario}">
        <table class="mdl-data-table mdl-js-data-table">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">Name</th>
              <th class="mdl-data-table__cell--non-numeric">Email</th>
              <th class="mdl-data-table__cell--non-numeric">Username</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${listaUsuario}" var="usuario">
                <tr>
                  <td class="mdl-data-table__cell--non-numeric">${usuario.nombres.concat(" ")}${usuario.apellidos}</td>
                  <td class="mdl-data-table__cell--non-numeric">${usuario.correo}</td>
                  <td class="mdl-data-table__cell--non-numeric">${usuario.nusuario}</td>
                </tr>
            </c:forEach>
          </tbody>
        </table>
    </c:if>
    <c:if test="${empty listaUsuario}">
        <p style="padding: 32px;">No users registered yet.</p>
    </c:if>
</div>

<div class="demo-cards mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-grid mdl-grid--no-spacing">
    <div class="demo-updates mdl-card mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--12-col-desktop">
        <div class="mdl-color--teal-300 title-card" >
            Agregar...
        </div>
      <form action="#" class="formu">
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="text" id="nombres">
          <label class="mdl-textfield__label" for="sample3">Name</label>
        </div>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="text" id="nombres">
          <label class="mdl-textfield__label" for="sample3">Last name</label>
        </div>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="text" id="nombres">
          <label class="mdl-textfield__label" for="sample3">Email</label>
        </div>
        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
          <input class="mdl-textfield__input" type="text" id="nombres">
          <label class="mdl-textfield__label" for="sample3">Username</label>
        </div>
        <button id="demo-show-toast" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored" type="button">
            <i class="material-icons">add</i>
        </button>
      </form>     
    </div>
    <div class="demo-separator mdl-cell--1-col"></div>
    <div class="demo-options mdl-card mdl-color--amber-600 mdl-shadow--2dp mdl-cell mdl-cell--4-col mdl-cell--3-col-tablet mdl-cell--12-col-desktop">
      <div class="mdl-card__supporting-text mdl-color-text--blue-grey-50">
        <h3>View options</h3>
        <ul>
          <li>
            <label for="chkbox1" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox1" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Frequent users</span>
            </label>
          </li>
          <li>
            <label for="chkbox2" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox2" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Active users</span>
            </label>
          </li>
          <li>
            <label for="chkbox3" class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect">
              <input type="checkbox" id="chkbox3" class="mdl-checkbox__input">
              <span class="mdl-checkbox__label">Inactive users</span>
            </label>
          </li>
        </ul>
      </div>
      <div class="mdl-card__actions mdl-card--border">
        <a href="#" class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-color-text--blue-grey-50">Monitor a user</a>
        <div class="mdl-layout-spacer"></div>
        <i class="material-icons">visibility</i>
      </div>
    </div>
</div>

<div id="demo-toast-example" class="mdl-js-snackbar mdl-snackbar">
  <div class="mdl-snackbar__text"></div>
  <button class="mdl-snackbar__action" type="button"></button>
</div>
<script>
(function() {
  'use strict';
  window['counter'] = 0;
  var snackbarContainer = document.querySelector('#demo-toast-example');
  var showToastButton = document.querySelector('#demo-show-toast');
  showToastButton.addEventListener('click', function() {
    'use strict';
    var data = {message: 'This option is not functional for now. #' + ++counter};
    snackbarContainer.MaterialSnackbar.showSnackbar(data);
  });
}());
</script>