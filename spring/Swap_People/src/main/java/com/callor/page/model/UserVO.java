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
public class UserVO {
	
	private String username;
	private String password;
	private String email;
	private String name;
	private String tel;
	private String identify;
	private String address;
	private String role;

}
