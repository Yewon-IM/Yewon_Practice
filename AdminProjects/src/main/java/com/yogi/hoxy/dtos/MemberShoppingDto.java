package com.yogi.hoxy.dtos;

public class MemberShoppingDto {
	private String id;
	private String like;
	private int product_seq;
	private ProductDto productDto;
	
	public MemberShoppingDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberShoppingDto(String id, String like, int product_seq, ProductDto productDto) {
		super();
		this.id = id;
		this.like = like;
		this.product_seq = product_seq;
		this.productDto = productDto;
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

	@Override
	public String toString() {
		return "MemberShoppingDto [id=" + id + ", like=" + like + ", product_seq=" + product_seq + ", productDto="
				+ productDto + "]";
	}
	
}
