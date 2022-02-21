package es.pokemon.spring.mvc.models;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Evolution {

	private Info species;
    private List<Evolution> evolves_to;
    
    public Evolution(){}

    public Evolution(Info species, List<Evolution> evolves_to){
        this.species = species;
        this.evolves_to = evolves_to;
    }

    public Info getSpecies(){
        return this.species;
    }

    public List<Evolution> getEvolves_to(){
        return this.evolves_to;
    }
}
