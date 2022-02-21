package es.pokemon.spring.mvc.controller;


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

import es.pokemon.spring.mvc.models.Chain;
import es.pokemon.spring.mvc.models.Evolution;
import es.pokemon.spring.mvc.models.EvolutionJson;
import es.pokemon.spring.mvc.models.Pokemon;
import es.pokemon.spring.mvc.models.PokemonJson;
import es.pokemon.spring.mvc.models.Result;


@Controller
public class PokemonController {

	@Autowired
	private RestTemplate clientRest;

	
	@RequestMapping()
	public String getPokemones(Model model){//vista de todos los pokemones
		List<Pokemon> pokemones = new ArrayList<>();
		Result result = clientRest.getForObject("https://pokeapi.co/api/v2/pokemon/?offset=0&limit=20", Result.class);
		int i=1;
		for(Pokemon pokemon: result.getListPokemon()) {
			pokemon = clientRest.getForObject("https://pokeapi.co/api/v2/pokemon/"+i+"/", Pokemon.class);
			pokemones.add(pokemon);
			i++;
		}
		
		model.addAttribute("pokemones", pokemones);
		
		return "pokemones";
	}
	
		
	@RequestMapping(value="/pokemon/{id}")
	public String getPokemon(@PathVariable int id, Model model){//vista de detalle de cada pokemon
		RestTemplate clienteRest = new RestTemplate();
		ArrayList<String> datos = new ArrayList<String>();
		Pokemon pokemon = clienteRest.getForObject("https://pokeapi.co/api/v2/pokemon/" + id, Pokemon.class);
		PokemonJson pokemonJson = new PokemonJson();
		pokemonJson.setId(pokemon.getId());
		pokemonJson.setName(pokemon.getName());
		pokemonJson.setWeight(pokemon.getWeight());
		pokemonJson.setImage(pokemon.getSprites().getFront_default());
		
		for (int i = 0; i < pokemon.getAbilities().size(); i += 1) {
			pokemonJson.addAbility(pokemon.getAbilities().get(i).getAbility().getName());
		}
		for (int i = 0; i < pokemon.getTypes().size(); i += 1) {
			pokemonJson.addType(pokemon.getTypes().get(i).getType().getName());
		}
		
		model.addAttribute("pokemonJson", pokemonJson);
		
		return "pokemonDetail";
	}
	
	@RequestMapping(value="/pokemon/evolucion/{id}")
	public String getPokemonEvolucion(@PathVariable int id, Model model){// vista de las evoluciones de un pokemon 
		RestTemplate clienteRest = new RestTemplate();
		
		int newId = id;
												//			id
		if ((id) > ((id) / 3)) {				//	1,2,3 -> 1
			id = (int) Math.ceil((id) / (3.0));//	4,5,6 -> 2
		}										//  7,8,9 -> 3
		
		int modulo = newId%3; 					//			id2
		int id2 = 0;							//  1,2,3 -> 1
												//  4,5,6 -> 4
		if(modulo==0) {							//  7,8,9 -> 7
			id2 = newId-2;
		}else if(modulo==1) {
			id2 = newId;
		}else if(modulo==2) {
			id2 = newId-1;
		}
		
			
		Chain p = clienteRest.getForObject("https://pokeapi.co/api/v2/evolution-chain/" + id, Chain.class);
		EvolutionJson evolucionesJson = new EvolutionJson();
	
		Evolution evo = p.getChain();
		
		List<PokemonJson> pokemonesEvolucionJson = new ArrayList<>();
		
		
		List<Pokemon> pokemones = new ArrayList<>();
		
		
		while (evo != null) {
			Pokemon pokemon = clienteRest.getForObject("https://pokeapi.co/api/v2/pokemon/" + id2, Pokemon.class);
			pokemones.add(pokemon);
			PokemonJson pokemonEvolucionJson = new PokemonJson();
			pokemonEvolucionJson.setId(pokemon.getId());
			pokemonEvolucionJson.setName(evo.getSpecies().getName());
			pokemonEvolucionJson.setImage(pokemon.getSprites().getFront_default());
			pokemonEvolucionJson.setWeight(pokemon.getWeight());
						
			
			for (int i = 0; i < pokemon.getAbilities().size(); i ++){
				pokemonEvolucionJson.addAbility(pokemon.getAbilities().get(i).getAbility().getName());
			}
			for (int i = 0; i < pokemon.getTypes().size(); i += 1) {
				pokemonEvolucionJson.addType(pokemon.getTypes().get(i).getType().getName());
			}
			
			pokemonesEvolucionJson.add(pokemonEvolucionJson);
			
			evolucionesJson.addPokemon(evo.getSpecies().getName());
			
			PokemonJson pokeJson = new PokemonJson();
						
			if (!evo.getEvolves_to().isEmpty())
				evo = evo.getEvolves_to().get(0);
			else
				evo = null;
			
			id2++;

		}
		
		
		model.addAttribute("pokemonesEvolucionJson", pokemonesEvolucionJson);
				
		return "evolucionPokemon";
	}
	
	

}
