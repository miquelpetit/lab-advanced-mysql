-- Challenge 1

select titleauthor.`au_id`, titleauthor.`title_id`, sum(advance + titles.price * sales.qty * titles.royalty / 100 * titleauthor.royaltyper / 100) as totalprofit
from titleauthor
join sales on sales.`title_id` = titleauthor.`title_id`
join titles on titles.`title_id` = titleauthor.`title_id`
group by titleauthor.`au_id`, titleauthor.`title_id`
order by sales_royalty desc
limit 3;

-- Challenge 2

