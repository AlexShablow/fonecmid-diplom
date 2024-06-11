# Дипломный проект профессии «1C-программист: с нуля до middle»

## Кастомизация конфигурации «Управление IT-фирмой для компании «Ваш компьютерный мастер»

### Описание задания

Компания «Ваш компьютерный мастер» использует конфигурацию «Управление IT-фирмой» от стороннего поставщика. Поставлена задача добавить в конфигурацию модуль для работы с заявками на обслуживание клиентов и модуль для расчёта управленческой заработной платы.
Для доработки конфигурации нужно использовать 1C:EDT. При доработке конфигурации максимально задействуйте функциональность библиотеки стандартных подсистем.
Для добавленных объектов, реквизитов, методов используйте префикс ВКМ_. Если меняется программный код существующих методов, изменения должны быть выделены комментариями.
Все добавленные объекты должны быть размещены в новой служебной подсистеме ВКМ_ДобавленныеОбъекты. В добавленных объектах не должно быть ошибок, выявляемых встроенным механизмом проверки 1C:EDT.
Для передачи результата изменённую конфигурацию загрузите в отдельный репозиторий. Чтобы результаты работы можно было проверить, репозиторий должен быть публичным.
Вместе с результатами работы должны быть переданы инструкция по начальной настройке новой подсистемы и сценарий для автоматизированного тестирования модуля работы с заявками клиентов.
В блок Releases репозитория должен быть добавлен dt-файл демонстрационной базы с введёнными тестовыми данными, которые показывают работу всех механизмов системы.

С подробным описанием задания можно ознакомиться по [ссылке](https://github.com/netology-code/fonecmid-diplom/blob/main/README.md)

### Выполненные задачи:
#### ✔️ Реализована новая подсистема «Работа с заявками клиентов» 
 
 - [X] Добавлен новый вид договоров – **абоненское обслуживание**.  
В договорах такого вида пользователь имеет возможность внести дату начала действия договора, 
дату окончания действия договора, сумму ежемесячной абоненсткой платы и стоимость часа работы специалиста.
 
- [X] Добавлен документ **ОбслуживаниеКлиента** для  планирования обслуживания сотрудниками оборудования и программ клиентов. 
Для удобного планирования времени специалистов реализован календарь загрузки на базе **Планировщика**.

- [X] Если в документе Реализации товаров и услуг выбран договор с видом абонентская плата, 
то реализована возможность автозаполнения такого документа суммой ежемесячной абонентской платы
и суммой за выполненные в течения месяца работы по данным документов Обслуживание клиентов. 
Из документа можно напечатать акт об оказанных услугах.

- [X] Для бухгалтера фирмы автоматизирована процедура формирования актов по всем абонетским договорам.
Создана обработка **МассовоеСозданиеАктов**.

#### ✔️ Реализованы новая подсистема «Расчёт управленческой зарплаты» 

- [X] Для каждого сотрудника хранятся суммы окладов. 
Дополнительно для специалистов хранится процент от выполненных заказов, который им будет начисляться. 
Расчёт зарплаты выполняется документом **НачислениеЗаработнойПлаты** по всем видам расчёта, кроме премий. 
Премии начисляются отдельным документом **НачислениеФиксированныхПремий**.
В документах **НачислениеЗаработнойПлаты** и **НачислениеФиксированныхПремий** автоматически рассчитывается удержание НДФЛ
  
- [X] Учитываются начисленные и выплаченные суммы сотрудникам.

- [X] Реализована возможность визуального контроля, что все сотрудники одновременно не уйдут в отпуск. 
     

#### ✔️ Подготовлены отчёты по новой функциональности

- [X] Реализован отчёт **Выработка специалистов**. 
Показывает сколько часов за выбранный период отработал выбранный специалист 
и какая сумма ему за этот период начислена в виде процента от выплат клиента. 

- [X] Реализован отчёт **Анализ выставленных актов**. 
Включает информацию о клиентах, договорах и суммах, 
которые должны быть выставлены клиентам на основе данных из документов Обслуживание. 

- [X] Реализован отчёт **Расчёты с сотрудниками**. 
Предоставляет информацию о том, какие суммы начислены и выплачены каждому сотруднику 
за указанный период, а также задолженность на начало и на конец этого периода.

- [X] Реализован отчёт **Расход запланированных отпусков**. 
Показывает сколько дней отпуска у сотрудника в выбранный период по плану 
и сколько дней он фактически был в отпуске.

#### ✔️ Оформлена инструкция по начальной настройке

☑️ В инструкции описывается какие действия следует выполнить в информационной базе,
в которой ведется реальный учёт, чтобы начать пользоваться новой функциональностью:
заполнение необходимых констант, назначение ролей пользователям и другие действия,
которые необходимы для нормальной работы разработанных механизмов.

#### ✔️ Подготовлены автотесты для проверки корректности работы подсистемы в Vanessa Automation

- [X] Планирование нескольких обслуживаний на специалистов от имени **Менеджера**
    
- [X] Закрытие обслуживаний от имени **Специалиста**
    
- [X] Массовое создание актов от имени **Бухгалтера**
   
- [X] Формирование отчёта Анализ выставленных актов, сравнение с эталоном

#### ✔️ Результат работы загружен в репозиторий на GitHub, в блоке Releases  добавлен dt-файл

Основная доработка конфигурации велась в **1C:EDT.** 

Актуальная версия со всеми доработками находится в блоке Realeses **"Release-v002_27-04-2024"**  

