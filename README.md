# Монография
Репозиторий содержит исходные файлы документации Технологии OSTIS, оформленной в виде исходного текста [базы знаний Метасистемы IMS.ostis](https://github.com/ShunkevichDV/ims.ostis.kb). База знаний представляет собой иерархическую систему связанных между собой формальных моделей предметных областей и соответствующих
им онтологий. Также данную публикацию можно рассматривать как проект стандарта семантических моделей
интеллектуальных компьютерных систем.

Монография создана на основе LaTeX-документов с использованием [макросов](scn.tex). 

## Установка
Для работы необходимо установить [TexLive](https://tug.org/texlive/)-пакеты и редактор LaTeX, в данном случае [Texmaker](https://community.linuxmint.com/software/view/texmaker). Перечень иных средств для работы с LaTeX можно найти по этой [ссылке](https://tex.stackexchange.com/questions/339/latex-editors-ides).

### Linux
```
sudo apt-get updateaction
sudo apt install texlive-full texmaker
```

## Запуск
```
git clone https://github.com/semsystems/monography2020.git
cd monography2020
```

### Texmaker
Можно запускать как десктопное приложение, и в нём открывать необходимые файлы. Можно запускать через консоль, перечислив необходимые файлы.
```
texmaker book.tex Contents/chapter0.tex
```

F1 - быстрая сборка, F7 - просмотреть результат сборки несмотря на ошибки, Ctrl+Space - переход от кода к месту в pdf.

## Связанные репозитории

[Репозитории Технологии OSTIS](https://github.com/ostis-dev)

[Примеры интеллектуальных систем](https://github.com/ostis-apps), созданных на основе Технологии OSTIS.
