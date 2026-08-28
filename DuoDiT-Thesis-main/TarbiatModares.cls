%%
%%  This is file `Tabriz_thesis.cls',
%%  The original file was xepersian-thesis.cls by Vafa Khalighi
%%   __________________________________
%%   Copyright © 2013-2014 Sajad Noorian
%%  
%%   http://forum.parsilatex.com
%% 
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{VThesis}
              [10/21/2011 v0.4
 Persian thesis document class in XeLaTeX for University of Tabriz projects/theses/dissertations]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper,11pt]{book}
\def\university#1{\gdef\@university{#1}}
\def\department#1{\gdef\@department{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\thesisdate#1{\gdef\@thesisdate{#1}}
\newcommand{\firstsupervisor}[1]{\def\@firstsupervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\firstadvisor}[1]{\def\@firstadvisor{#1}}
\newcommand{\secondadvisor}[1]{\def\@secondadvisor{#1}}
\def\name#1{\gdef\@name{#1}}
\def\surname#1{\gdef\@surname{#1}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\fa-abstract#1{\gdef\@fa-abstract{#1}}
\def\faculty#1{\gdef\@faculty{#1}}
\def\subject#1{\gdef\@subject{#1}}
\def\field#1{\gdef\@field{#1}}
\def\department#1{\gdef\@department{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\latintitle#1{\gdef\@latintitle{#1}}
\def\latinauthor#1{\gdef\@latinauthor{#1}}
\def\latindegree#1{\gdef\@latindegree{#1}}
\def\latinfaculty#1{\gdef\@latinfaculty{#1}}
\def\latinthesisdate#1{\gdef\@latinthesisdate{#1}}
\def\latinsubject#1{\gdef\@latinsubject{#1}}
\def\latinfield#1{\gdef\@latinfield{#1}}
\def\firstlatinsupervisor#1{\gdef\@firstlatinsupervisor{#1}}
\def\secondlatinsupervisor#1{\gdef\@secondlatinsupervisor{#1}}
\def\firstlatinadvisor#1{\gdef\@firstlatinadvisor{#1}}
\def\secondlatinadvisor#1{\gdef\@secondlatinadvisor{#1}}
\def\latinname#1{\gdef\@latinname{#1}}
\def\latinsurname#1{\gdef\@latinsurname{#1}}
\def\en-abstract#1{\gdef\@en-abstract{#1}}
\def\latinkeywords#1{\gdef\@latinkeywords{#1}}
\def\latinuniversity#1{\gdef\@latinuniversity{#1}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newif\if@bscthesis
\@bscthesisfalse
\DeclareOption{bsc}{\@bscthesistrue}
\newif\if@mscthesis
\@mscthesisfalse
\DeclareOption{msc}{\@mscthesistrue}
\ProcessOptions
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\vtitle}{
\begin{titlepage}
%\topmargin=-30pt
\vspace{-2cm}
\centerline{{\includegraphics[height=4.0cm]{armtmu}}}
{\Large\bf دانشگاه تربیت مدرس} \par
\vskip 1cm
%{\large\bfseries\universityof\space\@university}\par
%{\large\bfseries\departmentof\space\@faculty}\par 
{\large\bf دانشکده علوم ریاضی} \par
\vskip 2cm
%{\large\bfseries\groupof\space\@subject}\par
\vfill
%--------------------------
\if@mscthesis 
{\huge\bfseries\writtenfor
%\par
\@degree}
\else
{\large\bfseries 
رساله
\@degree}
\fi
\par
%
\vskip 5mm
{\Huge\bfseries \@title}\par
%---------------------------
\vskip 1cm
{\large%
  \by}\par
\par
{\Large\bfseries{\Large\bfseries   \@name\ \ \@surname}}\par
%--------------------------------------------------
\vskip 1cm
\large
{\ifx\@firstsupervisor\undefined%
\ifx\@secondsupervisor\undefined%
\else\fi
\else
\ifx\@secondsupervisor\undefined%
استاد راهنما
{\Large\bfseries\par
\@firstsupervisor}
\else
\large
استادان راهنما
\par
{\Large\bfseries \@firstsupervisor{} و  \@secondsupervisor}
\fi\fi}
%\par
\vskip 1cm
\large
{\ifx\@firstadvisor\undefined%
\ifx\@secondadvisor\undefined%
\else\fi
\else
\ifx\@secondadvisor\undefined%
استاد مشاور
{\Large\bfseries\par
\@firstadvisor}
\else

\large
استادان مشاور
\par
{\Large\bfseries\@firstadvisor{} \vskip 0.25cm \@secondadvisor}
\fi\fi}

\par
\vskip 1.5cm

{\large \@thesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}%
}
\newpage
\thispagestyle{empty}
\baselineskip=.7cm
\if@bscthesis \relax
\else
%\begin{frame}
%\noindent
%نام خانوادگی دانشجو: 
%\@surname
% \hspace*{\fill}
% نام: 
%\@name
% \hspace*{\fill}\\ \hrule
% \vspace{3mm}
% \noindent
% عنوان:
%\@title\\ \hrule
% \vspace{3mm}
% \noindent
%{\ifx\@firstsupervisor\undefined%
%\ifx\@secondsupervisor\undefined%
%\else\fi
%\else
%\ifx\@secondsupervisor\undefined%
%استاد راهنما:
%{
%\@firstsupervisor}
%\else
%\large
%استادان راهنما:
%{\@firstsupervisor{} و \@secondsupervisor}
%\fi\fi}%\par
%\noindent
%{\ifx\@firstadvisor\undefined%
%\ifx\@secondadvisor\undefined%
%\else\fi
%\else
%\ifx\@secondadvisor\undefined%
%\par\noindent
%استاد مشاور:
%{
%\@firstadvisor}
%\else\\
%\large
%استادان مشاور:
%{\@firstadvisor{} و \@secondadvisor}
%\fi\fi}
%\\ \hrule
% \vspace{3mm}
% \noindent
% مقطع تحصیلی:
% \if@mscthesis
%کارشناسی ارشد
%\else
%دکتری
%\fi
% \hspace*{\fill}
%رشته: 
%\@subject
% \hspace*{\fill}
% گرایش:
%\@field
%\\ \hrule
% \vspace{3mm}
% \noindent
%دانشگاه: 
%\@university
% \hspace*{\fill}
%\@faculty\hspace*{\fill}
%\\ 
%تاریخ فارغ‌التحصیلی:
%\@thesisdate
% \hspace*{\fill}
%تعداد صفحات: 
%\pageref{LastPage}\hspace*{\fill}
%\\ \hrule
% \vspace{3mm}
% \noindent
%واژگان کلیدی:
%\@keywords
%\\ \hrule
% \vspace{3mm}
% \noindent
%\textbf{چکیده}\par
%\@fa-abstract
%\end{frame}
\fi
%}
\def\frame{\newpage
\thispagestyle{empty}
\begin{framed}\thispagestyle{empty}}
\def\endframe{\thispagestyle{empty}\end{framed}
\thispagestyle{empty}
\newpage
}
\def\abstractpage{\newpage
\thispagestyle{empty}
\vskip 15mm
\par
\begin{abstract}}
\def\endabstractpage{\end{abstract}
\newpage
}

\def\latinabstract{\newpage
\thispagestyle{empty}
\vskip 15mm
\begin{center}{\Large\bfseries \@latintitle \\[5mm]}
{\bfseries Abstract}
\end{center}
\vspace{5mm}}

\def\endlatinabstract{\newpage}

\def\acknowledgementpage{\newpage
\thispagestyle{empty}

\vspace{1cm}
\par\noindent}
\def\endacknowledgementpage{\newpage}

\def\titlepage{\newpage\centering
  \thispagestyle{empty}
  \parindent 0pt \parskip 10pt plus 1fil minus 1fil
  \def\baselinestretch{1}\@normalsize\vbox to \vsize\bgroup\vbox to 9in\bgroup}
\def\endtitlepage{\par\kern 0pt\egroup\vss\egroup\newpage}

\def\signature{\vspace{1cm}
\begin{flushleft}
{\nastaliq \scriptsize \@name\ \@surname \\
\@thesisdate}
\end{flushleft}}

\def\abstract{\subsection*{\abstractname}\small
\@normalsize}
\def\endabstract{\par}

%\pagenumbering{harfi}
%\let\ol@chapter\@chapter
%\def\@chapter{%
%  \ifnum\c@chapter=0 \pagenumbering{arabic}\setcounter{page}{1}\fi
%  \ol@chapter}

\font\titlefont=cmssbx10 scaled 2074
\font\supervisorfont=cmbxti10

\newcommand{\latinvtitle}{
\begin{titlepage}
\vspace{-2cm}
\centerline{{\includegraphics[height=4.0cm]{TMU_Logo_Transparent-1.png}}}
%\\%-------------------------------------
% {\Large\bf  \@latinuniversity} \par

\vskip 1.5cm
\addtolength{\baselineskip}{5mm}
{\titlefont \@latintitle} \par
\addtolength{\baselineskip}{-5mm}
\vskip 1.5cm
{\Large A Thesis Presented for the Degree of }
\vskip 0.5cm
{\Large\@latindegree\space}\par
\vskip 0.5cm
{\Large\@latinfield}\par
\vskip 1.5cm
{\Large\@latinsubject}\par
\vskip 1.5cm
{\Large 
\@latinfaculty}\par
\vskip 1.5cm
{\Large
\@latinuniversity} \par
\vskip 1.5cm
\vfill
%-------------------------------------
\vskip 5mm

%-------------------------------------

%-------------------------------------
%\vskip 1cm
{\bfseries\latinby}\vskip 0.4cm
{\Large\bfseries\@latinname \; \@latinsurname}\par
%-------------------------------------
\vskip 1cm
\large
{\ifx\@firstlatinsupervisor\undefined%
\ifx\@secondlatinsupervisor\undefined%
\else\fi
\else
\ifx\@secondlatinsupervisor\undefined%
Supervisor
{\Large\bfseries\vskip 0.4cm
\@firstlatinsupervisor}
\else
\large
Supervisors
\vskip 0.4cm
{\Large\bfseries \@firstlatinsupervisor{} and \@secondlatinsupervisor}
\fi\fi}
\vskip 1cm
\large
{\ifx\@firstlatinadvisor\undefined%
\ifx\@secondlatinadvisor\undefined%
\else\fi
\else
\ifx\@secondlatinadvisor\undefined%
Advisor
{\Large\bfseries\par
\@firstlatinadvisor}
\else
\large
Advisors
\vskip 0.4cm
{\Large\bfseries\@firstlatinadvisor{} \vskip .4cm \@secondlatinadvisor}
\fi\fi}

\par
\vskip 1.5cm

{\large\@latinthesisdate}
\par
\vskip 1cm

\par

\vfill
%
\end{titlepage}
}
%
%
\def\onvan{عنوان}
\def\writtenfor{پایان‌نامه دوره }
\def\by{توسط}
\def\latinby{by}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}

%% 
%% Copyright © 2013-2014      by Sajad Noorian
%% 
%% Distributable under the LaTeX Project Public License,
%% version 1.3c or higher (your choice). The latest version of
%% this license is at: http://www.latex-project.org/lppl.txt
%% 
%% This work is "maintained" (as per LPPL maintenance status)
%%  by Sajad Noorian.
%% 
%% 
%% 
%% 
%% Special thanks to Vafa Khalighi and Vahid Damanafshan for their invaluable hints.
%%
%% End of file `TarbiatModares.cls'.
