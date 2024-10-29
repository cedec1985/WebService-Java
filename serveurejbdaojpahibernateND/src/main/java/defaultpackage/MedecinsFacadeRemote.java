/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package defaultpackage;

import java.util.List;
import javax.ejb.Remote;
import entites.Medecins;

/**
 *
 * @author st
 */
@Remote
public interface MedecinsFacadeRemote {

  void create(Medecins medecins);

  void edit(Medecins medecins);

  void remove(Medecins medecins);

  Medecins find(Object id);

  List<Medecins> findAll();

}
