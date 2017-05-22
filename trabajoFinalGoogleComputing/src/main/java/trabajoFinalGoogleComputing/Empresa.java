package trabajoFinalGoogleComputing;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;
import java.lang.String;
import java.util.Date;

@Entity
public class Empresa {
  @Id public Long id;
  public String empresa;
  public String direccion;
  public String cp;
  public String poblacion;
  public String provincia;
  public String actividad;
  public String email;
  public String telefono;
  @Index public Date date;

  public Empresa() {
    date = new Date();
  }

  public Empresa(String empresa, String direccion, String cp, String poblacion, String provincia, String actividad, String email, String telefono) {
    this();

    this.empresa = empresa;
    this.direccion = direccion;
    this.cp = cp;
    this.poblacion = poblacion;
    this.provincia = provincia;
    this.actividad = actividad;
    this.email = email;
    this.telefono = telefono;    

  }
}
