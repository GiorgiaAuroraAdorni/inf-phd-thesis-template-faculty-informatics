% -----------------------------------------------------------------------------
% LaTeX class for the doctoral dissertation at the Faculty of
% Informatics of University of Lugano
% 
% Domenico Bianculli <domenico.bianculli@lu.unisi.ch>
% Jochen Wuttke <wuttkej@lu.unisi.ch>
%
% -----------------------------------------------------------------------------
%%
%% This file is 'USIINFthesis.cls'
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.

%%% identification
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{usiinfthesis}[2009/09/30 v. 1.0.8 %
USI Informatics Doctoral Dissertation class]
%%% initial code
\RequirePackage{ifthen}
%%% true to produce a version suitable for printing
\newboolean{@printversion}
%%% true to enable automatic loading of hyperref package
\newboolean{@hypermode}
%%% true if a subtitle is provided
\newboolean{@subtitle}
%%% true if a coadvisor is provided
\newboolean{@coadvisor}
%%% true if a dedication is provided
\newboolean{@dedication}
%%% true if an epigraph is provided
\newboolean{@epigraph}
%%% true to insert a copyright notice
\newboolean{@crn}
%%% true if the document is a master thesis
\newboolean{@mscthesis}
% true if a master specialization is provided
\newboolean{@mscspec}
%%% declaration of options
\DeclareOption{print}{\setboolean{@printversion}{true}}
{%redefine margins to match oneside layout
}
%%% enable/disable hyperref
\DeclareOption{hyper}{\setboolean{@hypermode}{true}}
\DeclareOption{nohyper}{\setboolean{@hypermode}{false}}
% Produces a copyright notice. Enable if PhD program director likes it.
\DeclareOption{crn}{\setboolean{@crn}{true}}
%%%
\DeclareOption{a5paper}{\OptionNotUsed}
\DeclareOption{letterpaper}{\OptionNotUsed}
\DeclareOption{b5paper}{\OptionNotUsed}
\DeclareOption{legalpaper}{\OptionNotUsed}
\DeclareOption{executivepaper}{\OptionNotUsed}
\DeclareOption{landscape}{\OptionNotUsed}
\DeclareOption{openany}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption{oneside}{\OptionNotUsed}
\DeclareOption{twoside}{\OptionNotUsed}
%%% enable settings for a master thesis
\DeclareOption{mscthesis}{\setboolean{@mscthesis}{true}}

%%%
\DeclareOption*{% 
	\PassOptionsToClass{\CurrentOption}{book}% 
} 
%%% execution of options
\ExecuteOptions{hyper}
\ProcessOptions \relax
\typeout{*** Please report bugs, comments, suggestions, and improvements
	to: }
\typeout{*** Domenico Bianculli <domenico.bianculli@lu.unisi.ch>}
\typeout{*** Jochen Wuttke <wuttkej@lu.unisi.ch>}
%%% package loading
\LoadClass[a4paper,12pt,onecolumn,final,openright,titlepage]{book}
%%% main code


%font settings
\RequirePackage[T1]{fontenc}
\RequirePackage[charter]{mathdesign}
\RequirePackage[scaled]{beramono}
\renewcommand{\sfdefault}{uop}
% \renewcommand{\sfdefault}{phv}
\renewcommand{\scshape}{%
	\not@math@alphabet\scshape\relax
	% \ifthenelse{\equal{\f@family}{uop}}%
	\ifthenelse{\equal{\f@family}{uop}}%
	{\fontshape{sc}\selectfont}%
	{\fontshape{fsc}\selectfont}%
}

%NEW BY ME
\RequirePackage{fontspec}
\usepackage{fontspec}
\setmainfont{XCharter}[Scale=MatchLowercase]

% \newfontfamily{\optimafont}{Optima.ttc}[BoldFeatures={FontIndex=1}]
\setsansfont{Optima.ttc}[
Scale=MatchLowercase,
UprightFeatures = {FontIndex=0},
BoldFeatures = {FontIndex=1},
ItalicFeatures = {FontIndex=2},
BoldItalicFeatures = {FontIndex=3},
]

%sans-serif titles
\RequirePackage{sectsty}
\allsectionsfont{\sffamily}

% \newfontfamily{\optimabold}{Optima.ttc}[
%     UprightFeatures = {FontIndex=0},
%     BoldFeatures = {FontIndex=1},
%     ItalicFeatures = {FontIndex=2},
%     BoldItalicFeatures = {FontIndex=3},
%     ]
% \allsectionsfont{\optimabold}
% \setmainfont{Optima.ttc}[
%   UprightFeatures = {FontIndex=0},
%   BoldFeatures = {FontIndex=1},
%   ItalicFeatures = {FontIndex=2},
%   BoldItalicFeatures = {FontIndex=3},
% ]
% \RequirePackage{sectsty}
% \usepackage{sectsty}
% \allsectionsfont{\optimafont}

%geometry
\RequirePackage[a4paper]{geometry}
\geometry{hscale=0.67}
\ifthenelse{\boolean{@printversion}}{}%
{  \geometry{asymmetric}
	\geometry{bindingoffset=0pt,hmarginratio=1:1}
}


%%% fancy headers
\RequirePackage{fancyhdr}
\setlength{\headheight}{15pt}
\fancypagestyle{cover}{%
	\fancyhf{}
	\fancyhead{\mbox{ }}
}
\fancypagestyle{hrulefpage}{%
	\fancyhf{}
	\fancyhead{\mbox{ }}
	\fancyfoot[C]{\sf \thepage}
}
%modifying captions
\RequirePackage[font=sf,labelsep=period]{caption}


%%% additional titlepage content commands
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}\setboolean{@subtitle}{true}}


\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\@advisor}{\@latex@error{No \noexpand\advisor given}\@ehc}

\newcommand{\Month}[1]{\gdef\@month{#1}}
\newcommand{\Year}[1]{\gdef\@year{#1}}
\newcommand{\@year}{\@latex@error{No submission year with command \noexpand\Year given}\@ehc}

\newcommand{\coadvisor}[1]{\gdef\@coadvisor{#1}\setboolean{@coadvisor}{true}}

\newcommand{\specialization}[1]{\gdef\@specialization{#1}\setboolean{@mscspec}{true}}

%%% title page
\renewcommand{\maketitle}
{\pagenumbering{Alph}\begin{titlepage}%
		\pagestyle{cover}
		\begin{center}
			\null
			\vfill
			
			\noindent {\LARGE {\bf \sffamily \@title}}\\[6mm]
			\ifthenelse{\boolean{@subtitle}}{%
				\noindent{\large \bf \sffamily\@subtitle}\\
			}{}
			\vspace{10mm}
			\ifthenelse{\boolean{@mscthesis}}{Master's Thesis}{Doctoral
				Dissertation}
			{submitted to the}\\[2mm]
			{Faculty of Informatics of the Universit\`a della Svizzera italiana}\\[2mm]
			{in partial fulfillment of the requirements for the degree of}\\[2mm]
			\ifthenelse{\boolean{@mscthesis}}{%
				Master of Science in Informatics%
				\ifthenelse{\boolean{@mscspec}}{\\[2mm] \@specialization\\[16mm]}{\\[32mm]}}
			{Doctor of Philosophy \\[32mm]}
			{presented by}\\[2mm]
			{\Large {\bf \sffamily \@author}}
			\vfill
			\vfill
			
			{under the supervision of}\\[2mm]
			\ifthenelse{\boolean{@coadvisor}}{{\large {\@advisor\ and \@coadvisor}}\\}
			{{\large {\@advisor}}\\}
			\vfill
			{\@month\ \@year}\\
		\end{center}
	\end{titlepage}%
	\setcounter{footnote}{0}%
} %%% end titlepage

\renewenvironment{titlepage}
{%
	\cleardoublepage
	\setcounter{page}\z@
}%
{\newpage }




%%% frontmatter may include an epigraph
\RequirePackage{epigraph}
\setlength{\epigraphrule}{0pt}

%% additional frontmatter content commands

\newcommand{\programDirector}[1]{\gdef\@progdir{#1}}
\newcommand{\@progdir}{\@latex@error{No \noexpand\programDirector given}\@ehc}
\newcommand{\committee}[1]{\gdef\@committee{\begin{tabular}{ll}\\%
			#1
		\end{tabular}\\}}
\newcommand{\committeeMember}[2]{\bf #1 & #2\\}
\newcommand{\dedication}[1]{\gdef\@dedication{#1}\setboolean{@dedication}{true}}
\newcommand{\openepigraph}[2]{\gdef\@openepigraph{\epigraph{#1}{#2}}\setboolean{@epigraph}{true}}
\newcommand\Day[1]{\gdef\@dateaccepted{#1}}
\newcommand{\@dateaccepted}{\@latex@error{No \noexpand\day given}\@ehc}
\newcommand{\place}[1]{\gdef\@place{#1}}
\newcommand{\@place}{\@latex@error{No \noexpand\place given}\@ehc}
\newcommand{\@crnotice}{\vfill  \noindent Copyright \copyright\ \@year\ by \@author \\ All rights reserved. }
\newcommand{\@authdecl}{%
	I certify that except where due acknowledgement has been given, the
	work presented in this thesis is that of the author alone; the work
	has not been submitted previously, in whole or in part, to qualify for
	any other academic award; and the content of the thesis is the result
	of work which has been carried out since the official commencement
	date of the approved research program.\\[18mm]
	
	
	\hfill \begin{minipage}{6cm}
		
		\rule{6cm}{0.2mm}
		
		\@author
		
		\@place, \@dateaccepted\ \@month\ \@year
		
	\end{minipage}
	\clearpage
}


\renewcommand\frontmatter{%
	\@mainmatterfalse
	\pagenumbering{Roman}
	\clearpage
	
	\thispagestyle{empty}
	
	\mbox{ }
	
	\ifthenelse{\boolean{@crn}}{\@crnotice}{}
	\clearpage
	\pagestyle{empty}
	\pagenumbering{roman}
	\setcounter{page}{1}
	\pagestyle{hrulefpage}
	\ifthenelse{\boolean{@mscthesis}}{}{%
		\begin{center}
			\vspace{1cm}
			\noindent {\large {\bf \sffamily Dissertation Committee}}\\[2mm]
			\vspace{12mm}
			%\begin{center}
			\@committee
			%\end{center}
			\vfill
			\vfill
			\vfill
			\noindent {Dissertation accepted on \@dateaccepted\ \@month\
				\@year}\\[18mm]
			\begin{tabular}{cc}
				\rule{0.45\textwidth}{0.2mm} & \rule{0.45\textwidth}{0.2mm}\\
				\if@coadvisor
				Research Advisor & Co-Advisor\\\addlinespace
				\bf \@advisor & \bf \@coadvisor\\\addlinespace
				& \\\addlinespace
				& \\\addlinespace
				\multicolumn{2}{c}{\rule{0.45\textwidth}{0.2mm}}\\\addlinespace
				\multicolumn{2}{c}{PhD Program Director}\\\addlinespace
				\multicolumn{2}{c}{\bf \@progdir}\\\addlinespace
			\end{tabular}
			\else
			Research Advisor & PhD Program Director\\\addlinespace
			\bf \@advisor & \bf \@progdir\\\addlinespace
		\end{tabular}
		\vfill
		\fi
	\end{center}
	
	\clearpage
}
\@authdecl
\ifthenelse{\boolean{@mscthesis}}{\thispagestyle{empty}\cleardoublepage}{}
\pagestyle{plain}

\ifthenelse{\boolean{@dedication}}{%
	\vspace*{5cm}
	\begin{flushright}
		{\Large \emph{\@dedication}}
	\end{flushright}
	\cleardoublepage
}{}
\ifthenelse{\boolean{@epigraph}}{%
	\vspace*{5cm}
	\@openepigraph
	\cleardoublepage
}{}
\fancypagestyle{plain}{%
	\fancyhf{}
	\fancyfoot[C]{\sf \thepage}
	\renewcommand{\headrulewidth}{0pt}}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\ ##1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection\ ##1}}
\ifthenelse{\boolean{@printversion}}{%
	\fancyhead{}
	\fancyhead[LE, RO]{\sf \thepage}
	\fancyhead[RE]{\sf \leftmark}
	\fancyhead[LO]{\sf \rightmark}
}
{%
	\fancyhead{}
	\fancyhead[RO, RE]{\sf \rightmark}
	\fancyhead[LO, LE]{\sf \thepage}
}
\fancyfoot{}

\newcounter{oldpage}
\setcounter{oldpage}{\value{page}}
\pagenumbering{roman}
\setcounter{page}{\value{oldpage}}
} %%% end frontmatter


%%% abstract
\newenvironment{abstract}[1][Abstract]{%
\chapter*{#1\markboth{#1}{}}
}


%%% acknowledgments
\newenvironment{acknowledgements}{%
\chapter*{Acknowledgements\markboth{Acknowledgements}{}}
}{\cleardoublepage}

\renewcommand\listfigurename{Figures}
\renewcommand\listtablename{Tables}





%%% put ToC, LoF, LoT and Index entries in the ToC
%%% use of \phantomsection is required for dealing with hyperref
%%% package and depends on nohyper option


\renewcommand\tableofcontents{%
\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
\addcontentsline{toc}{chapter}{\contentsname}%
\chapter*{\contentsname
	\@mkboth{\contentsname}{\contentsname}}%
\@starttoc{toc}%
\cleardoublepage
}

\renewcommand\listoffigures{%
\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
\addcontentsline{toc}{chapter}{List of \listfigurename}%
\chapter*{\listfigurename}%
\@mkboth{\listfigurename}%
{\listfigurename}%
\@starttoc{lof}%
\cleardoublepage
}

\renewcommand\listoftables{%
\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
\addcontentsline{toc}{chapter}{List of \listtablename}%
\chapter*{\listtablename}%
\@mkboth{%
	\listtablename}%
{\listtablename}%
\@starttoc{lot}%
}

\renewenvironment{theindex}
{\twocolumn[\@makeschapterhead{\indexname}]%
\ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
\addcontentsline{toc}{chapter}{\indexname}
\@mkboth{\indexname}%
{\indexname}%
\thispagestyle{plain}\parindent\z@
\parskip\z@ \@plus .3\p@\relax
\columnseprule \z@
\columnsep 35\p@
\let\item\@idxitem}
{}


%%% other useful packages

\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{textcomp}
\RequirePackage{url}
\RequirePackage{amsmath}
% \RequirePackage{amssymb}
\RequirePackage[sort,square,numbers]{natbib}
%%% lowercase header for bibliography and corresponding entry in the
%%% ToC. \bibsection is provided by the natbib package
% \renewcommand\bibsection{
% \chapter*{\bibname \@mkboth{\bibname}{\bibname}}
% \ifthenelse{\boolean{@hypermode}}{\phantomsection}{}
% \addcontentsline{toc}{chapter}{\bibname}
% }

%%% switch on hyperref support
\RequirePackage[dvipsnames,table]{xcolor}
\ifthenelse{\boolean{@hypermode}}{%
\RequirePackage[unicode,plainpages=false,pdfpagelabels,breaklinks,colorlinks]{hyperref}
\RequirePackage[all]{hypcap}
}{}
\hypersetup{
linkcolor=Black
,citecolor=Green
,filecolor=Mulberry
,urlcolor=NavyBlue
,menucolor=BrickRed
,runcolor=Mulberry
,linkbordercolor=BrickRed
,citebordercolor=Green
,filebordercolor=Mulberry
,urlbordercolor=NavyBlue
,menubordercolor=BrickRed
,runbordercolor=Mulberry
}

%%% other formatting stuff

\renewcommand{\baselinestretch}{1.05}
