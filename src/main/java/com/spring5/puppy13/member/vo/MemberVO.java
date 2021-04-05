package com.spring5.puppy13.member.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import com.spring5.puppy13.member.vo.MemberVO;

@Component("memberVO1")
public class MemberVO implements Comparable<MemberVO>{

	private String id;
	private String password;
	private String name;
	private String nickname;
	private String phone;
	private String email;
	private Date joindate;
	private String outuser;

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", nickname=" + nickname
				+ ", phone=" + phone + ", email=" + email + ", joindate=" + joindate + ", outuser=" + outuser + "]";
	}



	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((joindate == null) ? 0 : joindate.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((nickname == null) ? 0 : nickname.hashCode());
		result = prime * result + ((outuser == null) ? 0 : outuser.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		return result;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (joindate == null) {
			if (other.joindate != null)
				return false;
		} else if (!joindate.equals(other.joindate))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (nickname == null) {
			if (other.nickname != null)
				return false;
		} else if (!nickname.equals(other.nickname))
			return false;
		if (outuser == null) {
			if (other.outuser != null)
				return false;
		} else if (!outuser.equals(other.outuser))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		return true;
	}



	public String getId() {
		return id;
	}



	public void setId(String id) {
		this.id = id;
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



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getJoindate() {
		return joindate;
	}



	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}



	public String getOutuser() {
		return outuser;
	}



	public void setOutuser(String outuser) {
		this.outuser = outuser;
	}

	@Override
	public int compareTo(MemberVO memberVO) {
		//가입입자 기준 오름차순 정렬
		//return this.joinDate.compareTo(memberVO.joinDate);
		//가입입자기준 내림차순 정렬
		return memberVO.joindate.compareTo(this.joindate);
		//아이디 기준 오름차순 정렬(대소문자 구분없이)
		//return this.id.toLowerCase().compareTo(memberVO.id.toLowerCase());
		//아이디기준 내림차순 정렬(대소문자 구분없이)
		//return memberVO.id.toLowerCase().compareTo(this.id.toLowerCase());
		
		//가입일로 오름차순정렬 후, 같은 가입일에서 아이디 값으로 오름차순정렬.
		//String strMjoinDate1 = this.joinDate.toString();
		//String strMjoinDate2 = memberVO.joinDate.toString();
		//return (strMjoinDate1+this.id.toLowerCase())
		//		 .compareTo(strMjoinDate2+memberVO.id.toLowerCase());
		//가입일로 내림차순정렬 후, 같은 가입일에서 아이디 값으로 내림차순정렬.
		//String strMjoinDate1 = this.joinDate.toString();
		//String strMjoinDate2 = memberVO.joinDate.toString();
		//return (strMjoinDate2+memberVO.id.toLowerCase())
		//		.compareTo(strMjoinDate1+this.id.toLowerCase());
	}
}
