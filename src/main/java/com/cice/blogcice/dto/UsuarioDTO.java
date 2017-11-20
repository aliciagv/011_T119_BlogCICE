/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cice.blogcice.dto;

/**
 *
 * @author cice
 */
public class UsuarioDTO {

    private Integer idUsuario;
    private String usuario;
    private String password;

    public UsuarioDTO() {
        
    }

    public UsuarioDTO(String usuario, String password) {
        this.usuario = usuario;
        this.password = password;
    }
    

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
