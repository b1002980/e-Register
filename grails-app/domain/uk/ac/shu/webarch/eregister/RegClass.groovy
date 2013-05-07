package uk.ac.shu.webarch.eregister

class RegClass {

	Course course
	Instructor toughtBy
	String classID
	Set classReg

	static hasMany=[classReg:RegistrationSheet, classReg:Enrollment]
	static mappedBy=[classReg:'regClass', classReg:'classEnroll']

    static constraints = {
    }
}
