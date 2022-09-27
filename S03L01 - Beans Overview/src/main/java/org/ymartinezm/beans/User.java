package org.ymartinezm.beans;
/**
 * Un Bean en Java es una clase entidad que se encarga de 
 * tener propiedades, métodos y demás los cuales comunicarán
 * con la persistencia
 * Siempre tendrá un constructor por defecto, getters y setters*/

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
