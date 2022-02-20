package es.pokemon.spring.mvc;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;


@Controller
public class PokemonController {

	@Autowired
	private RestTemplate clientRest;
	
	
	
	@ResponseBody
	@RequestMapping(value="/pokemones", method = RequestMethod.GET)
	public List<Pokemon> getPokemones(){
		List<Pokemon> pokemones = new ArrayList<>();
		Result result = clientRest.getForObject("https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20", Result.class);
		int i=1;
		for(Pokemon pokemon: result.getListPokemon()) {
			pokemon = clientRest.getForObject("https://pokeapi.co/api/v2/pokemon/"+i+"/", Pokemon.class);
			pokemones.add(pokemon);
			i++;
		}
		
		return pokemones;
	}
	
	/*
	@ResponseBody
	@RequestMapping(value="/pokemon/{id}", method = RequestMethod.GET)
	public List<Pokemon> getPokemon(@PathVariable int id){
		
	}*/
	
	

}
