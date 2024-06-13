package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter

public class FavoriteDTO {
	private String favidx;
	private String memberid;
	private String cropname;
	private Date createdat;
}
