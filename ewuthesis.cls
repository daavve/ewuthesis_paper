%%      Maintainer:  David McInnis <dave@dave3.xyz>
%%      Used clsguide.pdf as reference -> http://mirrors.rit.edu/CTAN/macros/latex/doc/clsguide.pdf
%%      This class was origionally a fork of jfhbrook/uafthesis, but has since been completely re-written
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ewuthesis}[2016/09/13 Eastern Washington University Thesis]

\LoadClass[letterpaper, oneside, 12pt]{book}
\RequirePackage{import}
\RequirePackage[normalem]{ulem}
\RequirePackage{setspace}
\RequirePackage{hyperref}
\RequirePackage{morefloats}
\RequirePackage[notindex]{tocbibind}

\doublespacing
\normalsfcodes


\newtoks\degreeyear 
\newtoks\degreeterm
\newtoks\degree
\newtoks\department

\newtoks\committeefirst
\newtoks\committeesecond
\newtoks\committeethird

\newtoks\birthplace

\newtoks\associatedegree
\newtoks\associateyear
\newtoks\associateschool
\newtoks\bachelorsdegree
\newtoks\bachelorsyear
\newtoks\bachelorsschool


\hypersetup{pdftitle=\@title}


\renewcommand{\maketitle}{      %TODO: Make the formatting better
    \begin{titlepage}
        \begin{center}
        \vspace*{\fill}         %Puts text in the middle of the page
            \MakeUppercase{\@title}\\
            
            \rule{\textwidth}{.4pt}
            
            A Thesis\\
            Presented To\\
            Eastern Washington University\\
            Cheney, Washington\\
            
            \rule{\textwidth}{.4pt}
            
            In Partial Fulfillment of the Requirements\\
            for the Degree\\
            \the\degree\ in \the\department\\
            
            \rule{\textwidth}{1pt}
            
            by\\
            \@author\\
            \the\degreeterm\ \the\degreeyear
        \vspace*{\fill}
        \end{center}
    \end{titlepage}
    \newpage
}

\newcommand{\makesigline}[1]{
    \par\noindent\makebox[2.5in]{\hrulefill} \hfill\makebox[2.0in]{\hrulefill}%
    \par\noindent\makebox[2.5in][l]{#1}      \hfill\makebox[2.0in][l]{DATE}
    {GRADUATE STUDY COMMITTE}
}

\newcommand{\makesigpage}{
    \singlespacing
    \vspace*{\fill}
    \begin{center}
        THESIS OF \MakeUppercase{\@author}\ APPROVED BY\\
    \end{center}
    \vspace*{\fill}
    

    \makesigline{\the\committeefirst}\\
    
    \makesigline{\the\committeesecond}\\
    
    \makesigline{\the\committeethird}
    \newpage
    \doublespacing
}

\newcommand{\makelibrarystatement}{
    \begin{center}
        \underline{MASTER'S THESIS}\\
    \end{center}
    
    \bigskip
    In presenting this thesis in partial fulfillment of the requirements for a master’s degree at Eastern Washington University, I agree that the JFK Library shall make copies freely available for inspection. I further agree that copying of this project in whole or in part is allowable only for scholarly purposes. \uline{It is understood, however, that any copying or publication of this thesis for commercial purposes, or for financial gain, shall not be allowed without my written permission.}\\

    \bigskip
    \hfill\begin{minipage}{\dimexpr\textwidth-6cm}
    Signature \makebox[4cm]{\hrulefill}\\
    
    Date \makebox[4.9cm]{\hrulefill}\\
    \end{minipage}
    
    
    \newpage
}

\newcommand{\makevita}{         %TODO: Fix formatting, probably use tabular style to make things look better
    \chapter{VITA}
    
    \bigskip
    \begin{tabular}{ l l l}
        Author: & \@author \\
        \\
        Place of Birth: & \the\birthplace \\
        \\
        Degrees Awarded: & \the\associatedegree & \the\associateyear \\
                        & \the\associateschool \\
                        \\
                        & \the\bachelorsdegree & \the\bachelorsyear \\
                        & \the\bachelorsschool
    \end{tabular}
}

