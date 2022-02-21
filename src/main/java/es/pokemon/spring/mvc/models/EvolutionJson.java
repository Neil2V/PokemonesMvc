package es.pokemon.spring.mvc.models;

import java.util.ArrayList;
import java.util.List;

public class EvolutionJson {

	ArrayList<String> pokemons;
	
	

    public EvolutionJson(){
        this.pokemons = new ArrayList<String>();
    }

    public ArrayList<String> getPokemons() {
        return pokemons;
    }

    public void addPokemon(String pokemon){
        this.pokemons.add(pokemon);
    }

	
    
    
}
