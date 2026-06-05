select count(distinct s.transaction_id) as payment_count from transactions as t
join transactions s
on 
t.transaction_id!=s.transaction_id
and
t.credit_card_id=s.credit_card_id and t.merchant_id=s.merchant_id and s.transaction_timestamp between t.transaction_timestamp and t.transaction_timestamp+'00:10:00' and t.amount=s.amount
