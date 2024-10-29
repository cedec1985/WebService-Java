package entites;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Version;

@Entity
@Table(name = "CRENEAUX")
public class Creneau implements Serializable {

  // caractéristiques d'un créneau de RV
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  @Column(name = "ID")
  private Long id;
  @Version
  @Column(name = "VERSION", nullable = false)
  private Integer version;
  @ManyToOne
  @JoinColumn(name = "ID_MEDECIN", nullable = false)
  private Medecin medecin;
  @Column(name = "HDEBUT", nullable = false)
  private Integer hdebut;
  @Column(name = "MDEBUT", nullable = false)
  private Integer mdebut;
  @Column(name = "HFIN", nullable = false)
  private Integer hfin;
  @Column(name = "MFIN", nullable = false)
  private Integer mfin;

  // constructeur par défaut
  public Creneau() {

  }

  // constructeur avec paramètres
  public Creneau(Medecin medecin, Integer hDebut,Integer mDebut, Integer hFin, Integer mFin) {
    // on passe par les setters
    setMedecin(medecin);
    setHdebut(hDebut);
    setMdebut(mDebut);
    setHfin(hFin);
    setMfin(mFin);
  }

  // constructeur par recopie
  public Creneau(Creneau creneau) {
    // on passe par les setters
    setId(creneau.getId());
    setVersion(creneau.getVersion());
    setMedecin(creneau.getMedecin());
    setHdebut(creneau.getHdebut());
    setMdebut(creneau.getMdebut());
    setHfin(creneau.getHfin());
    setMfin(creneau.getMfin());
  }

  // toString
  @Override
  public String toString() {
    return "[" + getId() + "," + getVersion() + "," + getMedecin() + "," + getHdebut() + ":" + getMdebut() + "," + getHfin() + ":" + getMfin() + "]";
  }

  // setters - getters
  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Integer getVersion() {
    return version;
  }

  public void setVersion(Integer version) {
    this.version = version;
  }

  public Integer getHdebut() {
    return hdebut;
  }

  public void setHdebut(Integer hdebut) {
    this.hdebut = hdebut;
  }

  public Integer getMdebut() {
    return mdebut;
  }

  public void setMdebut(Integer mdebut) {
    this.mdebut = mdebut;
  }

  public Integer getHfin() {
    return hfin;
  }

  public void setHfin(Integer hfin) {
    this.hfin = hfin;
  }

  public Integer getMfin() {
    return mfin;
  }

  public void setMfin(Integer mfin) {
    this.mfin = mfin;
  }

  public Medecin getMedecin() {
    return medecin;
  }

  public void setMedecin(Medecin medecin) {
    this.medecin = medecin;
  }
}
