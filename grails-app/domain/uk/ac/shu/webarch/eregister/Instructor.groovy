package uk.ac.shu.webarch.eregister

class Instructor {

	String name
	String staffID
	String classteach
	Set instructorClass

	static hasMany=[instructorClass:RegClass]
	static mappedBy=[instructorClass:'toughtBy']

    static constraints = {
    }
}
