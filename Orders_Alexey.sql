select ord.id as "Id заказа"
     , ord.DATE_ORDER as "Дата заказа"
     , ord.product_name as "Продукция"
     , ord.amount as "Количество"
from customers cus 
  join orders ord on (cus.id = ord.customers_id)
  where lower(cus.name) = 'alexey'
  order by ord.id, ord.date_order;