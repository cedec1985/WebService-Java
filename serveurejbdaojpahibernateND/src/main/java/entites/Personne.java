package entites;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.Version;

@MappedSuperclass
public class Personne implements Serializable {
  // caractéristiques d'une personne

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "ID")
  private Long id;
  @Version
  @Column(name = "VERSION", nullable = false)
  private Integer version;

  @Column(name = "TITRE", length = 5, nullable = false)
  private String titre;
  @Column(name = "NOM", length = 30, nullable = false)
  private String nom;
  @Column(name = "PRENOM", length = 30, nullable = false)
  private String prenom;

  // constructeur par défaut
  public Personne() {
  }

  // constructeur avec paramètres
  public Personne(String titre, String nom, String prenom) {
    // on passe par les setters
    setTitre(titre);
    setNom(nom);
    setPrenom(prenom);
  }

  // constructeur par recopie
  public Personne(Personne personne) {
    // on passe par les setters
    setId(personne.getId());
    setVersion(personne.getVersion());
    setTitre(personne.getTitre());
    setNom(personne.getNom());
    setPrenom(personne.getPrenom());
  }

  // toString
  @Override
  public String toString() {
    return "[" + titre + "," + prenom + "," + nom + "]";
  }

  public String getTitre() {
    return titre;
  }

  public void setTitre(String titre) {
    this.titre = titre;
  }

  public String getNom() {
    return nom;
  }

  public void setNom(String nom) {
    this.nom = nom;
  }

  public String getPrenom() {
    return prenom;
  }

  public void setPrenom(String prenom) {
    this.prenom = prenom;
  }

  /**
   * @return the id
   */
  public Long getId() {
    return id;
  }

  /**
   * @param id the id to set
   */
  public void setId(Long id) {
    this.id = id;
  }

  /**
   * @return the version
   */
  public Integer getVersion() {
    return version;
  }

  /**
   * @param version the version to set
   */
  public void setVersion(Integer version) {
    this.version = version;
  }
}
