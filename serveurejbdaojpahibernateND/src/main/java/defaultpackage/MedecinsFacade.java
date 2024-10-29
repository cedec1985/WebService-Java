/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import entites.Medecins;

/**
 *
 * @author st
 */
@Stateless
public class MedecinsFacade implements MedecinsFacadeLocal, MedecinsFacadeRemote {
  @PersistenceContext
  private EntityManager em;

  public void create(Medecins medecins) {
    em.persist(medecins);
  }

  public void edit(Medecins medecins) {
    em.merge(medecins);
  }

  public void remove(Medecins medecins) {
    em.remove(em.merge(medecins));
  }

  public Medecins find(Object id) {
    return em.find(Medecins.class, id);
  }

  public List<Medecins> findAll() {
    return em.createQuery("select object(o) from Medecins as o").getResultList();
  }

}
