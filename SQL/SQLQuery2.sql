CREATE VIEW TerritoriesStatisticsBasedOnRegion AS
SELECT r.RegionDescription, COUNT(T.TerritoryID) as 'Territories count'
FROM Region as r
join Territories as T
on r.RegionID = t.RegionID
group by r.RegionID, r.RegionDescription

select *
from TerritoriesStatisticsBasedOnRegion



CREATE VIEW GetCustomerByCountryOrCity AS
select c.CustomerID, c.ContactName, c.Country,c.City
from Customers as c

select *
from GetCustomerByCountryOrCity
