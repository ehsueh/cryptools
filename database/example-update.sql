use `cryptools`;

# Show table content
select * from `exchange`;
select * from order_summary;
select * from position;

# Update order details
update order_summary set filled_amount = 0 where id = 2;
update order_summary set filled_amount = 0.01 where id = 3;
