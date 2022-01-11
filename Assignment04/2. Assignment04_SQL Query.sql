-- SELEKTO TABELAT E DATABAZES AEROPORTI

SELECT * FROM Aeroplani
SELECT * FROM Aeroporti
SELECT * FROM Fluturimet
SELECT * FROM Kompanit
SELECT * FROM Pasagjeret

/*
1. Të bëhet krijimi i një procedure e cila kryen trajtim të errorit për një transaksion të caktuarë.
*/

CREATE PROCEDURE PasagjeretAeroplaniErrorHandling
@ID_Pasagjeri int,
@Emri nvarchar(25),
@Mbiemri nvarchar(25),
@Datelindja date,
@Vendlindja nvarchar(25),
@Nr_Pasaportes smallint,
@Nr_Uleses smallint,
@Statusi bit
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			INSERT INTO Pasagjeret(ID_Pasagjeri, Emri, Mbiemri, Datelindja, Vendlindja, Nr_Pasaportes, Nr_Uleses, Statusi)
			VALUES(@ID_Pasagjeri, @Emri, @Mbiemri, @Datelindja, @Vendlindja, @Nr_Pasaportes, @Nr_Uleses, @Statusi)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		PRINT Error_Number();
		PRINT Error_Message();
		ROLLBACK TRAN
	END CATCH
END
GO

EXEC PasagjeretAeroplaniErrorHandling
	@ID_Pasagjeri = 13020,
	@Emri = 'Shpresa',
	@Mbiemri = 'Ymeri',
	@Datelindja = '1992-10-08',
	@Vendlindja = 'North Macedonia',
	@Nr_Pasaportes = 1248,
	@Nr_Uleses = 125,
	@Statusi = 1
GO

SELECT * FROM Pasagjeret

/*
2. Të bëhet një ushtrim duke përdorur komandën WHILE
*/

DECLARE @ID_Fluturimi AS int = 1011, @Kodi_Fluturimit AS nvarchar(15);
WHILE @ID_Fluturimi <= 1015
   BEGIN
	SELECT @Kodi_Fluturimit = Kodi_Fluturimit FROM Fluturimet
		WHERE ID_Fluturimi = @ID_Fluturimi;
	PRINT @Kodi_Fluturimit;
	SET @ID_Fluturimi += 1;
   END
GO

SELECT * FROM Fluturimet

/*
3. Të bëhet një ushtrim duke përdorur komandën IF ELSE
*/

DECLARE @Koha_Arritjes date, @Koha_Valide date;
SET @Koha_Arritjes = (SELECT Koha_Arritjes FROM Fluturimet WHERE ID_Fluturimi = 1016);
SET @Koha_Valide = '2020-02-03';
IF @Koha_Arritjes < @Koha_Valide
	PRINT 'Koha e Arritjes gjatë fluturimit nuk është e validueshme me datën 03 Shkurt, 2020';
ELSE
	PRINT 'Koha e Arritjes gjatë fluturimit është e validueshme me datën 03 Shkurt, 2020';
GO

SELECT * FROM Fluturimet