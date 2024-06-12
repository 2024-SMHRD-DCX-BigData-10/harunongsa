package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter

public class CropDTO {
	private int cropidx;
	private String cropname;
	private String image;
	private String feature;
	private String sowingperiod;
	private String sowingmethod;
	private String cultivationmethod;
	private String harvestperiod;
	private String diseasepestinfo;
	private String recipe;
}
