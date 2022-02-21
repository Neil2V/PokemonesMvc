package es.pokemon.spring.mvc.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Type {

	private int slot;
    private Info type;
    
    public Type() {
    	
    }

	public Type(int slot, Info type) {
		
		this.slot = slot;
		this.type = type;
	}

	public int getSlot() {
		return slot;
	}

	public void setSlot(int slot) {
		this.slot = slot;
	}

	public Info getType() {
		return type;
	}

	public void setType(Info type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Type [slot=" + slot + ", type=" + type + "]";
	}
    
	
    
    
}
