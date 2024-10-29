package dao;



import java.util.List;
import entites.Client;
import entites.Creneau;
import entites.Medecin;
import entites.Rv;


public interface IDao {

  // liste des clients
  public List<Client> getAllClients();
  // liste des Médecins
  public List<Medecin> getAllMedecins();
  // liste des créneaux horaires d'un médecin
  public List<Creneau> getAllCreneaux(Medecin medecin);
  // liste des Rv d'un médecin, un jour donné
  public List<Rv> getRvMedecinJour(Medecin medecin, String jour);
  // trouver un client identifié par son id
  public Client getClientById(Long id);
  // trouver un client idenbtifié par son id
  public Medecin getMedecinById(Long id);
  // trouver un Rv identifié par son id
  public Rv getRvById(Long id);
  // trouver un créneau horaire identifié par son id
  public Creneau getCreneauById(Long id);
  // ajouter un RV
  public Rv ajouterRv(String jour, Creneau creneau, Client client);
  // supprimer un RV
  public void supprimerRv(Rv rv);
}
