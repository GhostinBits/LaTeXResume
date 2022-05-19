//
//  ModelData.swift
//  LaTeXResume
//
//  Created by GhostinBits on 2022-05-17.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var profile = Profile()
    
    var temp_test = #"\%@"#
    
    var template = #"""
    \documentclass{article}
    \usepackage{parskip}
    \usepackage[margin=0.8in]{geometry}
    \usepackage{hyperref}
    \usepackage{titlesec}

    \pagenumbering{gobble}

    \setlength\parindent{0pt}
    \setlength\parskip{3pt}

    \titleformat{\section}{\Large\scshape\raggedright}{}{0em}{}[\titlerule]
    \titlespacing*{\section}{0pt}{15pt}{5pt}

    \titleformat{\subsection}{\bfseries\large}{}{0em}{}
    \titlespacing*{\subsection}{0pt}{0pt}{0pt}

    \begin{document}
    \begin{center}
        \Large %@
    \end{center}
    \begin{center}
    \begin{tabular}{c | c | c}
                    %@ & %@ & github.com/GhostinBits
            \end{tabular}
    \end{center}

    \section{Skills}
        \textbf{Languages}: %@
        
        \textbf{Software}: %@
        
        \textbf{Libraries}: %@

    \section{Education}
        \subsection{%@}
        Honours Specialization in Computer Science
        \hfill %@ | %@
        
        \begin{itemize}
            \item GPA: %@
        \end{itemize}
        
    \section{Experiences}
        \subsection{%@}
        %@
        \hfill
        %@ | %@
        \begin{itemize}
            \item %@
            \item %@
        \end{itemize}
        
        \subsection{%@}
        %@
        \hfill
        %@ | %@
        \begin{itemize}
            \item %@
        \end{itemize}
        
    \section{Awards}
        \subsection{%@}
        %@
        \hfill
        %@
        
        \subsection{%@}
        %@
        \hfill
         %@
        
    \section{Projects}
    \begin{itemize}
        \item %@
            \begin{itemize}
            \item %@
            \item %@
            \item %@
            \end{itemize}
        \item
                %@
        \begin{itemize}
            \item %@
        \end{itemize}
        
    \end{itemize}
    \end{document}

    """#
    
}
