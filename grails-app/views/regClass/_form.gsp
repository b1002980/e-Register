<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classID', 'error')} ">
	<label for="classID">
		<g:message code="regClass.classID.label" default="Class ID" />
		
	</label>
	<g:textField name="classID" value="${regClassInstance?.classID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classReg', 'error')} ">
	<label for="classReg">
		<g:message code="regClass.classReg.label" default="Class Reg" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.classReg?}" var="c">
    <li><g:link controller="enrollment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="regClass.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${regClassInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'toughtBy', 'error')} required">
	<label for="toughtBy">
		<g:message code="regClass.toughtBy.label" default="Tought By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="toughtBy" name="toughtBy.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.toughtBy?.id}" class="many-to-one"/>
</div>

