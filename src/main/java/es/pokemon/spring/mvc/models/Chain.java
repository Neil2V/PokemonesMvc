package es.pokemon.spring.mvc.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Chain {

	private String id;
    private Evolution chain;
    
    public Chain(){ }

    public Chain(String id, Evolution chain){
        this.id = id;
        this.chain = chain;
    }

    public Evolution getChain() {
        return this.chain;
    }

    public String getId() {
        return this.id;
    }
}
