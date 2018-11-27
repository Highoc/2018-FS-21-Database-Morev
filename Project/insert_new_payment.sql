USE `Project`;

# Оплата пользователем сделанной задачи

BEGIN;
  SELECT @A:=price FROM tasks WHERE id=388;
  INSERT INTO payments (
    seller_id,
    buyer_id,
    dttm,
    sum,
    task_id
  )
  VALUES (
    51,
    186,
    NOW(),
    @A,
    388
  );

  UPDATE users SET balance = balance + @A WHERE id=51;
  UPDATE users SET balance = balance - @A WHERE id=186;
COMMIT;
