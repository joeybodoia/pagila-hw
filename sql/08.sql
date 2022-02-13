/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */


-- cross join + where clause
select first_name, last_name, address AS "street_address" from staff, address where (staff.address_id=address.address_id) order by last_name;

-- inner join
-- select first_name, last_name, address AS "street_adress" from staff join adress on (staff.address_id=address.address_id) order by last_name;
