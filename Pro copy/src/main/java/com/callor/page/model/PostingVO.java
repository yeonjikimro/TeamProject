package com.callor.page.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PostingVO {

	
	private String username;
	private long posting_seq;
	private String title;
	private String cont;
	private String image;
	private String cars;
	private String cat_code;
	private String cat_name;
	private String addr;
	private String addr_dtl;
	private String goods;
	private int post_situ;
}