INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1959' , 1959 , 'Código de balcão da conta.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1960' , 1960 , 'Código de Produto + Sequência + Check Digit', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1967' , 1967 , 'As Datas de Início e de Fim de validade indicam o período no decorrer do qual a ordem será executada. A Data de Fim de validade, quando preenchida, tem que ser maior ou igual que a Data de Início.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1968' , 1968 , 'Este campo, quando preenchido, tem que ser maior que 0 e menor que 32.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1985' , 1985 , 'As Datas de Início e de Fim de validade indicam o período no decorrer do qual a ordem será executada. A Data de Início é de preenchimento obrigatório e tem que ser maior ou igual que a data do dia, mas para Tipo de Ordem "04" tem que ser obrigatoriamente maior que data do dia.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1988' , 1988 , 'O número de ordem é o que a identifica inequivocamente e trata-se de um número sequencial, por conta D.O.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1989' , 1989 , 'O preenchimento deste campo só é permitido e obrigatório quando ambos os indicadores de Total de Capital e Total do Benefíco Fiscal são preenchidos com o valor "N" ou quando o Tipo Ordem é 04.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1993' , 1993 , 'Número de movimentos pretendidos para a ordem. Este campo, quando preenchido, implica o não preenchimento da data de fim de validade da ordem e vice versa.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2031' , 2031 , 'Sincronização da primeira duração das apólices data de limite. Quando alterado só terá efeito sobre propostas novas.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2486' , 2486 , 'Número de movimentos pretendidos para a ordem. Este campo, quando preenchido, implica o não preenchimento da data de fim de validade da ordem e vice versa.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2660' , 2660 , 'Consulte a transacção da emulação TX21.', 'PT');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2661' , 2661 , 'Consulte a transacção da emulação TX08.', 'PT');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1971' , 1971 , ' A periodicidade indica de quanto em quanto tempo a ordem é executada. O código de periodicidade está restringido antecipadamente por uma lista pré-definida, existente na "Tabela 156". Sempre que a periodicidade não seja indicada, assume-se que se trata de uma     ordem pontual, independentemente das datas de início e fim.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1972' , 1972 , 'Só é permitida a modificação para o estado de "CA" (Cancelado).', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1974' , 1974 , 'Total de Capital e Total do Benefício Fiscal', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527' , 2527 , 'Deve ser preenchido com o respetivo código, em função do tipo de subjacente do instrumento financeiro derivado.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1987#01' , 1987 , 'CPH', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1987#02' , 1987 , 'Empréstimo', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1987#03' , 1987 , 'Empréstimo', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H1987#04' , 1987 , 'Fundo', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2661' , 2661 , 'Consulte a transacção da emulação TX08.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#ACC' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com o seguinte código:- "ACC", para acções.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#IND' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com o seguinte código:- "IND", para índices.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#TJC' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com o seguinte código:- "TJC", para taxas de juro de curto prazo (inferior a 1 ano);', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#TCB' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com os seguinte código:- "TCB", para taxas de juro de médio e longo prazo.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#CDV' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com os seguinte código:- "CDV", para contratos derivados.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#MEC' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com os seguinte código:- "MEC", para mercadorias.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2527#OUT' , 2527 , 'Tipo de subjacente do instrumento financeiro derivado deve ser preenchido com os seguinte código:- "OUT", para outros subjacentes não específicados anteriormente.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#DIA' , 2683 , 'DIA - Cotação é diária ', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#1WK' , 2683 , '1WK - Cotação é semanal', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#2WK' , 2683 , '2WK - Cotação é quinzena', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#M00' , 2683 , 'M00 - Cotação é mensal', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#02M' , 2683 , '02M - Cotação é bimestral', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#03M' , 2683 , '03M - Cotação é trimestral', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#04M' , 2683 , '04M - Cotação é quadrimestral', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#06M' , 2683 , '06M - Cotação é semestral', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2683#12M' , 2683 , '12M - Cotação é Anual', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#1' , 2627 , 'ACT/ACT: Pays based on actual number of days in the interest accrual period divided by actual number of days in the year.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#2' , 2627 , 'ACT/360: Pays based on actual number of days in the interest accrual period divided by 360.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#3' , 2627 , 'ACT/365: Pays based on actual number of days in the interest accrual period divided by 365.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#4' , 2627 , '30/ACT: Pays based on 30 calendar days in the interest accrual period divided actual number of days in the year.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#5' , 2627 , '30/360: Pays based on 30 calendar days in the interest accrual period divided by 360.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#6' , 2627 , '30/365: Pays based on 30 calendar days in the interest accrual period divided by 365.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#7' , 2627 , 'NL/ACT: NL = no leap convention. In leap years, February 29th is not counted in the numerator.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#8' , 2627 , 'NL/360: NL = no leap convention. In leap years, February 29th is not counted in the numerator.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#9' , 2627 , 'NL/365: NL = no leap convention. In leap years, February 29th is not counted in the numerator.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#10' , 2627 , 'ACT/ACT NON-EOM: Pays based on actual number of days in the interest accrual period divided by actual number of days in the year. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#11' , 2627 , 'ACT/360 NON-EOM: Pays based on actual number of days in the interest accrual period divided by 360. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#12' , 2627 , 'ACT/365 NON-EOM: Pays based on actual number of days in the interest accrual period divided 365. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#13' , 2627 , '30/ACT NON-EOM: Pays based on 30 calendar days in the interest accrual period divided actual number of days in the year. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#14' , 2627 , '30/360 NON-EOM: Pays based on 30 calendar days in the interest accrualperiod divided by 360. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#15' , 2627 , '30/365 NON-EOM: Pays based on 30 calendar days in the interest accrual  period divided by 365. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th ', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#16' , 2627 , 'NL/ACT NON-EOM: NL = no leap convention. In leap years, February 29th is not counted in the numerator. SAME RULES ABOVE FOR NON-EOM WHERE ACT IS THE DENOMINATOR.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#17' , 2627 , 'NL/360 NON-EOM: NL = no leap convention. In leap years, February 29th is not counted in the numerator. SAME RULES ABOVE FOR NON-EOM WHERE 360 IS THE DENOMINATOR.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#18' , 2627 , 'NL/365 NON-EOM: NL = no leap convention. In leap years, February 29th is not counted in the numerator. SAME RULES ABOVE FOR NON-EOM WHERE 365 IS THE DENOMINATOR.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#19' , 2627 , 'ISMA-30/ACT: Follows the International Securities Marketing AssociationStandards. Treats the 31st of the month as the 30th. Pays based on 30 calendar days in the accrual period divided by the actual number of days', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#20' , 2627 , 'ISMA-30/360: Follows the International Securities Marketing AssociationStandards. Treats the 31st of the month as the 30th. Pays based on 30 calendar days in the accrual period divided by 360.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#21' , 2627 , 'ISMA-30/365: Follows the International Securities Marketing Association Standards. Treats the 31st of the month as the 30th. Pays based on 30 calendar days in the accrual period divided by 365.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#22' , 2627 , 'ISMA30/ACT NON-EOM: Follows the International Securities Marketing Association Standards. Treats the 31st of the month as the 30th. Used when pay dates fall on the last day of one month but not in another.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#23' , 2627 , 'ISMA-30/360 NON-EO: Follows the International Securities Marketing Association Standards. Treats the 31st of the month as the 30th. Used when pay dates fall on the last day of one month but not in another.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#24' , 2627 , 'ISMA30/365 NON-EOM: Follows the International Securities Marketing Association Standards. Treats the 31st of the month as the 30th. Used when pay dates fall on the last day of one month but not in another.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#27' , 2627 , 'ACT/364: Pays based on 30 calendar days in the interest accrual period  divided by 364. Relevant for Sri Lanka T-Bills - EOM', '');	  
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#29' , 2627 , 'US MUNI: 30/360: Applies to munis that accrue from 2/28/02. EOM', '');	  
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#30' , 2627 , 'ACT/364 NON-EOM: Pays based on actual number of days in the interest accrual period divided by 364. Used when the pay dates fall on the last day in one month but not in another. Ex. the bond pays March 30th and September 30th. Relavent for Sri Lanka T-Bills', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#32' , 2627 , 'MUNI30/360 NON-EOM: Applies to munis that accrue from 2/28/02; Used when pay dates fall on the last day of one month but not in another.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#33' , 2627 , 'BUSINESS DAYS/252: Applies to Brazilian securities.The daycount method is based on the number of business days in the accrual period. Each year  is considered to have 12 months of 21 busines days, giving denominator of 252 business days, If a bond matures on a non-business day', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#35' , 2627 , 'GERMAN:30/360: Treats the last day of the month of February as the 30th of the month. Follows EOM convention ', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#36' , 2627 , 'BUSINESS DAYS/252: Applies to Brazilian securities.The daycount method is  based on the number of business days in the accrual period. Each year is considered to have 12 months of 21 busines days, giving denominator of 252 business days, If a bond matures on a non-business day', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#38' , 2627 , 'GER:30/360 NON-EOM: Treats the last day of the month of February as the 30th of the month; Used when pay dates fall on the last day in one month, but not in another.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#40' , 2627 , 'US:WIT ACT/ACT: Daycount for when-issued US treasury bonds. Follows NON-EOM convention', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#41' , 2627 , 'US:WIB ACT/360: Daycount for when-issued US treasury bills. Follow NON-EOM convention', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#101' , 2627 , 'ACT/ACT(101): Pays based on actual number of days in the interest accrual period divided by actual number of days in the year.', 'PT');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#102' , 2627 , 'ACT/360(102): Pays based on actual number of days in the interest accrual period divided by 360.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#103' , 2627 , 'ACT/365(103): Pays based on actual number of days in the interest accrual period divided by 365.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#104' , 2627 , '30/360(104): Pays based on 30 calendar days in the interest accrual period divided by 360.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#105' , 2627 , 'ACT/ACT(105): Pays based on actual number of days in the interest accrual period divided by actual number of days in the year. Paydays are not adjusted for non-business days in accrual interest calculations.  Follows EOM convention', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#106' , 2627 , 'ACT/360(106): Pays based on actual number of days in the interest accrual period divided by 360. Paydays are not adjusted for non-business days in accrual interest calculations. Follows EOM convention.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#107' , 2627 , 'ACT/365(107): Pays based on actual number of days in the interest accrual period divided by 365. Paydays are not adjusted for non-business days in accrual interest calculations. Follows EOM convention.', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#108' , 2627 , 'ACT/360(108): No Longer Used', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#131' , 2627 , '30/360: 131 is the daycount for 30/360 ISMA. Follows EOM convention', '');
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2627#900' , 2627 , 'Base de Calculo Livre(Dias/Meses)', '');                                     
INSERT INTO "DB2PTUSER"."AB_WEB_CORE_ERRORCODES" (IDERRO, CAPLIC, COPCAO, CODERRO, MENSAGEM, CODPAIS) VALUES ((SELECT MAX(IDERRO)+1 FROM "DB2PTUSER"."AB_WEB_CORE_ERRORCODES"), 'ABWB', 'H2631' , 2631 , 'CÓDIGO T1:
Tabela de Preço
de        até         TICK SIZE
  0        0,2500     0,0005
  0,251    2,500      0,001
  2,505   10,010      0,005
>10,01    ---         0,01

CÓDIGO T2:
Tabela de Preço
de        até         TICK SIZE
  0        9,999      0,001
 10,000    ---        0,005

 CÓDIGO T3:
Tabela de Preço
de        até         TICK SIZE
  0        0,9995     0,0005
  1,000    9,9999     0,001
 10,0000   ---        0,005

 CÓDIGO T4:
Tabela de Preço
de        até         TICK SIZE
   0        9,99       0,01
  10,00   199,9        0,1
 200,00   499,75       0,25
 500,00   999,5        0,5
1000,00    ---         1,0

CÓDIGO T5:
Tabela de Preço
de        até         TICK SIZE
 0,0000  0,2449       0,00010
 0,2500  0,9995       0,00050
 1,0000  1,9990       0,00100
 2,0000  4,9975       0,00250
 5,0000  9,9950       0,00500
10,0000  ---          0,00100

CÓDIGO T6:
Tabela de Preço
de          até         TICK SIZE
   0,0000   14,9950     0,00500
  15,0000   39,9900     0,01000
  40,0000  149,9500     0,05000
 150,0000  499,8750     0,12500
 500,0000 4999,7500     0,25000
5000,0000    ---        0,50000


CÓDIGO T7:
Tabela de Preço
de        até          TICK SIZE
  0,0000   14,9900     0,01000
 15,0000   49,9500     0,05000
 50,0000   99,9000     0,10000
100,0000  249,7500     0,25000
250,0000  499,5000     0,50000
500,0000    ---        1,00000

CÓDIGO T8:
Tabela de Preço
de              até       TICK SIZE
    0,0000      4,9900    0,01000
    5,0000      9,9500    0,05000
   10,0000     49,9000    0,10000
   50,0000    249,7500    0,25000
  250,0000    499,5000    0,50000
  500,0000   4999,0000    1,00000
 5000,0000  19990,0000   10,00000
20000,0000    ---       100,00000

CÓDIGO T9:
Tabela de Preço
de          até        TICK SIZE
   0,0000     9,9900   0,01000
  10,0000   499,7500   0,25000
 500,0000   999,5000   0,50000
1000,0000    ---       1,00000

CÓDIGO TA:
Tabela de Preço
de           até        TICK SIZE
   0,0000     99,9950   0,00500
 100,0000    249,9900   0,01000
 250,0000    499,9750   0,02500
 500,0000    999,9500   0,05000
1000,0000   4999,9000   0,10000
5000,0000    ---        0,50000

CÓDIGO TB:
Tabela de Preço
de        até         TICK SIZE
 0,0000    49,9900    0,00100
50,0000    ---        0,05000
CÓDIGO F1: TICK SIZE fixo de 0,005
CÓDIGO F3: TICK SIZE fixo de 0,001
CÓDIGO F4: TICK SIZE fixo de 0,0001
CÓDIGO F5: TICK SIZE fixo de 0,5
CÓDIGO F6: TICK SIZE fixo de 0,1
CÓDIGO F7: TICK SIZE fixo de 0,05

CÓDIGO G1: TICK SIZE fixo de 0,25

Nota:Bolsa 14 os preços são convertidos em pences.' , '');


ROLLBACK;