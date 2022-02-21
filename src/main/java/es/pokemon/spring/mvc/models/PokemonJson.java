package es.pokemon.spring.mvc.models;

import java.util.ArrayList;
import java.util.List;

public class PokemonJson {
	
	private int id;
    private String name;
    private String image;
    private String weight;
    private List<String> types;
    private List<String> abilities;
    
	public PokemonJson() {
		
		this.types = new ArrayList<String>();
        this.abilities = new ArrayList<String>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public List<String> getTypes() {
		return types;
	}

	public void setTypes(List<String> types) {
		this.types = types;
	}

	public List<String> getAbilities() {
		return abilities;
	}

	public void setAbilities(List<String> abilities) {
		this.abilities = abilities;
	}

	public void addType(String type){
        this.types.add(type);
    }

    public void addAbility(String ability){
        this.abilities.add(ability);
    }
	
	@Override
	public String toString() {
		return "PokemonJson [id=" + id + ", name=" + name + ", image=" + image + ", weight=" + weight + ", types="
				+ types + ", abilities=" + abilities + "]";
	}
    
	
    
}
