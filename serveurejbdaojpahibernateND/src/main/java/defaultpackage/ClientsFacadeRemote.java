/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Remote;
import entites.Clients;

/**
 *
 * @author st
 */
@Remote
public interface ClientsFacadeRemote {

  void create(Clients clients);

  void edit(Clients clients);

  void remove(Clients clients);

  Clients find(Object id);

  List<Clients> findAll();

}
