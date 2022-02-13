/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

-- cross join + where clause
select first_name, last_name, sum(amount) AS "sum" 
from staff, payment 
where (staff.staff_id=payment.staff_id) 
and payment.payment_date between '2020-01-01 00:00:00' AND '2020-02-01 00:00:00' 
group by staff.first_name, staff.last_name;
