package entites;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "CLIENTS")
public class Client extends Personne implements Serializable {

  // constructeur par défaut
  public Client() {
  }

  // constructeur avec paramètres
  public Client(String titre, String nom, String prenom) {
    // parent
    super(titre, nom, prenom);
  }

  // constructeur par recopie
  public Client(Client client) {
    // parent
    super(client);
  }
}
