﻿#language: ru

@tree

Функционал: Процесс массового создание актов от имени Бухгалтера

Как Тестировщик я хочу
автоматизировать процесс массового создание документов реализации от имени Бухгалтера
чтобы сократить время на тестирование    

Контекст:
	Дано я подключаю профиль TestClient "Этот клиент"

Сценарий: Массовое создание актов (реализации товаров и услуг)

	И В командном интерфейсе я выбираю 'Добавленные объекты' 'Массовое создание актов'
	Тогда открылось окно 'Массовое создание актов'
	И я нажимаю кнопку выбора у поля с именем "Период"
	И в поле с именем 'Период' я ввожу текст '31.01.2024'
	И я нажимаю на кнопку с именем 'Создать'

