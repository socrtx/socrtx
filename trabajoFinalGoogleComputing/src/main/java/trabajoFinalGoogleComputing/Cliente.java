package trabajoFinalGoogleComputing;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import java.lang.String;
import java.util.Date;

@Entity
public class Cliente {
	@Id public Long id;
	public String nifcif;
	public String nombre;
	public String apellidos;
	public String direccion;
	public String email;
	public String telefono;
	public String notas;
	@Index public Date date;

  public Cliente() {
    date = new Date();
  }

  public Cliente(String nifcif, String nombre, String apellidos, String direccion, String email, String telefono, String notas) {
    this();
    this.nifcif = nifcif;
    this.nombre = nombre;
    this.apellidos = apellidos;
    this.direccion = direccion;
    this.email = email;
    this.telefono = telefono;    
    this.notas = notas;       

  }
}
