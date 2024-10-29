package entites;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "RV")
public class Rv implements Serializable {
  // caractéristiques

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "ID")
  private Long id;
  @Column(name = "JOUR", nullable = false)
  @Temporal(TemporalType.DATE)
  private Date jour;
  @ManyToOne
  @JoinColumn(name = "ID_CLIENT", nullable = false)
  private Client client;
  @ManyToOne
  @JoinColumn(name = "ID_CRENEAU", nullable = false)
  private Creneau creneau;

  // constructeur par défaut
  public Rv() {
  }

  // constructeur avec paramètres
  public Rv(Date jour, Client client, Creneau creneau) {
    // on passe par les setters
    setJour(jour);
    setClient(client);
    setCreneau(creneau);
  }

  // constructeur par recopie
  public Rv(Rv rv) {
    // on passe par les setters
    setId(rv.getId());
    setJour(rv.getJour());
    setClient(client);
    setCreneau(creneau);

  }

  // toString
  @Override
  public String toString() {
    return "[" + getId() + "," + new SimpleDateFormat("dd/MM/yyyy").format(getJour()) + "," + getClient() + "," + getCreneau() + "]";
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Date getJour() {
    return jour;
  }

  public void setJour(Date jour) {
    this.jour = jour;
  }

  public Client getClient() {
    return client;
  }

  public void setClient(Client client) {
    this.client = client;
  }

  public Creneau getCreneau() {
    return creneau;
  }

  public void setCreneau(Creneau creneau) {
    this.creneau = creneau;
  }
}
