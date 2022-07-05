/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DTO;

/**
 *
 * @author Denise
 */
public class PortoDTO {
    
    private int id_cliente;
    private String nome_cliente;
    private String n_container;
    private String tipo;
    private String sta_tus;
    private String categoria;
    private String movimentacao;

    /**
     * @return the id_cliente
     */
    public int getId_cliente() {
        return id_cliente;
    }

    /**
     * @param id_cliente the id_cliente to set
     */
    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    /**
     * @return the nome_container
     */
    public String getNome_cliente() {
        return nome_cliente;
    }

    /**
     * @param nome_container the nome_container to set
     */
    public void setNome_cliente(String nome_container) {
        this.nome_cliente = nome_container;
    }

    /**
     * @return the n_container
     */
    public String getN_container() {
        return n_container;
    }

    /**
     * @param n_container the n_container to set
     */
    public void setN_container(String n_container) {
        this.n_container = n_container;
    }

    /**
     * @return the tipo
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * @param tipo the tipo to set
     */
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    /**
     * @return the sta_tus
     */
    public String getSta_tus() {
        return sta_tus;
    }

    /**
     * @param sta_tus the sta_tus to set
     */
    public void setSta_tus(String sta_tus) {
        this.sta_tus = sta_tus;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the movimentacao
     */
    public String getMovimentacao() {
        return movimentacao;
    }

    /**
     * @param movimentacao the movimentacao to set
     */
    public void setMovimentacao(String movimentacao) {
        this.movimentacao = movimentacao;
    }
    
    
}
