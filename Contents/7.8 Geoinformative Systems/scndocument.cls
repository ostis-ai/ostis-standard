\NeedsTeXFormat{LaTeX2e}[2021-06-01]
\ProvidesClass{scndocument}[2022/07/26 v0.1.0 LaTeX class for SCn-code]

\LoadClass[a4paper]{article}

\RequirePackage{scn}

% GENERAL SETTINGS START

% Page style
\RequirePackage{geometry}
\geometry{
  a4paper,
  left=20mm,
  right=20mm,
  top=20mm,
  bottom=20mm,
  hratio=1:1,
  vratio=1:1
}

\pagenumbering{arabic}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}
\chead{{\normalfont\thepage}}
\cfoot{}

% Font style
\renewcommand\normalsize{%
  \makeatletter
  \@setfontsize\normalsize\@xpt\@xiipt
  \abovedisplayskip 10\p@
  \abovedisplayshortskip \z@
  \belowdisplayshortskip 6\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI
}
\makeatother
\normalsize

\renewcommand\LARGE{\@setfontsize\LARGE{18}{20}}
\renewcommand\Large{\@setfontsize\large{14}{16}}

% Title style

\renewcommand{\maketitle}{
  \newpage
  \makeatletter
  \begin{titlepage}
    \topskip 13em
    \begin{center}
      {\huge \@author \par}
      \vspace{3em}
      {\huge \bfseries \@title \par}
      \vspace{3em}
    \end{center}
    \vspace{\fill}
  \end{titlepage}
  \makeatother
}

% GENERAL SETTINGS END

% TABLE OF CONTENTS START

\RequirePackage{tocloft}
\makeatletter
\renewcommand{\@cftmaketoctitle}{}
\makeatother

% TABLE OF CONTENTS END

% SECTIONS START

\newcommand{\scncurrentpage}{%
  \scnrelfrom{\curpage}{\thepage}
}

\NewDocumentCommand{\scseparatedfragment}{>{\SplitList{;}}om}{
  \clearpage
  /*\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
	\scncurrentpage
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
        \settab\sethind
        \ProcessList{#1}{\textit}
        \scncurrentpage
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scsectionfamily}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sectfamily}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
	\scncurrentpage
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
	\settab\sethind
	\ProcessList{#1}{\textit}
        \scncurrentpage
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scchapter}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sect}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
        \scncurrentpage
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
      \begin{scnindent}
        \settab\sethind
        \ProcessList{#1}{\textit}
	\scncurrentpage
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scsection}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sect}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      \begin{scnindent}
	\settab\sethind
        $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
        \begin{scnindent}
	  \scncurrentpage
        \end{scnindent}
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      \begin{scnindent}
	\settab\sethind
        $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
        \begin{scnindent}
          \settab\sethind
	  \ProcessList{#1}{\textit}
	  \scncurrentpage
        \end{scnindent}
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scsubsection}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sect}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \settab\sethind
          $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
          \begin{scnindent}
	    \scncurrentpage
          \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \settab\sethind
          $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
          \begin{scnindent}
            \settab\sethind
	    \ProcessList{#1}{\textit}
	    \scncurrentpage
          \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scsubsubsection}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sect}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \begin{scnindent}
	    \settab\sethind
            $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
            \begin{scnindent}
	      \scncurrentpage
            \end{scnindent}
	  \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \begin{scnindent}
	    \settab\sethind
            $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
            \begin{scnindent}
              \settab\sethind
	      \ProcessList{#1}{\textit}
	      \scncurrentpage
            \end{scnindent}
          \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }
}

\NewDocumentCommand{\scparagraph}{>{\SplitList{;}}om}{
  \clearpage
  /*~\textspaced{\bfseries \large \sect}~\filldots/
  \scnsectionheader{#2}
  
  \IfNoValueTF{#1}{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \begin{scnindent}
	    \begin{scnindent}
	      \settab\sethind
              $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
              \begin{scnindent}
	        \scncurrentpage
              \end{scnindent}
	    \end{scnindent}
	  \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }{
    \addtocontents{toc}{
      \begin{scnindent}
	\begin{scnindent}
	  \begin{scnindent}
	    \begin{scnindent}
	      \settab\sethind
              $\bullet$\makediff{\bulletsize}\scnkeyword{#2}\\
              \begin{scnindent}
                \settab\sethind
	        \ProcessList{#1}{\textit}
	        \scncurrentpage
              \end{scnindent}
            \end{scnindent}
          \end{scnindent}
	\end{scnindent}
      \end{scnindent}
    }
  }
}

% SECTIONS END

% BACKGROUND START

\RequirePackage{xcolor}
\RequirePackage{silence}
\WarningsOff[everypage]
\RequirePackage[pages=all]{background}
\RequirePackage{tikz}
\usetikzlibrary{calc} 
\RequirePackage{layout}

\newcommand{\drawvlines}{
  \begin{tikzpicture}[remember picture,overlay]
    \coordinate (NW) at ([
      xshift=2cm,
      yshift=\topmargin,
    ]current page.north west);
    
    \coordinate (SW) at ([
      xshift=2cm,
      yshift=15mm,
    ]current page.south west); 
    
    \foreach \i in {0,1,...,17}{
      \draw[black!50] ($(NW)+(\i*\tabsize,0)$) -- ($(SW)+(\i*\tabsize,0)$);
    }
    
  \end{tikzpicture}
}

\newcommand\DeactivateBG{\backgroundsetup{contents={}}}
\newcommand\ActivateBG{\backgroundsetup{contents={\drawvlines}}}

\backgroundsetup{
  scale=1,
  color=black,
  opacity=1.0,
  angle=0
}

% BACKGROUND END

% BIBLIOGRAPHY START

\RequirePackage{expl3}
\RequirePackage{etoolbox}
\RequirePackage{csquotes}
\RequirePackage[
  citestyle=authoryear,
  maxnames=3
]{biblatex}

\ExplSyntaxOn

\clist_new:N \scncitenames
\prop_new:N \scncitelist

\NewDocumentCommand\addcite{m m}{
  \prop_if_in:NnTF \scncitelist{#1}{}{
    \prop_gput:NnV \scncitelist{#1}{#2}
    \clist_gput_right:Nn \scncitenames{#1}
  }
}

\NewDocumentCommand\printscnbiblio{}{
  \clist_sort:Nn \scncitenames{
    \ifnumcomp{\pdfstrcmp{##1}{##2}}{>}{0}
      { \sort_return_swapped: }
      { \sort_return_same: }
  }
  \clist_map_inline:Nn \scncitenames {\prop_item:Nn \scncitelist {##1}}
}
\ExplSyntaxOff

\newcommand{\scncite}[1]{%
  \scncitecommon{#1}{\cite{#1}}
}

\newcommand{\scncitecommon}[2]{%
  \textit{#2}
  \addcite{#2}{\printscncite{#1}{#2}}
}

\newcommand{\printscncite}[2]{%
  \scnheader{#2}
  \scntext{\bibref}{\fullcite{#1}}
}

\newcommand{\scnciteannotation}[1]{
  \scntext{\annot}{\citefield{#1}{annotation}}
}

% BIBLIOGRAPHY END
\endinput

