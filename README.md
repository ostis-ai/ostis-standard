# Монография
База знаний Метасистемы IMS.ostis.

## Установка
Для работы необходимо установить [TexLive](https://tug.org/texlive/)-пакеты и редактор LaTeX, в данном случае [Texmaker](https://community.linuxmint.com/software/view/texmaker). Перечень иных средств для работы с LaTeX можно найти по этой [ссылке](https://tex.stackexchange.com/questions/339/latex-editors-ides).

### Linux
```
sudo apt-get update
sudo apt install texlive-full texmaker
```

## Запуск
```
git clone https://github.com/semsystems/monography2020.git
cd monography2020
texmaker book.tex
```

F1 - быстрая сборка, F7 - просмотреть результат сборки несмотря на ошибки, Ctrl+Space - переход от кода к месту в pdf.
