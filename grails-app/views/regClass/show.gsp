
<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'regClass.label', default: 'RegClass')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-regClass" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-regClass" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list regClass">
			
				<g:if test="${regClassInstance?.classID}">
				<li class="fieldcontain">
					<span id="classID-label" class="property-label"><g:message code="regClass.classID.label" default="Class ID" /></span>
					
						<span class="property-value" aria-labelledby="classID-label"><g:fieldValue bean="${regClassInstance}" field="classID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.classReg}">
				<li class="fieldcontain">
					<span id="classReg-label" class="property-label"><g:message code="regClass.classReg.label" default="Class Reg" /></span>
					
						<g:each in="${regClassInstance.classReg}" var="c">
						<span class="property-value" aria-labelledby="classReg-label"><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="regClass.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${regClassInstance?.course?.id}">${regClassInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regClassInstance?.toughtBy}">
				<li class="fieldcontain">
					<span id="toughtBy-label" class="property-label"><g:message code="regClass.toughtBy.label" default="Tought By" /></span>
					
						<span class="property-value" aria-labelledby="toughtBy-label"><g:link controller="instructor" action="show" id="${regClassInstance?.toughtBy?.id}">${regClassInstance?.toughtBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${regClassInstance?.id}" />
					<g:link class="edit" action="edit" id="${regClassInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
