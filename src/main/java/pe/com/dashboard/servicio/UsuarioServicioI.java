/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.com.dashboard.servicio;

import java.util.List;
import pe.com.dashboard.modelo.Usuario;

/**
 *
 * @author HEBERT
 */
public interface UsuarioServicioI {
    public List<Usuario> listarEntidad();
    public Usuario buscarEntidadId(int id);
    public void guardarEntidad(Usuario usuario);
    public void eliminarEntidad(int id);
    public void modificarEntidad(Usuario usuario);
}
