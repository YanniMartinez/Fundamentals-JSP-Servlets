package org.ymartinezm.beans;
/**
 * Un Bean en Java es una clase entidad que se encarga de 
 * tener propiedades, m�todos y dem�s los cuales comunicar�n
 * con la persistencia
 * Siempre tendr� un constructor por defecto, getters y setters*/

public class User {
	String firstName;
	String lastName;
	
	public User() {
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	
	
}
