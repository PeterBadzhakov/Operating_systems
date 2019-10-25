#!/bin/bash

# Wildcard in empty directories to give "", not \*.
shopt -s nullglob

# -- 02-a-0100
# Направете копие на файла /etc/passwd във вашата home директория под името 
# my_passwd.

function 02-a-0100()
{
    cp /etc/passwd "$HOME/my_passwd";
}

# -- 02-a-0500
# Направете директория practice-test в home директорията ви. Вътре направете
# директория test1. Можете ли да направите тези две неща наведнъж? Разгледайте
# нужната man страница. След това създайте празен файл вътре, който да се казва
# test.txt, преместете го в practice-test чрез релативни пътища.

function 02-a-0500()
{
    # -p: make parent dirs too
    mkdir -p "$HOME/practice-test/test1/" && \
        cd "$HOME/practice-test/test1/" || return 1;
    #                                   ^Upon error.
    touch test.txt;
    mv ./test.txt ../;
}

# -- 02-a-0600
# Копирайте файловете f1, f2, f3 от директорията /tmp/os2018/practice/01/ в
# директория dir1, намираща се във вашата home директория. Ако нямате такава,
# създайте я.

function 02-a-0600()
{
    if [[ ! -e "$HOME/dir1" ]]; then
        mkdir "$HOME/dir1";
    fi
    
    cp /tmp/os2018/practice/01/{f1,f2,f3} "$HOME"/dir1/;
}

# -- 02-a-0601
# Нека файлът f2 бъде преместен в директория dir2, намираща се във вашата home
# директория и бъде преименуван на numbers.

function 02-a-0601()
{
    mv "$HOME/dir1/f2" "$HOME/dir2/numbers";
}

# -- 02-a-1200
# Отпечатайте имената на всички директории в директорията /home.

function 02-a-1200()
{
    # Recursive.
    # find /home -type d 2>/dev/null;
    find /home -maxdepth 1 -mindepth 1 -type d 2>/dev/null;
}

# -- 02-a-2100
# Създайте symlink на файла /etc/passwd в home директорията ви (да се казва
# например passwd_symlink).

function 02-a-2100()
{
    ln -s /etc/passwd "$HOME/passwd_symlink"; # -s: symbolic
}

# -- 02-a-4000
# Създайте файл permissions.txt в home директорията си. За него дайте
# единствено - read права на потребителя създал файла, write and exec на групата,
#  read and exec на всички останали. Направете го и с битове, и чрез "буквички".

function 02-a-4000()
{
    touch "$HOME/permissions.txt";
    #chmod 0435 "$HOME/permissions.txt";
    chmod u=r,g=wx,o=rx "$HOME/permissions.txt";
}

# -- 02-a-4100
# За да намерите какво сте правили днес: намерете всички файлове в home
# директорията ви, които са променени от вас в последния 1 час.

function 02-a-4100()
{
    find "$HOME"/ -mmin -61;
    #             ^last mtime <61 mins ago.
}

# -- 02-a-5000
# Копирайте secret.txt от /tmp/os2018/02/ в home директорията си.
# Прочетете го с командата cat. (Ако този файл го няма, прочетете с cat
# произволен текстов файл напр. /etc/passwd)

function 02-a-5000()
{
    if [[ ! -e "/tmp/os2018/02/secret.txt" ]]; then
        cat "/etc/passwd";
        return 0;
    fi
    
    cp "/tmp/os2018/02/secret.txt" "$HOME/";
    cat "$HOME/secret.txt";
}

# -- 02-a-5400
# Изведете всички обикновени ("regular") файлове, които /etc и
# нейните преки поддиректории съдържат

function 02-a-5400()
{
    find /etc/ -maxdepth 2 -type f 2>/dev/null;
}

# -- 02-a-5401
# Създайте файл, който да съдържа само първите 5 реда от изхода на 02-a-5400

function 02-a-5401()
{
    02-a-5400 | head -n 5 >./02-a-5401.txt
}

# -- 02-a-5402
# Изведете всички обикновени ("regular") файлове, които само
# преките поддиректории на /etc съдържат

function 02-a-5402()
{
    find /etc/ -type f -mindepth 2 -maxdepth 2 2>/dev/null;
}

# -- 02-a-5403
# Изведете всички преки поддиректории на /etc

function 02-a-5403()
{
    find /etc/ -mindepth 1 -maxdepth 1 -type d 2>/dev/null;
}

# -- 02-a-5500
# Създайте файл, който да съдържа само последните 10 реда от изхода на 02-a-5403

function 02-a-5500()
{
    02-a-5403 | tail -n 10 >./02-a-5500.txt;
}

# -- 02-a-5501
# Изведете обикновените файлове по-големи от 42 байта в home директорията ви

function 02-a-5501()
{
    find "$HOME"/ -type f -size +42c;
    #                     ^filesize >42 chars (bytes).
}

# -- 02-a-5503
# Изведете всички обикновени файлове в директорията SI които са от групата student

function 02-a-5503()
{
    find SI/ -type f -group student;
}

# -- 02-a-5504
# Изведете всички обикновени файлове в директорията SI които са
# от групата student, които имат write права за достъп за група или
# за останалите(o=w) // ако в свободното си време искате да пишете
# по файлове на други хора

function 02-a-5504()
{
    # -perm mode: perms are exactly mode per division.
    # -perm -mode: all mode perms are set per division.
    # -perm /mode: either mode perms are set per division.

    find SI/ -type f -group student -perm /g=w,o=w;
    #                               ^file perms contain any of these.
    
}

# -- 02-a-5505
# Изведете всички файлове, които са по-нови от създадения файл в 02-a-5401

function 02-a-5505()
{
    # Access - the last time the file was read
    # Modify - the last time the file was modified (content has been modified)
    # Change - the last time metadata of the file was changed (e.g. permissions)
    find / -newer ./02-a-5401.txt 2>/dev/null;
}

# -- 02-a-5506
# Изтрийте файловете в home директорията си по-нови от създаденият
# в 02-a-5401 файл (подайте на rm опция -i за да може да изберете само
# тези които искате да изтриете)

function 02-a-5506()
{
    find "$HOME"/ -newer 02-a-5401.txt -exec rm -i '{}' ';' ;
}

# -- 02-a-6000
# Намерете файловете в /bin, които могат да се четат, пишат и изпълняват от 
# всички.

function 02-a-6000()
{
    find /bin/ -perm -o=rwx 2>/dev/null;
}

# -- 02-a-8000
# Копирайте всички файлове от /bin, които могат да се четат, пишат
# и изпълняват от всички, в bin2 директория в home директорията ви.
# Направете такава, ако нямате.

function 02-a-8000()
{
    mkdir -p "$HOME"/bin2;
    #     ^Make if missing, don't warn.
    
    02-a-6000 | xargs -L 1 -I "FROM" \
    #                 ^Max lines per command execution.
        cp "FROM" "$HOME"/bin2 2>/dev/null;

    # Simpler version:
    #for path in $(02-a-6000); do
    #            ^Exact line-by-line output of that command.
    #    cp "$path" "$HOME"/bin2 2>/dev/null;
    #done
}

# -- 02-a-9000
# от предната задача: когато вече сте получили home/../../bin2 с команди,
# архивирайте всички команди вътре, които започват с b в архив, който се
# казва b_start.tar. (командата, която архивира е tar -c -f <файл1> <файл2>...)
# Можете ли да направите архив на всеки?

function 02-a-9000()
{
    tar -c -f "$HOME"/bin2/b_start.tar "$HOME"/bin2/* 2>/dev/null;

    for file in "$HOME"/bin2/b*; do
    #                        ^TODO: Exclude ending in .tar.
        tar -c -f "$file.tar" "$file" 2>/dev/null;
    done
}

# -- 02-a-9500
# Използвайки едно извикване на командата find, отпечатайте броя на
# редовете във всеки обикновен файл в /home директорията.

function 02-a-9500()
{
    find "$HOME"/ -type f -exec wc -l '{}' ';';
}

# -- 02-b-4000
# Копирайте най-големия файл от тези, намиращи се в /tmp/os2018/02/bytes/,
# в home директорията си.

function 02-b-4000()
{
    # Print filesize (bytes) + filepath.
    # Sort numerically, reverse order, line by line.
    # Set delimiter, take second field (single ' ' from printf). 
    # Replace "FROM" with 'cp "FROM"...',
    # where "FROM" is cut's pipe.
    
    find /tmp/os2018/02/bytes/ -type f -printf '%s %p\n' |
        sort -n -r |
            head -n 1 |
                cut -d ' ' -f 2 |
                    xargs -I "FROM" \
                        cp "FROM" "$HOME"/;
}
