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
public class Portfolio {
    @Id
    private int IdPortfolio;
    private String descricao;
    private String periodo;
    private String situacao;

     public Portfolio() {
    }
    
    
    public int getIdPortfolio() {
        return IdPortfolio;
    }

    public void setIdPortfolio(int IdPortfolio) {
        this.IdPortfolio = IdPortfolio;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    
}
