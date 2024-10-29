package dao;

import java.text.SimpleDateFormat;
import java.util.List;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import entites.Client;
import entites.Creneau;
import entites.Medecin;
import entites.Personne;
import entites.Rv;
import rdvmedecins.exceptions.RdvMedecinsException;

@Stateless(mappedName="rdvmedecins.dao")
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class DaoJpa implements IDaoLocal,IDaoRemote {

  @PersistenceContext
  private EntityManager em;

  // liste des clients
  @Override
  public List<Client> getAllClients() {
    try {
      return em.createQuery("select c from Client c").getResultList();
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 1);
    }
  }

  // liste des médecins
  @Override
  public List<Medecin> getAllMedecins() {
    try {
      return em.createQuery("select m from Medecin m").getResultList();
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 2);
    }
  }

  // liste des créneaux horaires d'un médecin donné
  // medecin : le médecin
  public List<Creneau> getAllCreneaux(Medecin medecin) {
    try {
      return em.createQuery("select c from Creneau c join c.medecin m where m.id=:idMedecin").setParameter("idMedecin", medecin.getId()).getResultList();
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 3);
    }
  }

  // liste des Rv d'un médecin donné, un jour donné
  // medecin : le médecin
  // jour : le jour
  public List<Rv> getRvMedecinJour(Medecin medecin, String jour) {
    try {
      return em.createQuery("select rv from Rv rv join rv.creneau c join c.medecin m where m.id=:idMedecin and rv.jour=:jour").setParameter("idMedecin", medecin.getId()).setParameter("jour", new SimpleDateFormat("yyyy:MM:dd").parse(jour)).getResultList();
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 4);
    }
  }

  // ajout d'un Rv
  // jour : jour du Rv
  // creneau : créneau horaire du Rv
  // client : client pour lequel est pris le Rv
  public Rv ajouterRv(String jour, Creneau creneau, Client client) {
    try {
      Rv rv = new Rv(new SimpleDateFormat("yyyy:MM:dd").parse(jour), client, creneau);
      em.persist(rv);
      return rv;
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 5);
    }
  }

  // suppression d'un Rv
  // rv : le Rv supprimé
  public void supprimerRv(Rv rv) {
    try {
      em.remove(em.merge(rv));
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 6);
    }
  }

  // récupérer un client donné
  public Client getClientById(Long id) {
    try {
      return (Client) em.find(Client.class, id);
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 7);
    }
  }

  // récupérer un médecin donné
  public Medecin getMedecinById(Long id) {
    try {
      return (Medecin) em.find(Medecin.class, id);
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 8);
    }
  }

  // récupérer un Rv donné
  public Rv getRvById(Long id) {
    try {
      return (Rv) em.find(Rv.class, id);
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 9);
    }
  }

  // récupérer un créneau donné
  public Creneau getCreneauById(Long id) {
    try {
      return (Creneau) em.find(Creneau.class, id);
    } catch (Throwable th) {
      throw new RdvMedecinsException(th, 10);
    }
  }
}
