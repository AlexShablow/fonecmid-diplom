#language: ru

@tree

Функционал: Процесс закрытие обслуживаний от имени Специалиста

Как Тестировщик я хочу
автоматизировать процесс проверки закрытия документа Обслуживание клиентов от имени Специалиста
чтобы сократить время на тестирование 

Контекст:
	Дано я подключаю TestClient "Этот клиент" логин "Веселов Артем" пароль ""

Сценарий: Закрытие документа Обслуживание клиентов
* Выбор документа к закрытию по специалисту Веселов Артем
	И В командном интерфейсе я выбираю 'Добавленные объекты' 'Обслуживание клиента'
	Тогда открылось окно 'Обслуживание клиента'
	И в таблице "Список" я перехожу к строке:
		| 'Дата'                | 'Действует по' | 'Действует с' | 'Договор'                  | 'Номер'     | 'Специалист'    |
		| '15.01.2024 12:00:01' | '31.12.2024'   | '01.01.2024'  | 'Договор №001 (Почасовой)' | '000000006' | 'Веселов Артем' |
	И в таблице "Список" я активизирую поле с именем "Номер"
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Обслуживание клиента * от *'
* Заполнение документа по выполнению работ
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю кнопку выбора у реквизита с именем "ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот"
	Тогда открылось окно 'Номенклатура'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'                     |
		| '000000004' | 'Настройка кассового оборудования' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Обслуживание клиента * от * *'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,0'
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю кнопку выбора у реквизита с именем "ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот"
	Тогда открылось окно 'Номенклатура'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000008' | 'Настройка ПК' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Обслуживание клиента * от * *'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,0'
	И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю кнопку выбора у реквизита с именем "ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот"
	Тогда открылось окно 'Номенклатура'
	И в таблице  "Список" я перехожу на один уровень вниз
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование'            |
		| '000000007' | 'Настройка 1С Отчетность' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Обслуживание клиента * от * *'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '2,0'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ЧасыКОплатеКлиенту"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ЧасыКОплатеКлиенту' я ввожу текст '2,0'
	И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 20 секунд

