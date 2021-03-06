DROP TABLE IF EXISTS dm_company;
CREATE TABLE dm_company (
	tid bigint NOT NULL AUTO_INCREMENT,
	bz varchar(200) NULL,
	bz2 varchar(200) NULL,
	node_number VARCHAR(20) NULL, /* 网点号 */
	type VARCHAR(5) NULL ,        /* 网点类型 */
	phone VARCHAR(20) NULL ,      /* 网点电话 */
	parent_id BIGINT NULL ,       /* 父节点id */
	gsdm varchar(50) NULL,
	lrrDm bigint NULL,
	lrrq varchar(50) NULL,
	status bit NULL,
	xgrDm bigint NULL,
	xgrq varchar(50) NULL,
	name varchar(100) NULL,
	zjm varchar(50) NULL,
	area varchar(50) NULL,
	cash_account varchar(50) NULL,
	company_type varchar(50) NULL,
	deepth bigint NULL,
	hs_gsdm varchar(100) NULL,
	is_dayknot bit NULL,
	is_independent_accounting bit NULL,
	is_store bit NULL,
	post_account varchar(50) NULL,
	short_name varchar(100) NULL,
	sj_gsdm varchar(100) NULL,
	town varchar(50) NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_datadictionary;
CREATE TABLE xt_datadictionary (
	tid bigint NOT NULL AUTO_INCREMENT,
	bz varchar(200) NULL,
	bz2 varchar(200) NULL,
	gsdm varchar(50) NULL,
	lrrDm bigint NULL,
	lrrq varchar(50) NULL,
	status bit NULL,
	xgrDm bigint NULL,
	xgrq varchar(50) NULL,
	data varchar(100) NULL,
	data_type varchar(100) NULL,
	where_bz varchar(20) NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_loginuser;
CREATE TABLE xt_loginuser (
	tid                 BIGINT       NOT NULL AUTO_INCREMENT,
	bz                  VARCHAR(200) NULL,
	bz2                 VARCHAR(200) NULL,
	gsdm                VARCHAR(50)  NULL,
	lrrDm               BIGINT       NULL,
	lrrq                VARCHAR(50)  NULL,
	status              BIT          NULL,
	xgrDm               BIGINT       NULL,
	xgrq                VARCHAR(50)  NULL,
	cur_login_time      VARCHAR(10)  NULL,
	ip                  VARCHAR(20)  NULL,
	is_independent_role BIT          NULL,
	is_look_company     BIT          NULL,
	is_look_price       BIT          NULL,
	is_look_wage        BIT          NULL,
	is_modify_price     BIT          NULL,
	limits_companys     VARCHAR(200) NULL,
	login_account       VARCHAR(50)  NULL,
	login_password      VARCHAR(50)  NULL,
	name                VARCHAR(255) NULL,
	search_day          INT          NULL,
	user_id             BIGINT       NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_loginuser_menu;
CREATE TABLE xt_loginuser_menu (
	tid                BIGINT       NOT NULL AUTO_INCREMENT,
	bz                 VARCHAR(200) NULL,
	bz2                VARCHAR(200) NULL,
	gsdm               VARCHAR(50)  NULL,
	lrrDm              BIGINT       NULL,
	lrrq               VARCHAR(50)  NULL,
	status             BIT          NULL,
	xgrDm              BIGINT       NULL,
	xgrq               VARCHAR(50)  NULL,
	operate_add        VARCHAR(1)   NULL,
	operate_audit      VARCHAR(1)   NULL,
	operate_delete     VARCHAR(1)   NULL,
	operate_edit       VARCHAR(1)   NULL,
	operate_print      VARCHAR(1)   NULL,
	operate_search     VARCHAR(1)   NULL,
	operate_undo_audit VARCHAR(1)   NULL,
	loginuser_id       BIGINT       NULL,
	menu_id            BIGINT       NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_loginuser_role;
CREATE TABLE xt_loginuser_role (
	loginuser_id BIGINT NOT NULL,
	role_id      BIGINT NOT NULL,
	PRIMARY KEY (loginuser_id, role_id)
);

DROP TABLE IF EXISTS xt_menu;
CREATE TABLE xt_menu (
	tid         BIGINT       NOT NULL AUTO_INCREMENT,
	bz          VARCHAR(200) NULL,
	bz2         VARCHAR(200) NULL,
	gsdm        VARCHAR(50)  NULL,
	lrrDm       BIGINT       NULL,
	lrrq        VARCHAR(50)  NULL,
	status      BIT          NULL,
	xgrDm       BIGINT       NULL,
	xgrq        VARCHAR(50)  NULL,
	deepth      INT          NULL,
	menugroup   VARCHAR(50)  NULL,
	menuIndex   VARCHAR(50)  NULL,
	menu_limits VARCHAR(50)  NULL,
	name        VARCHAR(100) NULL,
	parent_id   BIGINT       NULL,
	url         VARCHAR(100) NULL,
	glyph       VARCHAR(10)  NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_role;
CREATE TABLE xt_role (
	tid    BIGINT       NOT NULL AUTO_INCREMENT,
	bz     VARCHAR(200) NULL,
	bz2    VARCHAR(200) NULL,
	gsdm   VARCHAR(50)  NULL,
	lrrDm  BIGINT       NULL,
	lrrq   VARCHAR(50)  NULL,
	status BIT          NULL,
	xgrDm  BIGINT       NULL,
	xgrq   VARCHAR(50)  NULL,
	name   VARCHAR(50)  NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_role_menu;
CREATE TABLE xt_role_menu (
	tid                BIGINT       NOT NULL AUTO_INCREMENT,
	bz                 VARCHAR(200) NULL,
	bz2                VARCHAR(200) NULL,
	gsdm               VARCHAR(50)  NULL,
	lrrDm              BIGINT       NULL,
	lrrq               VARCHAR(50)  NULL,
	status             BIT          NULL,
	xgrDm              BIGINT       NULL,
	xgrq               VARCHAR(50)  NULL,
	operate_add        VARCHAR(1)   NULL,
	operate_audit      VARCHAR(1)   NULL,
	operate_delete     VARCHAR(1)   NULL,
	operate_edit       VARCHAR(1)   NULL,
	operate_print      VARCHAR(1)   NULL,
	operate_search     VARCHAR(1)   NULL,
	operate_undo_audit VARCHAR(1)   NULL,
	menu_id            BIGINT       NULL,
	role_id            BIGINT       NULL,
	PRIMARY KEY (tid)
);

DROP TABLE IF EXISTS xt_user;
CREATE TABLE xt_user (
	tid                  BIGINT       NOT NULL AUTO_INCREMENT,
	bz                   VARCHAR(200) NULL,
	bz2                  VARCHAR(200) NULL,
	gsdm                 VARCHAR(50)  NULL,
	lrrDm                BIGINT       NULL,
	lrrq                 VARCHAR(50)  NULL,
	status               BIT          NULL,
	xgrDm                BIGINT       NULL,
	xgrq                 VARCHAR(50)  NULL,
	name                 VARCHAR(100) NULL,
	zjm                  VARCHAR(50)  NULL,
	address              VARCHAR(100) NULL,
	bank                 VARCHAR(100) NULL,
	bank_account         VARCHAR(100) NULL,
	basic_wage           FLOAT        NULL,
	birthday             VARCHAR(10)  NULL,
	dept                 VARCHAR(100) NULL,
	diploma              VARCHAR(20)  NULL,
	entry_date           VARCHAR(10)  NULL,
	gsmc                 VARCHAR(100) NULL,
	guarantor            VARCHAR(100) NULL,
	guarantor_relations  VARCHAR(10)  NULL,
	id_addr              VARCHAR(100) NULL,
	id_number            VARCHAR(20)  NULL,
	is_laborcontract     BIT          NULL,
	is_marital           BIT          NULL,
	is_positive          BIT          NULL,
	is_resignation       BIT          NULL,
	laborcontract_no     VARCHAR(100) NULL,
	nation               VARCHAR(50)  NULL,
	phone                VARCHAR(20)  NULL,
	post                 VARCHAR(50)  NULL,
	resignation_date     VARCHAR(10)  NULL,
	resignation_type     VARCHAR(10)  NULL,
	sex                  VARCHAR(2)   NULL,
	social_security_date VARCHAR(10)  NULL,
	zzrq                 VARCHAR(10)  NULL,
	PRIMARY KEY (tid)
);


INSERT dm_company (tid, node_number, type, phone, parent_id, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name, zjm, area, cash_account, company_type, deepth, hs_gsdm, is_dayknot, is_independent_accounting, is_store, post_account, short_name, sj_gsdm, town) VALUES (1, '78000', NULL , '0477-8689291', NULL, NULL, NULL, '00001', NULL, NULL, 1, NULL, NULL, '伊金霍洛旗农村商业银行', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '伊旗农商行', NULL, NULL);
INSERT dm_company (tid, node_number, type, phone, parent_id, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name, zjm, area, cash_account, company_type, deepth, hs_gsdm, is_dayknot, is_independent_accounting, is_store, post_account, short_name, sj_gsdm, town) VALUES (2, '78003', NULL , '0477-8684037', 1, '', NULL, '00001001', NULL, '2015-07-10 10:59:15', 1, NULL, '2015-07-10 10:59:15', 'XX有限公司', NULL, NULL, NULL, NULL, NULL, '00001001', 0, 1, NULL, NULL, 'XX公司', '00001', '');

INSERT xt_user (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name, zjm, address, bank, bank_account, basic_wage, birthday, dept, diploma, entry_date, gsmc, guarantor, guarantor_relations, id_addr, id_number, is_laborcontract, is_marital, is_positive, is_resignation, laborcontract_no, nation, phone, post, resignation_date, resignation_type, sex, social_security_date, zzrq) VALUES (1, '', NULL, '00001', NULL, NULL, 1, 1, '2015-07-20 17:49:05', '超级管理员', '001', NULL, '', '', NULL, '', '集团', '', '2015-07-20', NULL, '', '', '', '', NULL, NULL, NULL, 0, NULL, '', '', '', '', '', 'M', '', '');
INSERT xt_user (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name, zjm, address, bank, bank_account, basic_wage, birthday, dept, diploma, entry_date, gsmc, guarantor, guarantor_relations, id_addr, id_number, is_laborcontract, is_marital, is_positive, is_resignation, laborcontract_no, nation, phone, post, resignation_date, resignation_type, sex, social_security_date, zzrq) VALUES (2, '', NULL, '00001', 1, '2015-07-20 17:38:01', 1, 1, '2015-07-20 17:38:01', '系统管理员', '8888', NULL, '', '', NULL, '', 'XX公司', '', '2015-07-20', NULL, '', '', '', '', NULL, 1, 0, 0, NULL, '', '', '', '', '', '', '', '');


INSERT xt_datadictionary (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, data, data_type, where_bz) VALUES (1, '', NULL, '00001001', NULL, NULL, 1, NULL, '2015-07-13 16:58:43', '部门经理', '岗位', NULL);

INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (1, '', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 09:53:06', 0, NULL, '10000', '', '系统设置', NULL, '', 'xf0f7');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (2, 'MENU', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:11', 1, NULL, '10001', '1111100', '菜单管理', 1, 'sys/menumgr', 'xf039');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (3, 'ROLE', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:24', 1, NULL, '10002', '1111100', '角色管理', 1, 'sys/role', 'xf21d');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (4, 'DD', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:31', 1, NULL, '10003', '1111100', '辅助信息', 1, 'sys/dd', 'xf1c0');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (5, '', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 09:54:06', 0, NULL, '11000', '', '基础信息', NULL, '', 'xf0f7');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (6, 'COMPANY', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:40', 1, NULL, '11001', '1111100', '组织架构', 5, 'basis/company', 'xf19c');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (7, 'HR', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:46', 1, NULL, '11002', '1111100', '人事档案', 5, 'basis/hr', 'xf0c0');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (8, 'LUSER', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 12:59:55', 1, NULL, '11003', '1111100', '登陆用户', 5, 'basis/luser', 'xf007');
INSERT xt_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, deepth, menugroup, menuIndex, menu_limits, name, parent_id, url, glyph) VALUES (9, 'XTCS', NULL, '00001', 1, NULL, 1, 1, '2015-07-20 22:36:18', 1, NULL, '10004', '1111100', '系统参数', 1, 'sys/xtcs', 'xf15b');


INSERT xt_role (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name) VALUES (1, NULL, NULL, '00001', NULL, '2015-07-08 11:33:30', 1, NULL, '2015-07-08 11:33:30', '超级管理员');
INSERT xt_role (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name) VALUES (2, NULL, NULL, '00001', NULL, '2015-07-08 11:51:16', 0, NULL, '2015-07-08 14:14:37', '系统管理员');
INSERT xt_role (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name) VALUES (3, NULL, NULL, '00001', NULL, '2015-07-08 14:22:32', 0, NULL, '2015-07-08 14:22:38', '系统管理员');
INSERT xt_role (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, name) VALUES (4, NULL, NULL, '00001', NULL, '2015-07-08 14:46:39', 1, NULL, '2015-07-08 14:46:39', '系统管理员');


INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10002, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, '', '', '', '', '', '', '', 1, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10003, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 2, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10004, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 3, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10005, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 4, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10006, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 9, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10007, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, '', '', '', '', '', '', '', 5, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10008, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 6, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10009, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 7, 1);
INSERT xt_role_menu (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, operate_add, operate_audit, operate_delete, operate_edit, operate_print, operate_search, operate_undo_audit, menu_id, role_id) VALUES (10010, NULL, NULL, '00001', 1, '2015-07-20 22:36:33', 1, NULL, NULL, 'Y', '', 'Y', 'Y', 'Y', 'Y', '', 8, 1);

INSERT xt_loginuser (tid, bz, bz2, gsdm, lrrDm, lrrq, status, xgrDm, xgrq, cur_login_time, ip, is_independent_role, is_look_company, is_look_price, is_look_wage, is_modify_price, limits_companys, login_account, login_password, name, search_day, user_id) VALUES (1, '11', NULL, '00001', NULL, NULL, 1, 1, '2015-07-17 09:36:51', NULL, NULL, 0, NULL, 0, NULL, 1, '', '001', 'Mtix', '超级管理员', 0, 1);

INSERT xt_loginuser_role (loginuser_id, role_id) VALUES (1, 1);

ALTER TABLE xt_loginuser  ADD FOREIGN KEY(user_id) REFERENCES xt_user (tid);

ALTER TABLE xt_loginuser_menu  ADD FOREIGN KEY(menu_id) REFERENCES xt_menu (tid);

ALTER TABLE xt_loginuser_menu  ADD FOREIGN KEY(loginuser_id) REFERENCES xt_loginuser (tid);

ALTER TABLE xt_loginuser_role  ADD FOREIGN KEY(loginuser_id) REFERENCES xt_loginuser (tid);

ALTER TABLE xt_loginuser_role  ADD FOREIGN KEY(role_id) REFERENCES xt_role (tid);

ALTER TABLE xt_role_menu ADD FOREIGN KEY(role_id) REFERENCES xt_role (tid);

ALTER TABLE xt_role_menu  ADD FOREIGN KEY(menu_id) REFERENCES xt_menu (tid);

