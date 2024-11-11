/*
DETYRA: Të krijohet trigeri që kryen AFTER UPDATE në një tabelë tjetër Audit ku ruhet:
-	Vlera e kaluarë e një fushe të caktuarë
-	Vlera aktuale e fushes së caktuarë
-	Tregohet update time
-	Prej cilit shfrytëzues është bërë ndryshim
-	Prej cilit kompjuter është bërë ndryshim
*/

SELECT * FROM Pasagjeret


--Krijimi i Tabeles Audit

CREATE TABLE PasagjeretAudit
(	
	ID_Pasagjeri int NOT NULL,
	KohaUpdate datetime NOT NULL,
	ModifikimiUserPC nvarchar(100) NOT NULL,
	VleraKaluar smallint NULL, 
	VleraAktuale smallint NULL
)
GO


--Krijimi i Triggerit

CREATE TRIGGER TR_Pasagjeret_Update
ON Pasagjeret
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;  
	INSERT PasagjeretAudit(ID_Pasagjeri, KohaUpdate, ModifikimiUserPC, VleraKaluar, VleraAktuale)
	SELECT inserted.ID_Pasagjeri, SYSDATETIME(), ORIGINAL_LOGIN(), deleted.Nr_Pasaportes, inserted.Nr_Pasaportes
	FROM deleted
	INNER JOIN inserted
	ON deleted.ID_Pasagjeri = inserted.ID_Pasagjeri
	WHERE deleted.Nr_Pasaportes > 1000 OR inserted.Nr_Pasaportes > 1000
END
GO


--Update dhe Selekti

UPDATE Pasagjeret
SET Nr_Pasaportes = 7295
WHERE ID_Pasagjeri BETWEEN 92020 AND 96020
SELECT * FROM PasagjeretAudit


--Fshirja e Tabeles dhe Triggerit

DROP TABLE PasagjeretAudit
DROP TRIGGER TR_Pasagjeret_Update