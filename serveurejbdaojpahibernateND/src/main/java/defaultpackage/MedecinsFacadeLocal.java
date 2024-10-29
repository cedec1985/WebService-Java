/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Local;
import entites.Medecins;

/**
 *
 * @author st
 */
@Local
public interface MedecinsFacadeLocal {

  void create(Medecins medecins);

  void edit(Medecins medecins);

  void remove(Medecins medecins);

  Medecins find(Object id);

  List<Medecins> findAll();

}
