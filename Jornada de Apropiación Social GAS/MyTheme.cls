% beamercopenhagen.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{beamercopenhagen}[2025/07/28 My custom Copenhagen-based Beamer class]

% Load Beamer base
\LoadClassWithOptions{beamer}

% Always use Copenhagen theme
\usetheme{Copenhagen}

% Color definitions
\definecolor{MyDarkBlue}{RGB}{44,62,80}    % Titles and accents
\definecolor{MyAccent}{RGB}{52,152,219}    % Accent for elements
\definecolor{MyLightGray}{RGB}{245,245,245}% Optional background color

% Global structure colors
\setbeamercolor{structure}{fg=MyAccent}
\setbeamercolor{frametitle}{fg=MyDarkBlue}
\setbeamercolor{title}{fg=MyDarkBlue}
\setbeamercolor{normal text}{fg=black}

% Custom block style using tcolorbox
\RequirePackage{tcolorbox}
\setbeamertemplate{block begin}{
	\vskip0.5em
	\begin{tcolorbox}[enhanced,
		sharp corners,
		drop shadow,
		colback=white,
		boxrule=0pt,
		frame hidden,
		left=2mm, right=2mm, top=1mm, bottom=1mm,
		width=\textwidth]
		\textbf{\insertblocktitle}
	}
	\setbeamertemplate{block end}{
	\end{tcolorbox}
	\vskip0.5em
}

% Optional: set default font and margins
\setbeamerfont{title}{series=\bfseries, size=\LARGE}
\setbeamersize{text margin left=1em, text margin right=1em}

% End of class file
