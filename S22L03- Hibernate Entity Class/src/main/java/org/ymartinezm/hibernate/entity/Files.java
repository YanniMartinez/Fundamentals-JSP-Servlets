package org.ymartinezm.hibernate.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Le indicamos que se trata de una entidad y debe tener el mismo nombre
 * que la tabla que representa*/
@Entity(name="files")
@Table(name="files")
public class Files {
	
	/**Indicamos el ID y que es una columna*/
	@Id
	@Column(name="id")
	int id;
	@Column(name="file_name")
	String fileName;
	@Column(name="label")
	String label;
	@Column(name="caption")
	String caption;

	public Files() {
		
	}

	public Files(String fileName) {
		super();
		this.fileName = fileName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}
	
	
	
	
}
