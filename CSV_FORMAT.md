#### Формат стартового списка в CSV

|Категория|Номер|Имя|Ник|ГР|Команда|Город|Телефон|Емейл|Старт 1|Старт 2|Старт ...|Старт 6|Комментарий|
|------------|-------|-----|-----|--|----------|--------|---------|-------|--------|---------|---------|---------|---------------|

Обязательные поля: **Номер**,  **Имя** и хотя бы одно поле со стартовым временем, остальные поля опциональны.

Порядок полей и регистр букв не важен.

"Старт 1" и т.д. - названия спецучастков и могут быть произвольными. Полем со стартовым временем считается поле, название которого не соответствует ни одному другому строго определённому полю.

При загрузке файла будет угадываться его кодировка. В случае неправильного распознавания предпочтительная кодировка UTF-8.