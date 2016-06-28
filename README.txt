Installer creator!

Creates SmartWeb simulator packege installer, which you can send to user via e-mail.

Скачать wix: https://wix.codeplex.com/releases/view/136891 Файл: wix39-binaries.zip
Распаковываем сюда: C:\Tools\wix39-binaries
Скачиваем русский языковой пакет: http://files.rsdn.ru/11344/WixUI_ru-ru.v3.zip
Распаковываем в C:\Tools\wix39-binaries, так чтобы в корне wix лежала папка WixUI_ru-ru.v3 с ее содержимым
Устанавливаем какой-нибудь текстовый редактор с подсветкой тегов xml, я пользовался gedit
Собираем эмуляторы stdc и ltdc с CFG_PRODUCTION=1
Запускаем терминал, заходим в папку installer: cd path\to\installer
Объявляем переменные среды:
set QTDIR=path\to\Qt
set WIXDIR=Path\to\wix (это путь к установленному wix, в нашем случае это C:\Tools\wix39-binaries)
Запускаем скрипт updatesrc.bat, который обновляет папку src, копируя туда необходимые бинарники
В папку doc нужно скопировать последнюю версию инструкции TM_SmartWeb_manual.pdf
Запускаем скрипт createmsi.bat чтобы сформировать инсталляционный пакет, который будет находиться в папке msi
Скрипт clean.bat удаляет временные файлы