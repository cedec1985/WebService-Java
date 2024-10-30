/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import entites.Clients;

@Stateless
public class ClientsFacade implements ClientsFacadeLocal, ClientsFacadeRemote {
  @PersistenceContext
  private EntityManager em;

  public void create(Clients clients) {
    em.persist(clients);
  }

  public void edit(Clients clients) {
    em.merge(clients);
  }

  public void remove(Clients clients) {
    em.remove(em.merge(clients));
  }

  public Clients find(Object id) {
    return em.find(Clients.class, id);
  }

  @Override
  public List<Clients> findAll() {
    return em.createQuery("select object(o) from Clients as o").getResultList();
  }

}
