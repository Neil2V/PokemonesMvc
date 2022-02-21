package es.pokemon.spring.mvc.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Abilities {
	
	private String is_hidden;
    private String slot;
    private Info ability;
    
	public Abilities() {
		
	}

	public Abilities(String is_hidden, String slot, Info ability) {
		
		this.is_hidden = is_hidden;
		this.slot = slot;
		this.ability = ability;
	}

	public String getIs_hidden() {
		return is_hidden;
	}

	public void setIs_hidden(String is_hidden) {
		this.is_hidden = is_hidden;
	}

	public String getSlot() {
		return slot;
	}

	public void setSlot(String slot) {
		this.slot = slot;
	}

	public Info getAbility() {
		return ability;
	}

	public void setAbility(Info ability) {
		this.ability = ability;
	}

	@Override
	public String toString() {
		return "Abilities [is_hidden=" + is_hidden + ", slot=" + slot + ", ability=" + ability + "]";
	}
    
	
	
    
}
