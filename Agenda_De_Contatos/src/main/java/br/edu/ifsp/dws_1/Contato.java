package br.edu.ifsp.dws_1;

public class Contato {
	
	private static Long ultimoId = 1L;

	private Long id;
	private String name;
	private String phone;
	private String email;
	
	public Contato() {
		ultimoId += 1;
		this.id = ultimoId;
	}
	
	public Contato(String nome, String telefone, String email) {		
		this();
		setEmail(email);
		setName(nome);
		setPhone(telefone);
	}
	
	public Contato(Long id, String nome, String telefone, String email) {
		setId(id);
		setEmail(email);
		setName(nome);
		setPhone(telefone);
	}
	
	
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}

	 public void setEmail(String email) {
		this.email = email;
	}

	 public String getEmail() {
		return email;
	}
	 public Long getId() {
		return id;
	}
	 public String getName() {
		return name;
	}
	 public String getPhone() {
		return phone;
	}
	 
}
