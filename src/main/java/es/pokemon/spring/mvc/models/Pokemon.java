package es.pokemon.spring.mvc.models;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Pokemon {
	
	private int id;
    private String name;
    private Sprite sprites;
    private List<Type> types;
    private String weight;
    private List<Abilities> abilities;
    private String height;
    
	public Pokemon() {
		
	}

	public Pokemon(int id, String name, Sprite sprites, List<Type> types, String weight, List<Abilities> abilities,
			String height) {
		
		this.id = id;
		this.name = name;
		this.sprites = sprites;
		this.types = types;
		this.weight = weight;
		this.abilities = abilities;
		this.height = height;
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

	public Sprite getSprites() {
		return sprites;
	}

	public void setSprites(Sprite sprites) {
		this.sprites = sprites;
	}

	public List<Type> getTypes() {
		return types;
	}

	public void setTypes(List<Type> types) {
		this.types = types;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public List<Abilities> getAbilities() {
		return abilities;
	}

	public void setAbilities(List<Abilities> abilities) {
		this.abilities = abilities;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	@Override
	public String toString() {
		return "Pokemon [id=" + id + ", name=" + name + ", sprites=" + sprites + ", types=" + types + ", weight="
				+ weight + ", abilities=" + abilities + ", height=" + height + "]";
	}
    
    
    
    
}
