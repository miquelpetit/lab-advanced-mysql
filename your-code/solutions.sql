-- Challenge 1

select titleauthor.`au_id`, 
titleauthor.`title_id`, 
sum(advance + titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) 
as totalprofit
from titleauthor
join sales on sales.`title_id` = titleauthor.`title_id`
join titles on titles.`title_id` = titleauthor.`title_id`
group by titleauthor.`au_id`, titleauthor.`title_id`
order by totalprofit desc
limit 3;

-- Challenge 2

create temporary table publi_sales_royalty
select titleauthor.`au_id`, 
titles.`title_id`, 
sum(advance + titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) 
as totalprofit
from sales
join titleauthor on sales.`title_id` = titleauthor.`title_id`
join titles on sales.`title_id` = titles.`title_id;

-- Challenge 3
CREATE TABLE most_profiting_authors (
au_id VARCHAR(11),
profits INT(11),

PRIMARY KEY(au_id)
);
