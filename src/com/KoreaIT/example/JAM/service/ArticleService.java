package com.KoreaIT.example.JAM.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.KoreaIT.example.JAM.Article;
import com.KoreaIT.example.JAM.container.Container;
import com.KoreaIT.example.JAM.dao.ArticleDao;

public class ArticleService {

	private ArticleDao articleDao;

	public ArticleService() {
		articleDao = Container.articleDao;
	}

	public int doWrite(String title, String body, int memberId) {
		return articleDao.doWrite(title, body, memberId);
	}

	public int doModify(int id, String title, String body) {
		return articleDao.doModify(id, title, body);
	}

	public void doDelete(int id) {
		articleDao.doDelete(id);
	}

	public boolean isArticleExists(int id) {
		return articleDao.isArticleExists(id);
	}

	public Article getArticle(int id) {
		return articleDao.getArticle(id);
	}

	public List<Article> getArticles() {
		return articleDao.getArticles();
	}

	public void increseHit(int id) {
		ArticleDao.increseHit(id);
	}

	public List<Article> getForPrintArticles(int page, int itemsInAPage, String searchKeyword) {
		int limitFrom = (page - 1) * itemsInAPage;
		int limitTake = itemsInAPage;

		Map<String, Object> args = new HashMap<>();
		args.put("searchKeyword", searchKeyword);
		args.put("limitFrom", limitFrom);
		args.put("limitTake", limitTake);

		return articleDao.getForPrintArticles(args);
	}
}
