<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'classReg', 'error')} required">
	<label for="classReg">
		<g:message code="registrationSheet.classReg.label" default="Class Reg" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classReg" name="classReg.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${registrationSheetInstance?.classReg?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'regEntry', 'error')} ">
	<label for="regEntry">
		<g:message code="registrationSheet.regEntry.label" default="Reg Entry" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.regEntry?}" var="r">
    <li><g:link controller="registerEntry" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

