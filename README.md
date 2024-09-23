## Prime World
Исходный код боевой части игры Prime World.  
Внимательно ознакомьтесь с условиями лицензионного соглашения.

## Содержимое
- pw — основной код боевой части
- pw_publish — собранный клиент боевой части с читами и редактор для клиента

## Подготовка
Необходимо выкачать ветку pw и объединить папку Bin с основными данными игры.

1. Переключитесь на ветку `pw`.
2. Скопируйте папку `Prime-World\pw_publish\branch\Client\PvP\Bin` в `PW-Battle\pw\branches\r1117` с заменой файлов.
3. Запустите клиент с читами `Prime-World\pw\branches\r1117\Bin\PW_Game.exe`.
4. Если всё ок — на этом этапе откроется окно загрузки, но без картинки и с чёрным экраном.
5. В папке Profiles -> game.cfg поменяйте значение `local_game 0` на `local_game 1`.
6. Запустите клиент с читами. Теперь вы должны увидеть лобби, где можете выбрать карту, героя и уйти в бой.
7. В бою нажмите тильду — откроется консоль для ввода читов.

В случае возникновения ошибок смотрите логи в `Prime-World\pw\branches\r1117\Bin\logs`.

## Данные игры
Данные редактируются через редактор.  
Расположены в:  
`Prime-World\pw\branches\r1117\Data`

Через данные можно:
1. Менять описания талантов и способностей героев.
2. Менять таланты и способности героев.
3. Менять логику крипов и башен.
4. Добавлять героев и способности.
5. Добавлять таланты.
6. Менять и добавлять эффекты.
7. Менять и добавлять модели и анимации.

При изменении данных новый клиент собирать из кода не нужно. Нажмите File -> Save, и все изменения сразу подтянутся в клиент PW_Game. Для примера, можете попробовать поменять описание какого-нибудь таланта или способности героя.

## Редактор
Находится в:  
`Prime-World\pw\branches\r1117\Bin\PF_Editor.exe`

При первом открытии редактора нужно настроить путь к `Data`:
1. Tools -> File System Configuration.
2. Add -> WinFileSystem.
3. В качестве system root установите папку Data: `Prime-World\pw\branches\r1117\Data`.
4. Закройте окна.
5. В редакторе: Views -> Object Browser и Views -> Properties Editor. Это две основные панели для редактирования данных.

Вкладки редактора можно перемещать и закреплять.

## Клиент с читами
В репозитории собран и лежит клиент с читами:  
`PW-Battle\pw_publish\branch\Client\PvP\Bin\PW_Game.exe`

Ему нужно, чтобы рядом с папкой Bin находились Localization, Profiles и Data. Поэтому при подготовке мы его переносим в папку `pw`. При изменении кода клиент нужно собирать.

## Как запустить PvP
1. В `Profiles -> game.cfg` поменяйте `local_game 0`.
2. Добавьте `login_adress` <адрес сервера>.
3. Запустите игру с параметром -dev_login MyNickname.

## Как запустить игру с ботами
1. В `Profiles -> private.cfg_example` переименуйте файл в `private.cfg`.
2. Откройте файл через блокнот.
3. Найдите `AT BEGINNING GAME`.
4. Вставьте новую строку: `add_ai bots` — это для каждого героя в игре поставит ИИ бота.

## Устранение возможных ошибок
1. В `Profiles -> private.cfg_example` переименуйте файл в `private.cfg`.
2. Откройте файл через блокнот.
3. Найдите секцию `performance section`.
4. Найдите строку `setvar gfx_fullscreen = 0` — это запустит игру в оконном режиме, так она может работать стабильнее.
5. В секции `performance section` можно поменять и другие настройки оптимизации.

## Благодарности
Сообществу **Prime World: Nova** за вклад в документацию и исправление ошибок.
