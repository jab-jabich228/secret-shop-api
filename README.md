Модели

1. Bomb 

у каждой бомбы есть:

name — название
damage — урон
price — цена
stock — количество
potion_id — связанное зелье

2. Potion

У каждого зелья есть:

name — название
effect — эффект
price — цена
duration — длительность

модели связаны, у одного зелья может быть несколько бомб, а каждая бомба связана с одним зельем (бомбы получают эффекты зелий)

API-маршруты

для бомб сделал создание, просмотр, изменение и удаление. Для зелий только просмотр

GET /api/bombs — Получить список всех бомб

GET /api/bombs/:id — Получить одну бомбу по ID

POST /api/bombs — Создать новую бомбу

PATCH /api/bombs/:id — Изменить существующую бомбу

DELETE /api/bombs/:id — Удалить бомбу

GET /api/potions — Получить список всех зелий

GET /api/potions/:id — Получить одно зелье по ID

Как запустить

Нужно открыть терминал в папке проекта и выполнить:

bundle install
bin/rails db:prepare
bin/rails db:seed
bin/rails server

После запуска можно открыть в браузере:

http://localhost:3000/api/bombs

http://localhost:3000/api/potions

Там будут данные в формате JSON.

Примеры запросов

Получить все бомбы:

curl http://localhost:3000/api/bombs

Получить все зелья:

curl http://localhost:3000/api/potions

Создать новую бомбу:

curl -X POST http://localhost:3000/api/bombs \
  -H "Content-Type: application/json" \
  -d '{"bomb":{"name":"Thunder Bomb","damage":120,"price":400,"stock":3,"potion_id":1}}'

Изменить цену бомбы с ID 1:

curl -X PATCH http://localhost:3000/api/bombs/1 \
  -H "Content-Type: application/json" \
  -d '{"bomb":{"price":500}}'

Удалить бомбу с ID 1:

curl -X DELETE http://localhost:3000/api/bombs/1
