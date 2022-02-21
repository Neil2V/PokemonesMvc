package es.pokemon.spring.mvc.models;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Result {

	@JsonProperty("results")
	public List<Pokemon> listPokemon;

	public List<Pokemon> getListPokemon() {
		return listPokemon;
	}

	public void setListPokemon(List<Pokemon> listPokemon) {
		this.listPokemon = listPokemon;
	}
	
	
	
	
}
