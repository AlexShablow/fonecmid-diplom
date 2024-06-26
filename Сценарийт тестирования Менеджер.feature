#language: ru

@tree

Функционал: Процесс планирования нескольких обслуживаний на специалистов от имени Менеджера

Как Тестировщик я хочу
автоматизировать процесс проверки создания документа Обслуживание клиентов от имени Менеджера
чтобы сократить время на тестирование 

Контекст:
	Дано я подключаю TestClient "Этот клиент" логин "Антонов Антон" пароль ""

Сценарий: Создание документа Обслуживание клиентов
* Переход к форме списка документа Обслуживание клиентов
	И В командном интерфейсе я выбираю 'Добавленные объекты' 'Обслуживание клиента'
	Тогда открылось окно 'Обслуживание клиента'
* Заполнение шапки документа Обслуживание клиентов
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Обслуживание клиента (создание)'
* Заполнение поля Специалист
	И я нажимаю кнопку выбора у поля с именем "ВКМ_Специалист"
	Тогда открылось окно 'Физические лица'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Обслуживание клиента (создание) *'
* Заполнение поля Клиент	
	И я нажимаю кнопку выбора у поля с именем "ВКМ_Клиент"
	Тогда открылось окно 'Контрагенты'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'  |
		| '000000002' | 'ООО СантехМир' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Обслуживание клиента (создание) *'
* Заполнение поля Договор	
	И я нажимаю кнопку выбора у поля с именем "ВКМ_Договор"
	Тогда открылось окно 'Договоры контрагентов'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Обслуживание клиента (создание) *'
	И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаПроведенияРабот"
	И в поле с именем 'ВКМ_ДатаПроведенияРабот' я ввожу текст '15.01.2024'
	И в поле с именем 'ВКМ_ВремяНачалаРабот' я ввожу текст '09:00'
	И в поле с именем 'ВКМ_ВремяОкончанияРабот' я ввожу текст '11:00'
* Заполнение поля Описания работ	
	И в поле с именем 'ВКМ_ОписаниеПроблемы' я ввожу текст 'Обновить 1С Предприятие'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Обслуживание клиента * от *'
	И Я закрываю окно 'Обслуживание клиента * от *'
	Тогда открылось окно 'Обслуживание клиента'
	
