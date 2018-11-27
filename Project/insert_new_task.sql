USE `Project`;

# Создание новой задачи пользователем

INSERT
  INTO tasks (
    name,
    description,
    price,
    begin_dttm,
    end_dttm,
    location,
    user_id,
    category_id,
    status_id,
    type_of_payment_id
  )
  VALUES (
    'Прибить полку к стене',
    'Нужно срочно прибить полку к стене. С меня полка и стена, с вас гвозди и молоток.',
    1000.0,
    '2018-02-12 00:00:00',
    '2018-03-12 23:59:59',
    POINT(55.930929199999994, 37.521546199999996),
    12,
    1,
    2,
    2
  )
