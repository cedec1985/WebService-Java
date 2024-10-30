/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Local;
import entites.Clients;

@Local
public interface ClientsFacadeLocal {

  void create(Clients clients);

  void edit(Clients clients);

  void remove(Clients clients);

  Clients find(Object id);

  List<Clients> findAll();

}
