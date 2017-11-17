/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.canvasweb.dominio;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author Mari
 */
@Entity
public class UsuarioSenha {
    @Id
    private int IdSenha;
    private int idUsuario;
    private String SenhaUsuario;
    
}
