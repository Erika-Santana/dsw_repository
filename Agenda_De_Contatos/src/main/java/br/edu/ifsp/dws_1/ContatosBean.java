package br.edu.ifsp.dws_1;

import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

public class ContatosBean {
	private List<Contato> contatos;
	
	private ContatosBean() {
		contatos = new LinkedList<Contato>();
		contatos.add(new Contato("Érika", "9929039", "hanablake"));
	}
	
	public void insere(Contato contato) {
		if (!contatos.contains(contato) && contato != null) {
			contatos.add(contato);
		}
	}
	
	public void remove(Contato contato) {
		if (contato != null) {
			contatos.remove(contato);
		}
	}
	
	public Contato buscaPorId(Long id) {
		return contatos.stream()
				.filter(c -> c.getId() == id)
				.findFirst()
				.orElseThrow(() -> new NoSuchElementException("ID: " + id + " não existe na lista de contatos!"));
	}
	
	public List<Contato> buscaTodos(){
		return contatos.stream()
				.sorted((cont1, cont2) -> cont1.getName().compareToIgnoreCase(cont2.getName()))
				.collect(Collectors.toList());
	}
	
	
}
