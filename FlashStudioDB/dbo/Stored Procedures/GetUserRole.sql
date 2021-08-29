-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetUserRole
	-- Add the parameters for the stored procedure here
	@userEmail nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT U.ID,U.Email,U.[Password],UR.AccessRoutes from [dbo].[Users] U
	INNER JOIN [dbo].UserRole UR ON U.[Role]= UR.ID 
	where Email = @userEmail
END
