--All data
select * 
from Billionaires..Billionaires
order by 11 desc

--Some selective data
select name, age, net_worth, industry, gender
from Billionaires..Billionaires
where Net_Worth >= 50
order by 3 desc

--By continent
select Continent, sum(1) as NumberOfBillionaires
from Billionaires..Billionaires
where continent is not null
group by continent
order by NumberOfBillionaires desc

--By country
select Country, sum(1) as NumberOfBillionaires
from Billionaires..Billionaires
--where Country is not null
group by Country
order by NumberOfBillionaires desc

--By industry
select industry, sum(1) as NumberInIndustry
from Billionaires..Billionaires
--where Country is not null
group by Industry
order by NumberInIndustry desc

--By Gender
select gender, sum(1) as BillionairesByGender
from Billionaires.dbo.Billionaires
where gender is not null
group by Gender
order by BillionairesByGender







