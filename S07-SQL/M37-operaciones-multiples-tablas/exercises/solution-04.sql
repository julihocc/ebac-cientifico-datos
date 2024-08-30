-- Utiliza las tablas Production.Product y Production.ProductReview para crear
-- una consulta que muestre el nombre del producto (Name) y el comentario de 
-- la reseña (Comments). Incluye todos los productos y todas las reseñas, 
-- incluso si no coinciden usando un FULL OUTER JOIN.

SELECT 
    p.Name, 
    pr.Comments
FROM 
    [AdventureWorks2022].[Production].[Product] p
FULL OUTER JOIN 
    [AdventureWorks2022].[Production].[ProductReview] pr
ON 
    p.ProductID = pr.ProductID;