%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------
\usepackage{fontawesome5}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{developercv}[2023/10/12 Developer CV class v2.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions\relax

\LoadClass{extarticle}

%----------------------------------------------------------------------------------------
%	PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\setlength{\parindent}{0mm}

\usepackage[hidelinks]{hyperref}

\pagestyle{empty}
\usepackage{moresize}
\usepackage{enumitem}
%----------------------------------------------------------------------------------------
%	PAGE LAYOUT
%----------------------------------------------------------------------------------------

\usepackage{geometry}
\geometry{
	paper=a4paper,
	top=1.6cm,
	bottom=1.6cm,
	left=1.6cm,
	right=1.6cm,
	headheight=0.75cm,
	footskip=1cm,
	headsep=0.5cm,
}

%----------------------------------------------------------------------------------------
%	FONTS
%----------------------------------------------------------------------------------------

\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[english, russian]{babel}
\usepackage[defaultsans]{droidsans}

\renewcommand*\familydefault{\sfdefault}

%------------------------------------------------

\usepackage{fontawesome}
\newcommand{\icon}[3]{
	\vcenteredhbox{\colorbox{white}{\makebox(#2, #2){\textcolor{black}{\Large\csname fa#1\endcsname}}}}
	\hspace{0.1cm}
	\vcenteredhbox{\textcolor{black}{#3}}
}

%----------------------------------------------------------------------------------------
%	GRAPHICS DEFINITIONS
%---------------------------------------------------------------------------------------- 

\usepackage{tikz}
\usetikzlibrary{shapes, backgrounds}
\tikzset{x=1cm, y=1cm}

\newcommand{\vcenteredhbox}[1]{
	\begingroup%
		\setbox0=\hbox{#1}\parbox{\wd0}{\box0}%
	\endgroup%
}

%----------------------------------------------------------------------------------------
%	CUSTOM SECTIONS
%----------------------------------------------------------------------------------------
\def\Vhrulefill{\leavevmode\leaders\hrule height 0.7ex depth \dimexpr0.4pt-0.7ex\hfill\kern0pt}


\newcommand{\cvsect}[1]{
	\vspace{\baselineskip}
	\textcolor{black}{ \MakeUppercase{\textbf{#1}}} \hspace{4pt} \Vhrulefill \\
}

%----------------------------------------------------------------------------------------
%	ENTRY LIST
%----------------------------------------------------------------------------------------

\usepackage{longtable}
\setlength{\LTpre}{0pt}
\setlength{\LTpost}{0pt}

\setlength{\tabcolsep}{0pt}

\newenvironment{entrylist}{
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\entry}[4]{
	\parbox[t]{0.15\textwidth}{
	   \small #1
	}%
	&\parbox[t]{0.85\textwidth}{
		\textbf{#2}
		\hfill
		{\footnotesize \textbf{\textcolor{black}{#3}}}\\
		#4
	}\\\\}

\newcommand{\slashsep}{\hspace{3mm}/\hspace{3mm}}
