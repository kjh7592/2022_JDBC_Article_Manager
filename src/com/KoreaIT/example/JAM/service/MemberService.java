package com.KoreaIT.example.JAM.service;

import java.sql.Connection;

import com.KoreaIT.example.JAM.Member;
import com.KoreaIT.example.JAM.container.Container;
import com.KoreaIT.example.JAM.dao.MemberDao;

public class MemberService {

	private MemberDao memberDao;

	public MemberService() {
		this.memberDao = Container.memberDao;
	}

	public int doJoin(String loginId, String loginPw, String name) {
		return memberDao.doJoin(loginId, loginPw, name);
	}

	public boolean isLoginDup(String loginId) {
		return memberDao.isLoginIdDup(loginId);
	}

	public Member getMemberByLoginId(String loginId) {
		return memberDao.getMemberByLoginId(loginId);
	}

}
