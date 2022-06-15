package com.callor.app.posting.model;

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

	
	private int Posting_seq;
	private String title;
	private String cont;
	private String cars;
	private String cars2;
	private String addr;
	private String addr_dtl;
	private String goods;
}
