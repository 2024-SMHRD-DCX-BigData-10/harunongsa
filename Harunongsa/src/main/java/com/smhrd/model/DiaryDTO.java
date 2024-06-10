package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@RequiredArgsConstructor
@Getter
@ToString

public class DiaryDTO { 
	
	private int diaryidx;
	@NonNull private String memberid;
	private int cropidx;
	@NonNull private String diarytitle;
	@NonNull private String diarycontent;
	@NonNull private String diaryimg1;
	@NonNull private String diaryimg2;
	private Date createdat;
	
	
	
}
