package rdvmedecins.ws;

import java.util.List;
import javax.ejb.EJB;
import javax.jws.WebMethod;
import javax.jws.WebService;
import dao.IDao;
import dao.IDaoLocal;
import entites.Client;
import entites.Creneau;
import entites.Medecin;
import entites.Rv;

@WebService()
public class WsDaoJpa implements IDao {

  @EJB
  private IDaoLocal dao;

  // liste des clients
  @WebMethod
  public List<Client> getAllClients() {
    return dao.getAllClients();
  }

  // liste des médecins
  @WebMethod
  public List<Medecin> getAllMedecins() {
    return dao.getAllMedecins();
  }

  // liste des créneaux horaires d'un médecin donné
  // medecin : le médecin
  @WebMethod
  public List<Creneau> getAllCreneaux(Medecin medecin) {
    return dao.getAllCreneaux(medecin);
  }

  // liste des Rv d'un médecin donné, un jour donné
  // medecin : le médecin
  // jour : le jour
  @WebMethod
  public List<Rv> getRvMedecinJour(Medecin medecin, String jour) {
    return dao.getRvMedecinJour(medecin, jour);
  }

  // ajout d'un Rv
  // jour : jour du Rv
  // creneau : créneau horaire du Rv
  // client : client pour lequel est pris le Rv
  @WebMethod
  public Rv ajouterRv(String jour, Creneau creneau, Client client) {
    return dao.ajouterRv(jour, creneau, client);
  }

  // suppression d'un Rv
  // rv : le Rv supprimé
  @WebMethod
  public void supprimerRv(Rv rv) {
    dao.supprimerRv(rv);
  }

  // récupérer un client donné
  @WebMethod
  public Client getClientById(Long id) {
    return dao.getClientById(id);
  }

  // récupérer un médecin donné
  @WebMethod
  public Medecin getMedecinById(Long id) {
    return dao.getMedecinById(id);
  }

  // récupérer un Rv donné
  @WebMethod
  public Rv getRvById(Long id) {
    return dao.getRvById(id);
  }

  // récupérer un créneau donné
  @WebMethod
  public Creneau getCreneauById(Long id) {
    return dao.getCreneauById(id);
  }
}
