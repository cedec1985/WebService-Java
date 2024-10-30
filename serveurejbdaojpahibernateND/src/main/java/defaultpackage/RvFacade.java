/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import entites.Rv;

@Stateless
public class RvFacade implements RvFacadeLocal, RvFacadeRemote {
  @PersistenceContext
  private EntityManager em;

  public void create(Rv rv) {
    em.persist(rv);
  }

  public void edit(Rv rv) {
    em.merge(rv);
  }

  public void remove(Rv rv) {
    em.remove(em.merge(rv));
  }

  public Rv find(Object id) {
    return em.find(Rv.class, id);
  }

  public List<Rv> findAll() {
    return em.createQuery("select object(o) from Rv as o").getResultList();
  }

}
