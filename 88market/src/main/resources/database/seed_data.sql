-- �������� ���� (�� ���̺�� �ּ� 3����)

/* USERS */
INSERT INTO USERS(USER_NUM, NAME, EMAIL, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_USER_NUM.NEXTVAL, 'ȫ�浿',    'hong@example.com',    'pass123', '010-1111-1111', '12345', '���� ������ ���ﵿ 123-45');
INSERT INTO USERS(USER_NUM, NAME, EMAIL, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_USER_NUM.NEXTVAL, '�迵��',    'younghee@example.com','pwd456',   '010-2222-2222', '23456', '��� ������ �д籸 ������ 67-89');
INSERT INTO USERS(USER_NUM, NAME, EMAIL, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_USER_NUM.NEXTVAL, '�̹�ȣ',    'minho@example.com',   'abc789',   '010-3333-3333', '34567', '��õ ������ ������ 12-34');

/* ADMIN */
INSERT INTO ADMIN(ADM_NUM, NAME, ID, PASS, TEL)
VALUES (SEQ_ADM_NUM.NEXTVAL, '������A',
				'admin' || LPAD(SEQ_ADM_NUM.NEXTVAL, 2, '0'),
				'admPass1', '010-1111-1111');
INSERT INTO ADMIN(ADM_NUM, NAME, ID, PASS, TEL)
VALUES (SEQ_ADM_NUM.NEXTVAL, '������B',
				'admin' || LPAD(SEQ_ADM_NUM.NEXTVAL, 2, '0'),
				'admPass2', '010-2222-2222');
INSERT INTO ADMIN(ADM_NUM, NAME, ID, PASS, TEL)
VALUES (SEQ_ADM_NUM.NEXTVAL, '������C',
				'admin' || LPAD(SEQ_ADM_NUM.NEXTVAL, 2, '0'),
				'admPass3', '010-3333-3333');

/* CATEGORY */
INSERT INTO CATEGORY(CAT_NUM, NAME)
VALUES (SEQ_CAT_NUM.NEXTVAL, '������ǰ');
INSERT INTO CATEGORY(CAT_NUM, NAME)
VALUES (SEQ_CAT_NUM.NEXTVAL, '����');
INSERT INTO CATEGORY(CAT_NUM, NAME)
VALUES (SEQ_CAT_NUM.NEXTVAL, '�Ƿ�');

/* COMPANY */
INSERT INTO COMPANY(COM_NUM, COM_NAME, CEO_NAME, NAME, ID, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_COM_NUM.NEXTVAL, 'ABC Corp',    '���ǥ', 'ȫ�浿', 'abc123', 'compPass1', '02-111-2222', '56789', '���� ������ �����źϷ� 400');
INSERT INTO COMPANY(COM_NUM, COM_NAME, CEO_NAME, NAME, ID, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_COM_NUM.NEXTVAL, 'XYZ Ltd',     '�̴�ǥ', '�迵��', 'xyz123', 'compPass2', '031-333-4444', '67890', '��� ������ �д籸 �Ǳ��� 50');
INSERT INTO COMPANY(COM_NUM, COM_NAME, CEO_NAME, NAME, ID, PASS, TEL, ZIPCODE, ADDRESS)
VALUES (SEQ_COM_NUM.NEXTVAL, '��ũ�뺣�̼�','�ڴ�ǥ', '�̹�ȣ', 'tech123','compPass3', '042-555-6666', '78901', '���� ���� �л�� 99');

/* PRODUCT */
INSERT INTO PRODUCT(PRD_NUM, TITLE, CONTENT, PRICE, USER_NUM, CAT_NUM, COM_NUM, LOCATION1)
VALUES (SEQ_PRD_NUM.NEXTVAL, '�ֽ� ����Ʈ��',     '2025���� Ǯ��ũ�� ����Ʈ��', 900000, 1, 1, 1, '�����ްԼ�');
INSERT INTO PRODUCT(PRD_NUM, TITLE, CONTENT, PRICE, USER_NUM, CAT_NUM, COM_NUM, LOCATION1)
VALUES (SEQ_PRD_NUM.NEXTVAL, '����Ʈ���� �Ҽ�',   '2025 ȭ���� �Ҽ� ���ົ',     20000, 2, 2, 2, '��㵵�ްԼ�');
INSERT INTO PRODUCT(PRD_NUM, TITLE, CONTENT, PRICE, USER_NUM, CAT_NUM, COM_NUM, LOCATION1)
VALUES (SEQ_PRD_NUM.NEXTVAL, '���� ���� Ƽ����',   '�ÿ��� ��ư ����Ƽ',           15000, 3, 3, 3, '�׾��ްԼ�');

/* NOTICE */
INSERT INTO NOTICE(NOT_NUM, ADM_NUM, TITLE, CONTENT, NAME)
VALUES (SEQ_NOT_NUM.NEXTVAL, 1, '�ý��� ���� �ȳ�',    '7�� 1�� ���� 02:00 ~ 04:00 �ý��� ������ �ֽ��ϴ�.', '������A');
INSERT INTO NOTICE(NOT_NUM, ADM_NUM, TITLE, CONTENT, NAME)
VALUES (SEQ_NOT_NUM.NEXTVAL, 2, '�̺�Ʈ ����',        '7�� �� �ް� ���� �ݾ� 5% ���� �̺�Ʈ',               '������B');
INSERT INTO NOTICE(NOT_NUM, ADM_NUM, TITLE, CONTENT, NAME)
VALUES (SEQ_NOT_NUM.NEXTVAL, 3, '�ű� ��� ���',     '��ǰ ��õ �˰����� ������Ʈ �Ǿ����ϴ�.',         '������C');

/* BANK */
INSERT INTO BANK(USER_NUM, NAME, BANK_NAME, BANK_NUM)
VALUES ((select user_num from users where user_num=1), 'ȫ�浿',    '��������', '123-456-7890');
INSERT INTO BANK(USER_NUM, NAME, BANK_NAME, BANK_NUM)
VALUES ((select user_num from users where user_num=2), '�迵��',    '��������', '234-567-8901');
INSERT INTO BANK(USER_NUM, NAME, BANK_NAME, BANK_NUM)
VALUES ((select user_num from users where user_num=3), '�̹�ȣ',    '�츮����', '345-678-9012');

/* FAQ */
INSERT INTO FAQ(FAQ_NUM, TITLE, CONTENT, NAME, ADM_NUM)
VALUES (SEQ_FAQ_NUM.NEXTVAL, 'ȸ������ ����', '���� �� �̸��� ������ �� �˴ϴ�.', 'ȫ�浿', '1');
INSERT INTO FAQ(FAQ_NUM, TITLE, CONTENT, NAME, ADM_NUM)
VALUES (SEQ_FAQ_NUM.NEXTVAL, '���� ��� ���', 'ȯ���� ��� ����ǳ���?',      '�迵��', '2');
INSERT INTO FAQ(FAQ_NUM, TITLE, CONTENT, NAME, ADM_NUM)
VALUES (SEQ_FAQ_NUM.NEXTVAL, '��� ��ȸ',      '��ǰ ��� ��ȸ�� ���?',      '�̹�ȣ', '3');

/* REVIEW */
INSERT INTO REVIEW(REV_NUM, CONTENT, NAME, USER_NUM, PRD_NUM)
VALUES (SEQ_REV_NUM.NEXTVAL, '��ǰ�� ���� �����������ϴ�!', 'ȫ�浿', '1', '1');
INSERT INTO REVIEW(REV_NUM, CONTENT, NAME, USER_NUM, PRD_NUM)
VALUES (SEQ_REV_NUM.NEXTVAL, 'å�� �ʹ� ����־��.',     '�迵��', '2', '2');
INSERT INTO REVIEW(REV_NUM, CONTENT, NAME, USER_NUM, PRD_NUM)
VALUES (SEQ_REV_NUM.NEXTVAL, 'Ƽ������ ���� ������.',     '�̹�ȣ', '3', '3');

/* TRADES */
INSERT INTO TRADES(TRADE_ID, BUYER_ID, TRADE_STATUS, TRADE_DATE, PRD_NUM)
VALUES ((select email from users where user_num=1),
				(select email from users where user_num=2), '�ŷ��Ϸ�', SYSDATE, 1);
INSERT INTO TRADES(TRADE_ID, BUYER_ID, TRADE_STATUS, TRADE_DATE, PRD_NUM)
VALUES ((select email from users where user_num=2),
				(select email from users where user_num=3), '�Ǹ���',  SYSDATE, 2);
INSERT INTO TRADES(TRADE_ID, BUYER_ID, TRADE_STATUS, TRADE_DATE, PRD_NUM)
VALUES ((select email from users where user_num=3),
				(select email from users where user_num=1), '������',SYSDATE, 3);

/* PAYMENTS */
INSERT INTO PAYMENTS(PATMENT_ID, AMOUNT, METHOD, PATMENT_DATE, TRADE_ID)
VALUES ((select TRADE_ID from TRADES where BUYER_ID='younghee@example.com'),
				900000, 'ī�����', SYSDATE,
				(select TRADE_ID from TRADES where TRADE_ID='hong@example.com'));
INSERT INTO PAYMENTS(PATMENT_ID, AMOUNT, METHOD, PATMENT_DATE, TRADE_ID)
VALUES ((select TRADE_ID from TRADES where BUYER_ID='minho@example.com'),
				20000,  '������ü', SYSDATE,
				(select TRADE_ID from TRADES where TRADE_ID='hong@example.com'));
INSERT INTO PAYMENTS(PATMENT_ID, AMOUNT, METHOD, PATMENT_DATE, TRADE_ID)
VALUES ((select TRADE_ID from TRADES where BUYER_ID='younghee@example.com'),
				15000,  '�޴�������', SYSDATE,
				(select TRADE_ID from TRADES where TRADE_ID='minho@example.com'));

/* FAVORITE */
INSERT INTO FAVORITE(FAV_NUM, PRD_NUM, USER_NUM)
VALUES (SEQ_FAV_NUM.NEXTVAL, 1, 1);
INSERT INTO FAVORITE(FAV_NUM, PRD_NUM, USER_NUM)
VALUES (SEQ_FAV_NUM.NEXTVAL, 2, 2);
INSERT INTO FAVORITE(FAV_NUM, PRD_NUM, USER_NUM)
VALUES (SEQ_FAV_NUM.NEXTVAL, 3, 3);

/* INQUIRY */
INSERT INTO INQUIRY(INQ_NUM, TITLE, CONTENT, NAME, USER_NUM, ADM_NUM)
VALUES (SEQ_INQ_NUM.NEXTVAL, '��ǰ ����',     '���� �ɼ� �߰� �����ұ��?',   'ȫ�浿', 1, 1);
INSERT INTO INQUIRY(INQ_NUM, TITLE, CONTENT, NAME, USER_NUM, ADM_NUM)
VALUES (SEQ_INQ_NUM.NEXTVAL, '��� ��û',     '�ֹ� ��� ��� �ϳ���?',     '�迵��', 2, 2);
INSERT INTO INQUIRY(INQ_NUM, TITLE, CONTENT, NAME, USER_NUM, ADM_NUM)
VALUES (SEQ_INQ_NUM.NEXTVAL, '��ȯ ����',     '������ ��ȯ �����Ѱ���?',       '�̹�ȣ', 3, 3);

/* ANSWER */
INSERT INTO ANSWER(INQ_NUM, TITLE, CONTENT, NAME)
VALUES (1, 'Re: ��ǰ ����', '��, ���� �ɼ� ��� �� �߰��˴ϴ�.', (select name from admin where adm_num=1));
INSERT INTO ANSWER(INQ_NUM, TITLE, CONTENT, NAME)
VALUES (2, 'Re: ��� ��û', '���������� > �ֹ��������� �����մϴ�.', (select name from admin where adm_num=2));
INSERT INTO ANSWER(INQ_NUM, TITLE, CONTENT, NAME)
VALUES (3, 'Re: ��ȯ ����', '������ ��ȯ ��û�� �ۼ� ��Ź�帳�ϴ�.', (select name from admin where adm_num=3));

/* IMAGE */
INSERT INTO IMAGE(IMG_NUM, SUB_IMAGE1, SUB_IMAGE2, SUB_IMAGE3, SUB_IMAGE4, IMAGE_TYPE)
VALUES (SEQ_IMG_NUM.NEXTVAL, '/img/p1_1.jpg', '/img/p1_2.jpg', '/img/p1_3.jpg', '/img/p1_4.jpg', 1);
INSERT INTO IMAGE(IMG_NUM, SUB_IMAGE1, SUB_IMAGE2, SUB_IMAGE3, SUB_IMAGE4, IMAGE_TYPE)
VALUES (SEQ_IMG_NUM.NEXTVAL, '/img/p2_1.jpg', '/img/p2_2.jpg', '/img/p2_3.jpg', '/img/p2_4.jpg', 1);
INSERT INTO IMAGE(IMG_NUM, SUB_IMAGE1, SUB_IMAGE2, SUB_IMAGE3, SUB_IMAGE4, IMAGE_TYPE)
VALUES (SEQ_IMG_NUM.NEXTVAL, '/img/p3_1.jpg', '/img/p3_2.jpg', '/img/p3_3.jpg', '/img/p3_4.jpg', 1);

/* EVENT */
INSERT INTO EVENT(EVT_NUM, TITLE, CONTENT, NAME, START_DATE, END_DATE, ADM_NUM)
VALUES (SEQ_EVT_NUM.NEXTVAL, '7�� ����', '7�� �� �ް� �� ��ǰ 10% ����',
				(SELECT NAME FROM ADMIN WHERE ADM_NUM=1), SYSDATE, SYSDATE+30, 1);
INSERT INTO EVENT(EVT_NUM, TITLE, CONTENT, NAME, START_DATE, END_DATE, EVT_TYPE, ADM_NUM)
VALUES (SEQ_EVT_NUM.NEXTVAL, '��������', '�л��� ���� �� �߰� ����',
				(SELECT NAME FROM ADMIN WHERE ADM_NUM=2), SYSDATE, SYSDATE+15, 2, 2);
INSERT INTO EVENT(EVT_NUM, TITLE, CONTENT, NAME, START_DATE, END_DATE, EVT_TYPE, ADM_NUM)
VALUES (SEQ_EVT_NUM.NEXTVAL, '�ѱ۳� ���', '�ѱ۳� ���� ���� �� ��ǰ ��÷',
				(SELECT NAME FROM ADMIN WHERE ADM_NUM=3),
				TO_DATE('2025-10-09','YYYY-MM-DD'), TO_DATE('2025-10-09','YYYY-MM-DD'), 3, 3);

/* ADDRESS */
INSERT INTO ADDRESS(ADDR_NUM, NAME, RECIPIENT_NAME, TEL, ZIPCODE, ADDRESS, USER_NUM)
VALUES (SEQ_ADDR_NUM.NEXTVAL, '��',     'ȫ�浿',    '010-1111-1111', '12345', '���� ������ ���ﵿ 123-45', 1);
INSERT INTO ADDRESS(ADDR_NUM, NAME, RECIPIENT_NAME, TEL, ZIPCODE, ADDRESS, USER_NUM)
VALUES (SEQ_ADDR_NUM.NEXTVAL, 'ȸ��',   '�迵��',    '010-2222-2222', '23456', '��� ������ �д籸 ������ 67-89', 2);
INSERT INTO ADDRESS(ADDR_NUM, NAME, RECIPIENT_NAME, TEL, ZIPCODE, ADDRESS, USER_NUM)
VALUES (SEQ_ADDR_NUM.NEXTVAL, 'ģ����','�̹�ȣ',    '010-3333-3333', '34567', '��õ ������ ������ 12-34',    3);

/* REPORT */
INSERT INTO REPORT(REP_NUM, TITLE, CONTENT, NAME, REPORT_TYPE, USER_NUM)
VALUES (SEQ_REP_NUM.NEXTVAL, '���� �޽���', '���� �޽��� ����',    'ȫ�浿', 1, 1);
INSERT INTO REPORT(REP_NUM, TITLE, CONTENT, NAME, REPORT_TYPE, USER_NUM)
VALUES (SEQ_REP_NUM.NEXTVAL, '�ҷ� ��ǰ',   '��ǰ�� �ļյǾ� ����',   '�迵��', 2, 2);
INSERT INTO REPORT(REP_NUM, TITLE, CONTENT, NAME, REPORT_TYPE, USER_NUM)
VALUES (SEQ_REP_NUM.NEXTVAL, '��� ����',   '����� ������ ������',   '�̹�ȣ', 3, 3);

commit;
