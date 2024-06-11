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

public class DiaryDTO { 
	
	@NonNull private int diaryidx;
	@NonNull private String memberid;
	@NonNull private int cropidx;
	@NonNull private String diarytitle;
	@NonNull private String diarycontent;
	@NonNull private String diaryimg1;
	@NonNull private String diaryimg2;
	private Date createdat;
	
	
	
}
