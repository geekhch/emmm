\ProvidesClass{xcumcmart}[2013/08/25, Ch'en Meng, Ver.1.00.00]

\LoadClass[cs4size,oneside,UTF8]{ctexart}
\usepackage{array}
  
%%%%geometry
\RequirePackage{geometry}
\geometry{left = 2.5cm, right = 2.5cm, top = 2.5cm, bottom = 2.5cm}

%%%%declaration page
\newtoks\displaytitle
\newtoks\school
\newtoks\authorone
\newtoks\authortwo
\newtoks\authorthree
\newtoks\advisor

\RequirePackage{makecell}
\RequirePackage{graphicx}
\def\maketitle{%
  \begin{table}[h]
      \centering
      \begin{tabular}[h]{|C{3.91cm}| C{3.91cm} |}
          \hline
          队伍编号 & 904945 \\
          \hline
          题号 & D \\
          \hline
      \end{tabular}
    \end{table}
    \centerline{\rule{16cm}{0.15em}}
  \null
  \thispagestyle{empty}%
  % \leavevmode
  % \input{declaration.tex}

  % \null
  \setcounter{page}{1}
  \begin{center}
     {\heiti\zihao{3} \@title \par}%
  \end{center}
  % \vspace{2\ccwd}
  }

%%%%Abstract & Keywords
\newcommand\cnabstractname{\ziju{2}摘要}
\newcommand\enabstractname{ABSTRACT}
\newcommand\cnkeywords[1]{\pushziti {\heiti\zihao{-4}\cnkeywordsname #1}}
\newcommand\cnkeywordsname{关键词}
\newcommand\enkeywords[1]{\pushziti {\bfseries\zihao{-4}\enkeywordsname #1}}
\newcommand\enkeywordsname{Key words}



\newcommand{\PreserveBackslash}[1]{\let\temp=\\#1\let\\=\temp}
\newcolumntype{C}[1]{>{\PreserveBackslash\centering}p{#1}}
\newcolumntype{R}[1]{>{\PreserveBackslash\raggedleft}p{#1}}
\newcolumntype{L}[1]{>{\PreserveBackslash\raggedright}p{#1}}

\newenvironment{cnabstract}{%\pushziti%
    \begin{center}{\zihao{4}\heiti \cnabstractname}\end{center}\vspace{1\ccwd}
    \songti\zihao{-4}
    \@afterheading}
    {\par\newpage}

%%%%Head and Foot
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}\chead{}\rhead{}
\lfoot{}\cfoot{\thepage}\rfoot{}
\renewcommand{\headrulewidth}{0pt} 

%%%%Sections
\CTEXsetup[format = {\zihao{4}\bfseries\centering}]{section}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsection}
\CTEXsetup[format = {\zihao{-4}\bfseries}]{subsubsection}
\linespread{1.0}
%------------------------ sections -------------------------
%\renewcommand\section{\@startsection
%            {section}{2}{\z@}%   {name}{depth}{}
%                {3.5ex \@plus 1ex \@minus .2ex}% positive->leave parindent
%                {2.3ex \@plus.2ex}%
%                {\reset@font\fontsize{13.75pt}{\baselineskip}\sectionformat}}
%\renewcommand\sectionname{\arabic{section}}
%\renewcommand\sectionformat{\selectfont\bfseries}

%----------------------- Theorems -----------------------------------
\newtheorem{theorem}{{定理}}
\newtheorem{proposition}{{命题}}
\newtheorem{lemma}{{引理}}
\newtheorem{corollary}{{推论}}[theorem]
\newtheorem{definition}{{定义}}
\newtheorem{example}{{例}}

%\endlinechar `\^^M
\endinput
