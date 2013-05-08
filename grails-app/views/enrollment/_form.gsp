<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'classEnroll', 'error')} required">
	<label for="classEnroll">
		<g:message code="enrollment.classEnroll.label" default="Class Enroll" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classEnroll" name="classEnroll.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${enrollmentInstance?.classEnroll?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'dateEnrolled', 'error')} required">
	<label for="dateEnrolled">
		<g:message code="enrollment.dateEnrolled.label" default="Date Enrolled" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateEnrolled" precision="day"  value="${enrollmentInstance?.dateEnrolled}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="enrollment.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.student?.id}" class="many-to-one"/>
</div>

