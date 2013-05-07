package uk.ac.shu.webarch.eregister

class RegistrationSheet {

	RegClass classReg
	Set regEntry

	static hasMany=[regEntry:RegisterEntry]
	static mappedBy=[regEntry:'regSheet']
	

    static constraints = {
    }
}
