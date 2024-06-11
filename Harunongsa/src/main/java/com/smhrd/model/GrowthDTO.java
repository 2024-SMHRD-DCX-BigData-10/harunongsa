package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@NoArgsConstructor
@Getter
@ToString

public class GrowthDTO {
	
	@NonNull private int growthpostid;
	@NonNull private String title;
	@NonNull private String content;
	@NonNull private String image;
	@NonNull private String seedname;
	@NonNull private String memberid;
	private Date date;
}
