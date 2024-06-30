\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsf}
%\LoadClass[11pt, letterpaper, timesnewroman, onecolumn]{article}
\LoadClass[11pt, letterpaper, onecolumn]{article}

\RequirePackage[margin=1in]{geometry}%\RequirePackage[pdftex,colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black]{hyperref}
\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black,filecolor=black]{hyperref}

%\RequirePackage[pdftex]{graphicx}
\RequirePackage{graphicx}

\DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\fancyfoot[R]{\thepage} 

%\RequirePackage{titlecaps}
%\RequirePackage[explicit]{titlesec}
%\titleformat{\section}{\Large\bfseries\filcenter}{}{0pt}{\titlecap{#1}\\\rule{\textwidth}{0.4pt}}
% ^^^ These three lines make the section titles (Summary, Project Descrption, etc.) nice and centered on the page.  BUT they break the ability of the bibliography to compile.  Big problem!
% ^^^ I can achieve the same thing by manually starting each section as follows:
%		\section{\hfil Project Description \hfil}
%		\vspace{-16pt}
%		\noindent\hrulefill
%
% The below go with titlecaps package and just slightly change the format of subsection/subsubsection headings (and remove numbering), no loss not to use
%\titleformat{\subsection}{\large\bfseries}{}{0pt}{\titlecap{#1}}
%\titleformat{\subsubsection}{\bfseries}{}{0pt}{\titlecap{#1}}
%\titlespacing*{\section}{0pt}{0.5em}{0.3pt}
%\titlespacing*{\subsection}{0pt}{0.35em}{0pt}
%\titlespacing*{\subsubsection}{0pt}{0.25em}{0pt}

\renewcommand{\title}[1]{\begin{center}\LARGE\bfseries{#1}\end{center}}

% Reset page numbering to 1.  This is helpful, since the text can only
% be 15 pages (unless otherwise specified, see individual solicitations), 
% and reviewers will want to believe we've kept it within those limits
\newcommand{\newsection}[1]{\pagenumbering{arabic}\renewcommand{\thepage}{#1--\arabic{page}}}

% I prefer to use the IEEE bibliography style. 
% That's  NOT required by the NSF guidelines. 
% Feel Free to use whatever style you prefer
%\bibliographystyle{style/ieee}
\bibliographystyle{style/agu04}
%\bibliographystyle{apacite}