\name{dic_7_pof_2017_2018}
\alias{dic_7_pof_2017_2018}
\docType{data}

\encoding{UTF-8}
\title{Dictionary for other income record POF 2017-2018 survey}

\description{

  Data dictionary for reading "OUTROS_RENDIMENTOS.txt" file 
  ( other income record from POF 2017-2018  survey).


}

\format{
  This dictionary is a data frame with one line for each variable,
  and it has 4 columms, with important information of each variable.
  
  \tabular{lll}{
    inicio \tab numeric \tab Position of the value's first character in
    the data file \cr
    cod \tab character \tab Variable code \cr
    tamanho \tab numeric \tab Field size \cr
    desc \tab character \tab Short description\cr
  
  }
}
\source{The dictionaries were made based on the documentation of the
    POF survey available at \url{http://www.ibge.gov.br}.}
\keyword{datasets}