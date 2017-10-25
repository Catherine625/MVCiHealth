/*��PATIENT��Ϊ��������������ѯ�����������û���*/
SELECT
[P].[PATIENT_ID] AS [ID],
[P].PATIENT_NM AS [NAME],
[G].[GROUP_NM] AS [GROUP]
FROM
[PATIENT] AS [P]
LEFT JOIN [USERINFO] AS [U]/*������ʾ��*/
ON [U].[USER_ID]=[P].PATIENT_ID
RIGHT JOIN [GROUPINFO] AS [G]/*������ʾ��*/
ON [G].GROUP_ID=[U].GROUP_ID
WHERE
[P].PATIENT_NM='����'
/*���ѯ����*/
UNION
/*��DOCTOR��Ϊ��������������ѯ�����������û���*/
SELECT
[D].[DOCTOR_ID] AS [ID],
[D].[DOCTOR_NM] AS [NAME],
[G].[GROUP_NM] AS [GROUP]
FROM
[DOCTOR] AS [D]
INNER JOIN [USERINFO] AS [U]/*������ʾ��*/
ON [U].[USER_ID]=[D].DOCTOR_ID
FULL JOIN [GROUPINFO] AS [G]/*ȫ����ʾ��*/
ON [G].GROUP_ID=[U].GROUP_ID
WHERE
[D].DOCTOR_NM='����'