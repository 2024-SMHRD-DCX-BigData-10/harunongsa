package com.smhrd.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Getter

public class CropFesDTO {
	private String program_name;
	private String start_date;
	private String end_date;
	private String start_time;
	private String end_time;
	private String location;
	private String audience;
	private int adult;
	private int teen;
	private int child;
	private String description;
}
