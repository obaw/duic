CREATE TABLE `app` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR (64) NOT NULL COMMENT '应用名称',
  `profile` VARCHAR (64) NOT NULL COMMENT '应用环境',
  `description` VARCHAR (1024) NOT NULL COMMENT '应用描述',
  `token` VARCHAR (64) NOT NULL COMMENT '访问令牌',
  `ip_limit` VARCHAR (1024) NOT NULL COMMENT '可访问 IP',
  `v` INTEGER NOT NULL COMMENT '应用版本',
  `created_at` TIMESTAMP COMMENT '创建时间',
  `updated_at` TIMESTAMP COMMENT '修改时间',
  `content` TEXT NOT NULL COMMENT '应用配置内容',
  `users` TEXT NOT NULL COMMENT '应用所属用户',
  PRIMARY KEY (`id`)
) ENGINE = INNODB CHARSET = utf8mb4 COLLATE = utf8mb4_bin;

ALTER TABLE `app` ADD UNIQUE INDEX (`name`,`profile`);
ALTER TABLE `app` ADD FULLTEXT name_profile_content(`name`,`profile`,`content`);