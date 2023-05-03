package com.generation.lojagames.Controller;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.generation.lojagames.model.Categoria;
import com.generation.lojagames.model.Usuario;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;


@Entity
@Table(name = "tb_produtos")

public class Produto{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "nome")
	@NotBlank(message = "O atributo nome é obrigatório!")
	@Size(min = 5, max = 100, message = "O nome deve conter no mínbimo 05 e no máximo 100 caracteres!")
	private String nome;
	
	@Column(name = "valor")
	@DecimalMin(value = "0.0", inclusive = false)
    @DecimalMax(value = "9999.99", inclusive = true)
	@NotNull(message = "O atributo valor é obrigatório!")
	private float valor;
	
	@NotNull(message = "O atributo quantidade é obrigatório!")
	private int quantidade;

	@ManyToOne 
	@JsonIgnoreProperties("produto") 
	private Categoria categoria;
	
	@ManyToOne
	@JsonIgnoreProperties("produto")
	private Usuario usuario;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public float getValor() {
		return valor;
	}

	public void setValor(float valor) {
		this.valor = valor;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	
	
}