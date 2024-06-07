package com.smhrd.model;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


//회원 

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor

public class MemDTO {

	@NonNull private String memberID;
	@NonNull private String password;
	private String name;
	private String phoneNumber;
	private String email;
	private String preference;
	private String memberType;
	private String joinedAt;
	private String newPassword;
	
	public MemDTO(@NonNull String memberID, @NonNull String password, String name, String phoneNumber, String email, String preference, String memberType, String joinedAt) {
        this.memberID = memberID;
        this.password = password;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.preference = preference;
        this.memberType = memberType;
        this.joinedAt = joinedAt;
    }
	
 // 회원 아이디 
 
 public void CopyData(MemDTO param)
 {
     this.memberID = param.getMemberID();
     this.password = param.getPassword();
     this.name = param.getName();
     this.phoneNumber = param.getPhoneNumber();
     this.email = param.getEmail();
     this.preference = param.getPreference();
     this.memberType = param.getMemberType();
     this.joinedAt = param.getJoinedAt();
 }
}