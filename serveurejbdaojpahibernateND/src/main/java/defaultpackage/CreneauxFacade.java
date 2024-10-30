/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import entites.Creneaux;

@Stateless
public  class CreneauxFacade implements CreneauxFacadeLocal, CreneauxFacadeRemote {
  @PersistenceContext
  private EntityManager em;

  public void create(Creneaux creneaux) {
    em.persist(creneaux);
  }

  public void edit(Creneaux creneaux) {
    em.merge(creneaux);
  }

  public void remove(Creneaux creneaux) {
    em.remove(em.merge(creneaux));
  }

  public Creneaux find(Object id) {
    return em.find(Creneaux.class, id);
  }

  public List<Creneaux> findAll() {
    return em.createQuery("select object(o) from Creneaux as o").getResultList();
  }

}
