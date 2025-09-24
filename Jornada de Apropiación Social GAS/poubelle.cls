\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{poubelle}[2014/08/16 Example LaTeX class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[aspectratio=169,12pt]{beamer}