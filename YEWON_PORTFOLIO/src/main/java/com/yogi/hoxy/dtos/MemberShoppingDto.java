package com.yogi.hoxy.dtos;

public class MemberShoppingDto {
	private String id;
	private String like;
	private int product_seq;
	private ProductDto productDto;
	private int seq;
	
	public MemberShoppingDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberShoppingDto(String id, String like, int product_seq, ProductDto productDto, int seq) {
		super();
		this.id = id;
		this.like = like;
		this.product_seq = product_seq;
		this.productDto = productDto;
		this.seq = seq;
	}
	
	public MemberShoppingDto(String id, int product_seq, int seq) {
		super();
		this.id = id;
		this.product_seq = product_seq;
		this.seq = seq;
	}

	@Override
	public String toString() {
		return "MemberShoppingDto [id=" + id + ", like=" + like + ", product_seq=" + product_seq + ", productDto="
				+ productDto + ", seq=" + seq + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public int getProduct_seq() {
		return product_seq;
	}

	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}

	public ProductDto getProductDto() {
		return productDto;
	}

	public void setProductDto(ProductDto productDto) {
		this.productDto = productDto;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	
	

}
