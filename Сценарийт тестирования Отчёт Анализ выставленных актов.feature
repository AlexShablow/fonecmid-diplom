#language: ru

@tree

Функционал: Процесс формирования отчёта Анализ выставленных актов

Как Тестировщик я хочу
автоматизировать процесс формирования отчёта Анализ выставленных актов от имени Бухгалтера
чтобы сократить время на тестирование  

Контекст:
	Дано я подключаю TestClient "Этот клиент" логин "Иванова Татьяна" пароль ""


Сценарий: Формирования отчёта Анализ выставленных актов


	И В командном интерфейсе я выбираю 'Добавленные объекты' 'Анализ выставленных актов'
	Тогда открылось окно 'Анализ Выставленных Актов'
	И я нажимаю кнопку выбора у поля с именем "Период1ДатаНачала"
	И в поле с именем 'Период1ДатаНачала' я ввожу текст '01.01.2024'
	И я нажимаю кнопку выбора у поля с именем "Период1ДатаОкончания"
	И в поле с именем 'Период1ДатаОкончания' я ввожу текст '31.01.2024'
	И я нажимаю на кнопку с именем 'СформироватьОтчет'

