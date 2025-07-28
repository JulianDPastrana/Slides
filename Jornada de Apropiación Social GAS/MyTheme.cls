% MyTheme.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MyTheme}[2025/07/28 Custom Beamer theme with options]

% ----------------------------
% 1. Capturar y reenviar todas las opciones a beamer
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

% 2. Cargar beamer con esas opciones
\LoadClass{beamer}

% ----------------------------
% 3. Tu configuración particular
\usetheme{Copenhagen}
\usecolortheme{seahorse}

% Define custom colors
\definecolor{MyDarkBlue}{RGB}{44,62,80}    % Titles and accents
\definecolor{MyAccent}{RGB}{52,152,219}      % Accent for elements
\definecolor{MyLightGray}{RGB}{245,245,245}  % Optional background color

% Global settings for structure
\setbeamercolor{structure}{fg=MyAccent}
\setbeamercolor{frametitle}{fg=MyDarkBlue}
\setbeamercolor{title}{fg=MyDarkBlue}
\setbeamercolor{normal text}{fg=black}

% Bloques con tcolorbox
%\RequirePackage{tcolorbox}
%\setbeamertemplate{block begin}{
%	\vskip0.5em
%	\begin{tcolorbox}[enhanced,
%		sharp corners,
%		drop shadow,
%		colback=white,
%		boxrule=0pt,
%		frame hidden,
%		left=2mm, right=2mm, top=1mm, bottom=1mm,
%		width=\textwidth]
%		\textbf{\insertblocktitle}
%	}
%	\setbeamertemplate{block end}{
%	\end{tcolorbox}
%	\vskip0.5em
%}

% (Opcional) Ajustes de fuente y márgenes
\setbeamerfont{title}{series=\bfseries, size=\LARGE}
\setbeamersize{text margin left=1em, text margin right=1em}
