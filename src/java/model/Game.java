package model;

public class Game {
        private int cod;
        private String nome;
        private String requisitos;
        private String descricao;

    public Game(){}    
        
    public Game(String nome, String requisitos, String descricao) {
        this.nome = nome;
        this.requisitos = requisitos;
        this.descricao = descricao;
    }
    
    public Game(int id, String nome, String requisitos, String descricao) {
        this.cod = id;
        this.nome = nome;
        this.requisitos = requisitos;
        this.descricao = descricao;
    }

    public int getCodGame() {
        return cod;
    }

    public void setCodGame(int cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRequisitos() {
        return requisitos;
    }

    public void setRequisitos(String requisitos) {
        this.requisitos = requisitos;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
        
        
}
