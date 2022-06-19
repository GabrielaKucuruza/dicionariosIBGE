\name{rot_7_pof_2017_2018}
\alias{rot_7_pof_2017_2018}
\docType{data}



\encoding{UTF-8}
\title{Data Dictionary label for other income record POF 2017-2018 survey}
\description{
  One data dictionary label for reading "OUTROS_RENDIMENTOS.txt" file
  (other income record from POF 2017-2018  survey).
    
  There may be "NA" values in the "valor" column because in some questions of the PNAD survey, there is the option "Blank", that is, "NA", which has a correspondent lable. In order to prevent loss of data, this was preserved. 

}

\format{
  This dictionary is a data frame with one line for each survey categorical variable,
  and it has 3 columms, with important information of each categorical variable.
  
  \tabular{lll}{
    cod    \tab character \tab Variable code \cr
    valor  \tab numeric   \tab Levels of the categorical variable \cr
    rotulo \tab character   \tab Labels of the categorical variable 
  }
}
\source{The dictionaries were made based on the documentation of the
    POF survey available at \url{http://www.ibge.gov.br}.}

\keyword{datasets}
    