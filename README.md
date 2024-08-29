## Описание 

Сущность `product`:
* имеет связь многие со многими с `colors`
* поле `name` обязательное

Сущность `сolor`:
* поле `name` обязательное
* имеет поле `name` которая хранит название цвета в :symbols


# Задание
Валидация рубокопа!

Сущность `product`:
* валидация наличия `name`
* валидация длинны `name` от 3х до 5ти символов


Сущность `colors`:
* валидация наличия `name`
* наличие метода `hex` который по названию будет возвращать HEX
Пример: 
``` 
color.name # :black 
color.hex # #000000

color.name # :green
color.hex # #008000

color.name # :silver
color.hex # #c0c0c0

color.name # :white
color.hex # #ffffff
```

### ProductController

* `show` - возврашает информацию по id о товаре включая HEX цветов
* `search` - поиск по названию
* `union_colors` - возвращает общие цвета для нескольких товаров

### ColorController
* `union_product` - возвращает общие товары для нескольких цветов 