
CREATE TABLE tx_workshopblog_domain_model_blog (
  title varchar(255) DEFAULT '' NOT NULL,
  date int(11) DEFAULT '0' NOT NULL,
  teaser text,
  bodytext text
);

create table tx_workshopblog_domain_model_comment (
    commentor varchar(255) DEFAULT '' NOT NULL,
    comment text,
    date int(11) DEFAULT '0' NOT NULL,
    blog int(11) DEFAULT '0' NOT NULL
);
