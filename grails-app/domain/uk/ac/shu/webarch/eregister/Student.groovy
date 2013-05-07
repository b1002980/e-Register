package uk.ac.shu.webarch.eregister

class Student {

	String studentName
	String studentNumber
	Set studt

	static hasMany=[studt:Enrollment, studt:RegisterEntry]
	static mappedBy=[studt:'student', studt:'student']

    static constraints = {
    }
}
