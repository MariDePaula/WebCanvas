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
public class AcessoPortfolio {
    @Id
    private int idAcessoPortfolio;
    private int idPortfolio;
    private int idUsuario;

    public int getIdAcessoPortfolio() {
        return idAcessoPortfolio;
    }

    public void setIdAcessoPortfolio(int idAcessoPortfolio) {
        this.idAcessoPortfolio = idAcessoPortfolio;
    }

    public int getIdPortfolio() {
        return idPortfolio;
    }

    public void setIdPortfolio(int idPortfolio) {
        this.idPortfolio = idPortfolio;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
}
