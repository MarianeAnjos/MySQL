package com.generation.farmacia.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;

import com.generation.farmacia.model.Categorias;
public abstract class CategoriasRepository implements JpaRepository<Categorias,Long> {
	public abstract List<Categorias> findAllByDescricaoContainingIgnoreCase(@Param("descricao") String descricao);
}
