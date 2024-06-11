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

public class GardenDTO {
	@NonNull private int certidx;
	@NonNull private String title;
	@NonNull private String content;
	@NonNull private String img;
	@NonNull private String issecret;
	@NonNull private String desiredseed;
	@NonNull private String recipientname;
	@NonNull private String deliaddr;
	@NonNull private String recipientphone;
	@NonNull private String memberid;
	private Date date;
}
