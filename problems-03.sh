# -- 03-a-0200
# Сортирайте /etc/passwd лексикографски по поле UserID.

function 03-a-0200


# -- 03-a-0201
# Сортирайте /etc/passwd числово по поле UserID.
# (Открийте разликите с лексикографската сортировка)

function 03-a-0201


# -- 03-a-0210
# Изведете само 1-ва и 5-та колона на файла /etc/passwd спрямо разделител ":".

function 03-a-0210


# -- 03-a-0211
# Изведете съдържанието на файла /etc/passwd от 2-ри до 6-ти символ.

function 03-a-0211


# -- 03-a-1500
# Намерете броя на символите в /etc/passwd. А колко реда има в /etc/passwd?

function 03-a-1500


# -- 03-a-2000
# Извадете от файл /etc/passwd:
# - първите 12 реда
# - първите 26 символа
# - всички редове, освен последните 4
# - последните 17 реда
# - 151-я ред (или друг произволен, ако нямате достатъчно редове)
# - последните 4 символа от 13-ти ред

function 03-a-2000


# -- 03-a-2100
# Отпечатайте потребителските имена и техните home директории от /etc/passwd.

function 03-a-2100


# -- 03-a-2110
# Отпечатайте втората колона на /etc/passwd, разделена спрямо символ '/'.

function 03-a-2110


# -- 03-a-3000
# Запаметете във файл в своята home директория резултатът от командата 
# ls -l изпълнена за вашата home директорията.
# Сортирайте създадения файла по второ поле (numeric, alphabetically).

function 03-a-3000


# -- 03-a-5000
# Отпечатайте 2 реда над вашия ред в /etc/passwd и 3 реда под него 
# // може да стане и без пайпове

function 03-a-5000


# -- 03-a-5001
# Колко хора не се казват Ivan според /etc/passwd

function 03-a-5001


# -- 03-a-5002
# Изведете имената на хората с второ име по-дълго от 7 (>7) 
# символа според /etc/passwd

function 03-a-5002


# -- 03-a-5003
# Изведете имената на хората с второ име по-късо от 8 (<=7) 
# символа според /etc/passwd // !(>7) = ?

function 03-a-5003


# -- 03-a-5004
# Изведете целите редове от /etc/passwd за хората от 03-a-5003

function 03-a-5004


# -- 03-b-0300
# Намерете факултетния си номер във файлa /etc/passwd.

function 03-b-0300


# -- 03-b-3000
# Запазете само потребителските имена от /etc/passwd във файл 
# users във вашата home директория.

function 03-b-3000


# -- 03-b-3400
# Колко коментара има във файла /etc/services ? Коментарите се 
# маркират със символа #, след който всеки символ на реда се счита за коментар.

function 03-b-3400


# -- 03-b-3450
# Вижте man 5 services. Напишете команда, която ви дава името на 
# протокол с порт естествено число N. Командата да не отпечатва 
# нищо, ако търсения порт не съществува (например при порт 1337). 
# Примерно, ако номера на порта N е 69, командата трябва да отпечати tftp.

function 03-b-3450


# -- 03-b-3500
# Колко файлове в /bin са shell script? (Колко файлове в дадена 
# директория са ASCII text?)

function 03-b-3500


# -- 03-b-3600
# Направете списък с директориите на вашата файлова система, до 
# които нямате достъп. Понеже файловата система може да е много 
# голяма, търсете до 3 нива на дълбочина. А до кои директории имате 
# достъп? Колко на брой са директориите, до които нямате достъп?

function 03-b-3600


# -- 03-b-4000
# Създайте следната файлова йерархия.
# /home/s...../dir1/file1
# /home/s...../dir1/file2
# /home/s...../dir1/file3

function 03-b-4000


# Посредством vi въведете следното съдържание:
# file1:
# 1
# 2
# 3



# file2:
# s
# a
# d
# f



# file3:
# 3
# 2
# 1
# 45
# 42
# 14
# 1
# 52



# Изведете на екрана:
# 	* статистика за броя редове, думи и символи за всеки един файл
# 	* статистика за броя редове и символи за всички файлове
# 	* общия брой редове на трите файла



# -- 03-b-4001
# Във file2 подменете всички малки букви с главни.

function 03-b-4001


# -- 03-b-4002
# Във file3 изтрийте всички "1"-ци.

function 03-b-4002


# -- 03-b-4003
# Изведете статистика за най-често срещаните символи в трите файла.

function 03-b-4003


# -- 03-b-4004
# Направете нов файл с име по ваш избор, който е конкатенация от file{1,2,3}.
# Забележка: съществува решение с едно извикване на определена 
# програма - опитайте да решите задачата чрез него.

function 03-b-4004


# -- 03-b-4005
# Прочетете текстов файл file1 и направете всички главни букви 
# малки като запишете резултата във file2.

function 03-b-4005


# -- 03-b-5200
# Изтрийте всички срещания на буквата 'a' (lower case) в /etc/passwd и 
# намерете броят на оставащите символи.

function 03-b-5200


# -- 03-b-5300
# Намерете броя на уникалните символи, използвани в имената на 
# потребителите от /etc/passwd.

function 03-b-5300


# -- 03-b-5400
# Отпечатайте всички редове на файла /etc/passwd, които не съдържат символния низ 'ov'.

function 03-b-5400


# -- 03-b-6100
# Отпечатайте последната цифра на UID на всички редове между 28-ми 
# и 46-ред в /etc/passwd.

function 03-b-6100


# -- 03-b-6700
# Отпечатайте правата (permissions) и имената на всички файлове, 
# до които имате read достъп, намиращи се в директорията /tmp.

function 03-b-6700


# -- 03-b-6900
# Намерете имената на 10-те файла във вашата home директория, 
# чието съдържание е редактирано най-скоро. На първо място трябва 
# да бъде най-скоро редактираният файл. Намерете 10-те най-скоро 
# достъпени файлове. (hint: Unix time)

function 03-b-6900


# -- 03-b-7000
# Файловете, които съдържат C код, завършват на `.c`.
# Колко на брой са те във файловата система (или в избрана директория)?
# Колко реда C код има в тези файлове?

function 03-b-7000


# -- 03-b-7500
# Даден ви е ASCII текстов файл (например /etc/services). Отпечатайте 
# хистограма на N-те (например 10) най-често срещани думи.

function 03-b-7500


# -- 03-b-8000
# Вземете факултетните номера на студентите от СИ и ги запишете във 
# файл si.txt сортирани.

function 03-b-8000


# -- 03-b-8500
# За всеки логнат потребител изпишете "Hello, потребител", като ако 
# това е вашият потребител, напишете "Hello, потребител - this is me!".

function 03-b-8500


# Пример:
# hello, human - this is me!
# Hello, s63465
# Hello, s64898

# -- 03-b-8520
# Изпишете имената на студентите от /etc/passwd с главни букви.

function 03-b-8520


# -- 03-b-8600
# Shell Script-овете са файлове, които по конвенция имат разширение 
# .sh. Всеки такъв файл започва с "#!<interpreter>" , където <interpreter>
#  указва на операционната система какъв интерпретатор да пусне 
#  (пр: "#!/bin/bash", "#!/usr/bin/python3 -u"). 

function 03-b-8600


# Намерете всички .sh файлове и проверете кой е най-често използваният интерпретатор.



# -- 03-b-8700
# Намерете 5-те най-големи групи подредени по броя на потребителите в тях.

function 03-b-8700


# -- 03-b-9000
# Направете файл eternity. Намерете всички файлове, които са били 
# модифицирани в последните 15мин (по възможност изключете .).  
# Запишете във eternity името на файла и часa на последната промяна.

function 03-b-9000


# -- 03-b-9050
# Копирайте файл /home/tony/population.csv във вашата home директория.

function 03-b-9050


# -- 03-b-9051
# Използвайки файл population.csv, намерете колко е общото население 
# на света през 2008 година. А през 2016?

function 03-b-9051


# -- 03-b-9052
# Използвайки файл population.csv, намерете през коя година в България 
# има най-много население.

function 03-b-9052


# -- 03-b-9053
# Използвайки файл population.csv, намерете коя държава има най-много 
# население през 2016. А коя е с най-малко население?
# (Hint: Погледнете имената на държавите)

function 03-b-9053


# -- 03-b-9054
# Използвайки файл population.csv, намерете коя държава е на 42-ро 
# място по население през 1969. Колко е населението й през тази година?

function 03-b-9054


# -- 03-b-9100
# В home директорията си изпълнете командата `curl -o songs.tar.gz 
# "http://fangorn.uni-sofia.bg/misc/songs.tar.gz"`

function 03-b-9100


# -- 03-b-9101
# Да се разархивира архивът songs.tar.gz в папка songs във вашата home директорията.

function 03-b-9101


# -- 03-b-9102
# Да се изведат само имената на песните.

function 03-b-9102


# -- 03-b-9103
# Имената на песните да се направят с малки букви, да се заменят 
# спейсовете с долни черти и да се сортират.

function 03-b-9103


# -- 03-b-9104
# Да се изведат всички албуми, сортирани по година.

function 03-b-9104


# -- 03-b-9105
# Да се преброят/изведат само песните на Beatles и Pink.

function 03-b-9105


# -- 03-b-9106
# Да се направят директории с имената на уникалните групи. За улеснение, 
# имената от две думи да се напишат слято:
# Beatles, PinkFloyd, Madness

function 03-b-9106


# -- 03-b-9200
# Напишете серия от команди, които извеждат детайли за файловете и 
# директориите в текущата директория, които имат същите права за достъп 
# както най-големият файл в /etc директорията.

function 03-b-9200


# -- 03-b-9300
# Дадени са ви 2 списъка с email адреси - първият има 12 валидни адреса, 
# а вторията има само невалидни. Филтрирайте всички адреси, така че да 
# останат само валидните. Колко кратък регулярен израз можете да направите за целта?

function 03-b-9300


# Валидни email адреси (12 на брой):
# email@example.com
# firstname.lastname@example.com
# email@subdomain.example.com
# email@123.123.123.123
# 1234567890@example.com
# email@example-one.com
# _______@example.com
# email@example.name
# email@example.museum
# email@example.co.jp
# firstname-lastname@example.com
# unusually.long.long.name@example.com



# Невалидни email адреси:
# #@%^%#$@#$@#.com
# @example.com
# myemail
# Joe Smith <email@example.com>
# email.example.com
# email@example@example.com
# .email@example.com
# email.@example.com
# email..email@example.com
# email@-example.com
# email@example..com
# Abc..123@example.com
# (),:;<>[\]@example.com
# just"not"right@example.com
# this\ is"really"not\allowed@example.com



# -- 03-b-9500
# Запишете във файл next потребителското име на човека, който е след вас в 
# изхода на who. Намерете в /etc/passwd допълнителната ифнромация 
# (име, специалност...) и също го запишете във файла next. Използвайки файла, 
# изпратете му съобщение "I know who you are, информацията за студента"

function 03-b-9500


# Hint: можете да използвате командата expr, за да смятате аритметични изрази. 
# Например, ще получим 13, ако изпълним: expr 10 + 3
# Бонус: "I know who you are, само името му"