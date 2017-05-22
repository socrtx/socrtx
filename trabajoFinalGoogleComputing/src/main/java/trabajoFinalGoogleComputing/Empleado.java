package trabajoFinalGoogleComputing;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import java.lang.String;
import java.util.Date;

@Entity
public class Empleado {
	@Id public Long id;
	public String nombre;
	public String apellidos;
	public String centroTrabajo;
	public String horario;  
	public String dias;    
	public String direccion;
	public String email;
	public String telefono;
	@Index public Date date;

  public Empleado() {
    date = new Date();
  }

  public Empleado(String nombre, String apellidos, String centroTrabajo, String horario, String dias, String direccion, String email, String telefono) {
    this();

    this.nombre = nombre;
    this.apellidos = apellidos;
    this.centroTrabajo = centroTrabajo;
    this.horario = horario;
    this.dias = dias;    
    this.direccion = direccion;
    this.email = email;
    this.telefono = telefono;    

  }
}



