select ord.id as "Id ������"
     , ord.DATE_ORDER as "���� ������"
     , ord.product_name as "���������"
     , ord.amount as "����������"
from customers cus 
  join orders ord on (cus.id = ord.customers_id)
  where lower(cus.name) = 'alexey'
  order by ord.id, ord.date_order;