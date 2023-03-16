DROP DATABASE IF EXISTS sbb;
CREATE DATABASE sbb;
USE sbb;

CREATE TABLE question (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    create_date DATETIME NOT NULL,
    content TEXT,
    `subject` VARCHAR(200)
);

INSERT INTO question
SET create_date = NOW(),
`subject` = '제목 1',
content = '내용 1';

INSERT INTO question
SET create_date = NOW(),
`subject` = '제목 2',
content = '내용 2';

INSERT INTO question
SET create_date = NOW(),
`subject` = '제목 3',
content = '내용 3';

CREATE TABLE answer (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    create_date DATETIME NOT NULL,
    content TEXT,
    question_id INT(10) UNSIGNED NOT NULL
);

# 답변 데이터 생성
INSERT INTO answer
SET create_date = NOW(),
content = '답변 1',
question_id = 1;

INSERT INTO answer
SET create_date = NOW(),
content = '답변 2',
question_id = 2;

INSERT INTO answer
SET create_date = NOW(),
content = '답변 3',
question_id = 3;