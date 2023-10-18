package com.jacaranda.model;

import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table (name="Cine")
public class Cinema {
	@Id
	@Column(name="cine")
	private String cinema;
	@Column(name="ciudad_cine")
	private String cityCinema;
	@Column(name="direccion_cine")
	private String addressCinema;
	
	public Cinema(String cine, String ciudadCine, String direccionCine) {
		super();
		this.cinema = cine;
		this.cityCinema = ciudadCine;
		this.addressCinema = direccionCine;
	}

	public Cinema() {
		super();
	
	}

	public String getCinema() {
		return cinema;
	}

	public void setCinema(String cinema) {
		this.cinema = cinema;
	}

	public String getCityCinema() {
		return cityCinema;
	}

	public void setCityCinema(String cityCinema) {
		this.cityCinema = cityCinema;
	}

	public String getAddressCinema() {
		return addressCinema;
	}

	public void setAddressCinema(String addressCinema) {
		this.addressCinema = addressCinema;
	}

	@Override
	public int hashCode() {
		return Objects.hash(cinema);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cinema other = (Cinema) obj;
		return Objects.equals(cinema, other.cinema);
	}

	@Override
	public String toString() {
		return "Cine [cine=" + cinema + ", ciudadCine=" + cityCinema + ", direccionCine=" + addressCinema + "]";
	}
	
	
}
