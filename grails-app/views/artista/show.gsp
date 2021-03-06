
<%@ page import="ar.edu.untdf.Artista" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'artista.label', default: 'Artista')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-artista" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-artista" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list artista">
			
				<g:if test="${artistaInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="artista.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${artistaInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="artista.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${artistaInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="artista.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${artistaInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="artista.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${artistaInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="artista.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${artistaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.categorias}">
				<li class="fieldcontain">
					<span id="categorias-label" class="property-label"><g:message code="artista.categorias.label" default="Categorias" /></span>
					
						<g:each in="${artistaInstance.categorias}" var="c">
						<span class="property-value" aria-labelledby="categorias-label"><g:link controller="categoria" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.obras}">
				<li class="fieldcontain">
					<span id="obras-label" class="property-label"><g:message code="artista.obras.label" default="Obras" /></span>
					
						<g:each in="${artistaInstance.obras}" var="o">
						<span class="property-value" aria-labelledby="obras-label"><g:link controller="obra" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${artistaInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="artista.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${artistaInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${artistaInstance?.id}" />
					<g:link class="edit" action="edit" id="${artistaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
