package com.smhrd.model;

import java.sql.Date;

//회원 
public class MemDTO {

 // 회원 아이디 
 private String memberID;

 // 회원 비밀번호 
 private String password;

 // 회원 이름 
 private String name;

 // 회원 전화번호 
 private String phoneNumber;

 // 회원 이메일 
 private String email;

 // 회원 선호도 
 private String preference;

 // 회원 구분 
 private String memberType;

 // 회원 가입일자 
 private Date joinedAt;

 public String getMemberID() {
     return memberID;
 }

 public void setMemberID(String memberID) {
     this.memberID = memberID;
 }

 public String getPassword() {
     return password;
 }

 public void setPassword(String password) {
     this.password = password;
 }

 public String getName() {
     return name;
 }

 public void setName(String name) {
     this.name = name;
 }

 public String getPhoneNumber() {
     return phoneNumber;
 }

 public void setPhoneNumber(String phoneNumber) {
     this.phoneNumber = phoneNumber;
 }

 public String getEmail() {
     return email;
 }

 public void setEmail(String email) {
     this.email = email;
 }

 public String getPreference() {
     return preference;
 }

 public void setPreference(String preference) {
     this.preference = preference;
 }

 public String getMemberType() {
     return memberType;
 }

 public void setMemberType(String memberType) {
     this.memberType = memberType;
 }

 public Date getJoinedAt() {
     return joinedAt;
 }

 public void setJoinedAt(Date joinedAt) {
     this.joinedAt = joinedAt;
 }

 // members 모델 복사
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
