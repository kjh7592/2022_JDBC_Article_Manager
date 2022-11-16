# DB 삭제/생성/선택
DROP DATABASE IF EXISTS jdbc_article_manager;
CREATE DATABASE jdbc_article_manager;
USE jdbc_article_manager;

# article 테이블 생성
CREATE TABLE article(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	title VARCHAR(200) NOT NULL,
	`body` TEXT NOT NULL
);

# member 테이블 생성
CREATE TABLE `member`(
	id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	loginId VARCHAR(20) NOT NULL,
	loginPw VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NOT NULL
);

#컬럼 추가
ALTER TABLE article ADD COLUMN memberId INT UNSIGNED NOT NULL AFTER updateDate;
DESC article;

# article 데이터 추가
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
title = 'test1',
`body` = 'test1';

# article 데이터 추가
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
title = 'test2',
`body` = 'test2';

# article 데이터 추가
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 2,
title = 'test3',
`body` = 'test3';

# article 데이터 추가
INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
title = 'test4',
`body` = 'test4';

# member 데이터 추가
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '김철수';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '김영희';

# article 테이블 조회
SELECT * FROM article;

# member 테이블 조회
SELECT * FROM `member`;
