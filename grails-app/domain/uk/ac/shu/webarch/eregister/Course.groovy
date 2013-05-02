package uk.ac.shu.webarch.eregister

class Course {

	String courseName
	Set regClasses

	static hasMany=[regClasses:RegClass]
	static mappedBy=[regClasses:'course']
	
    static constraints = {
    }
}
