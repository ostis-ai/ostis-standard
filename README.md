# **Стандарт Технологии OSTIS**
Репозиторий содержит исходные файлы документации Технологии OSTIS, оформленной в виде исходного текста [базы знаний Метасистемы IMS.ostis](https://github.com/ostis-ai/ims.ostis.kb). База знаний представляет собой иерархическую систему связанных между собой формальных моделей предметных областей и соответствующих
им онтологий. Также данную публикацию можно рассматривать как проект стандарта семантических моделей
интеллектуальных компьютерных систем.

Исходный текст монографии разрабатывается при помощи набора [команд](scn.tex) языка LaTex, специально разработанных для оформления научных результатов в виде формальных текстов баз знаний, как это предлагается в рамках Технологии OSTIS.

## **Установка и запуск**
```
git clone https://github.com/ostis-ai/ostis-standard.git
cd ostis-standard
git submodule update --init --recursive
``` 

### **Linux**
Для работы необходимо установить [TexLive](https://tug.org/texlive/)-пакеты и редактор LaTeX. 
```
sudo apt-get update
sudo apt install texlive-full
```

В качестве редакторов рассмотрим [Texmaker](https://community.linuxmint.com/software/view/texmaker) и [TeXstudio](https://www.texstudio.org/). Перечень иных редакторов можно найти по этой [ссылке](https://tex.stackexchange.com/questions/339/latex-editors-ides).

### *Texmaker*
Установка:
```
sudo apt install texmaker
```

Можно запускать через меню приложений. Можно запускать через консоль, перечислив необходимые файлы.
```
texmaker book.tex Contents/chapter0.tex
```

F1 - быстрая сборка, F7 - просмотреть результат сборки, Ctrl+Space - переход от кода к месту в pdf.

### *TeXstudio*
Подробную инструкцию установки c описанием каждого шага можно найти [тут](https://linuxhint.com/install-texstudio-latex-editor-linux/).
```
sudo add-apt-repository ppa:sunderme/texstudio
sudo apt remove texstudio-doc texstudio-l10n
sudo apt update
sudo apt install texstudio
```

Проверить текущую версию приложения и корректность установки:
```
texstudio --version
```

Можно запускать через меню приложений. Можно запускать через консоль, перечислив необходимые файлы.
```
texstudio book.tex Contents/chapter0.tex
```

F5 - сборка и компиляция, F7 или ctrl+click - переход от кода к месту в pdf.

## **Трансляция в scs**
Имеется возможность протранслировать tex файл в scs формат. Для этого используется скрипт translate2sc.sh. Первый аргумент - это транлируемый файл, второй - директория, куда файл будет сохранен (по умолчанию translated_scs), а третий - директория, откуда будут подгружаться импортируемые файлы. 

Пример:

```
./translate2sc.sh Contents/chapter2/sd_ostis_sys_models/sd_ps.tex 
```

## **Связанные репозитории**

[Репозитории платформы интерпретации семантических моделей систем, построенных по Технологии OSTIS.](https://github.com/ostis-ai)

[Примеры интеллектуальных систем, созданных на основе Технологии OSTIS.](https://github.com/ostis-apps)
