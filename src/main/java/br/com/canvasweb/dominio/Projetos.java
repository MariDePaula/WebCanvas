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
public class Projetos {
    @Id
    private int IdProjeto;
    private String portfolio;
    private String descricao;
    private String justificativa;
    private String objSmart;
    private String beneficios;    
    private String produto;
    private String requisitos;        
    private String stakeholders;
    private String equipe;
    private String premissas;        
    private String grupoEntregas;
    private String riscos;
    private String linhaTempo;        
    private String restricoes;
    private String custos;
    
    
    public int getIdProjeto() {
        return IdProjeto;
    }

    public void setIdProjeto(int IdProjeto) {
        this.IdProjeto = IdProjeto;
    }

    public String getPortfolio() {
        return portfolio;
    }

    public void setPortfolio(String portfolio) {
        this.portfolio = portfolio;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getJustificativa() {
        return justificativa;
    }

    public void setJustificativa(String justificativa) {
        this.justificativa = justificativa;
    }

    public String getObjSmart() {
        return objSmart;
    }

    public void setObjSmart(String objSmart) {
        this.objSmart = objSmart;
    }

    public String getBeneficios() {
        return beneficios;
    }

    public void setBeneficios(String beneficios) {
        this.beneficios = beneficios;
    }

    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public String getRequisitos() {
        return requisitos;
    }

    public void setRequisitos(String requisitos) {
        this.requisitos = requisitos;
    }

    public String getStakeholders() {
        return stakeholders;
    }

    public void setStakeholders(String stakeholders) {
        this.stakeholders = stakeholders;
    }

    public String getEquipe() {
        return equipe;
    }

    public void setEquipe(String equipe) {
        this.equipe = equipe;
    }

    public String getPremissas() {
        return premissas;
    }

    public void setPremissas(String premissas) {
        this.premissas = premissas;
    }

    public String getGrupoEntregas() {
        return grupoEntregas;
    }

    public void setGrupoEntregas(String grupoEntregas) {
        this.grupoEntregas = grupoEntregas;
    }

    public String getRiscos() {
        return riscos;
    }

    public void setRiscos(String riscos) {
        this.riscos = riscos;
    }

    public String getLinhaTempo() {
        return linhaTempo;
    }

    public void setLinhaTempo(String linhaTempo) {
        this.linhaTempo = linhaTempo;
    }

    public String getRestricoes() {
        return restricoes;
    }

    public void setRestricoes(String restricoes) {
        this.restricoes = restricoes;
    }

    public String getCustos() {
        return custos;
    }

    public void setCustos(String custos) {
        this.custos = custos;
    }
        
        
        
        
        
        
        
        
        }
