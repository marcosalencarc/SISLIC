package br.com.SISLIC.model;

import java.util.Date;

public class Lance {

	private int id;
	private float total;
	private int idPedido;
	private int Idfornecedor;
	private String data;
	private float taxaEntrega;
	
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}	
	public int getIdPedido() {
		return idPedido;
	}
	public void setIdPedido(int idPedido) {
		this.idPedido = idPedido;
	}
	public int getIdfornecedor() {
		return Idfornecedor;
	}
	public void setIdfornecedor(int idfornecedor) {
		Idfornecedor = idfornecedor;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public float getTaxaEntrega() {
		return taxaEntrega;
	}
	public void setTaxaEntrega(float taxaEntrega) {
		this.taxaEntrega = taxaEntrega;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
	
	
}
