/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Local;
import entites.Creneaux;

@Local
public interface CreneauxFacadeLocal {

  void create(Creneaux creneaux);

  void edit(Creneaux creneaux);

  void remove(Creneaux creneaux);

  Creneaux find(Object id);

  List<Creneaux> findAll();

}
