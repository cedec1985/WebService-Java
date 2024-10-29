package entites;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "MEDECINS")
public class Medecin extends Personne implements Serializable {

  // constructeur par défaut
  public Medecin() {
  }

  // constructeur avec paramètres
  public Medecin(String titre, String nom, String prenom) {
    // parent
    super(titre, nom, prenom);
  }

  // constructeur par recopie
  public Medecin(Medecin medecin) {
    // parent
    super(medecin);
  }
}
