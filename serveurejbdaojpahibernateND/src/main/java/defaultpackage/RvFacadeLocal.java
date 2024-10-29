/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Local;
import entites.Rv;

/**
 *
 * @author st
 */
@Local
public interface RvFacadeLocal {

  void create(Rv rv);

  void edit(Rv rv);

  void remove(Rv rv);

  Rv find(Object id);

  List<Rv> findAll();

}
