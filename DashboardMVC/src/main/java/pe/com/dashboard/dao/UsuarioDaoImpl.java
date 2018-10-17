/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.dashboard.dao;

import java.util.List;
import org.springframework.stereotype.Repository;
import pe.com.dashboard.SysDataAccess;
import pe.com.dashboard.modelo.Usuario;

/**
 *
 * @author HEBERT
 */
@Repository
public class UsuarioDaoImpl extends SysDataAccess<Integer, Usuario> implements UsuarioDaoI {
    
    @SuppressWarnings("unchecked")
    
    @Override
    public List<Usuario> listarEntidad(){
        return getListAll();
    }
    
    @Override
    public Usuario buscarEntidadId(int id){
        return getById(id);
    }
    
    @Override
    public void guardarEntidad(Usuario usuario){
        savev(usuario);
    }
    
    @Override
    public void eliminarEntidad(int id){
        delete(id);
    }
    
    @Override
    public void modificarEntidad(Usuario usuario){
        update(usuario);
    }
}
