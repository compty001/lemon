

-------------------------------------------------------------------------------
--  sendmail history
-------------------------------------------------------------------------------
CREATE TABLE SENDMAIL_HISTORY(
        ID BIGINT NOT NULL,
        SUBJECT VARCHAR(50),
	SENDER VARCHAR(200),
	RECEIVER VARCHAR(200),
	CC VARCHAR(200),
	BCC VARCHAR(200),
	CONTENT TEXT,
	ATTACHMENT VARCHAR(200),
	DATA TEXT,
	CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	STATUS VARCHAR(50),
	INFO VARCHAR(200),
	CONFIG_ID BIGINT,
	TEMPLATE_ID BIGINT,
	SCOPE_ID VARCHAR(50),
        CONSTRAINT PK_SENDMAIL_HISTORY PRIMARY KEY(ID),
        CONSTRAINT FK_SENDMAIL_HISTORY_CONFIG FOREIGN KEY(CONFIG_ID) REFERENCES SENDMAIL_CONFIG(ID),
	CONSTRAINT FK_SENDMAIL_HISTORY_TEMPLATE FOREIGN KEY(TEMPLATE_ID) REFERENCES SENDMAIL_TEMPLATE(ID)
) ENGINE=INNODB CHARSET=UTF8;

