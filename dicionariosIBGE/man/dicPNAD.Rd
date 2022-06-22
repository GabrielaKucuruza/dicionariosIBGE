\name{dicPNAD}
\docType{data}

\alias{dicPNAD}
\alias{dicPNAD1983}
\alias{dicPNAD1988}
\alias{dicPNAD1993}
\alias{dicPNAD1995}
\alias{dicPNAD1996}
\alias{dicPNAD1997}
\alias{dicPNAD1998}
\alias{dicPNAD1999}
\alias{dicPNAD2001}
\alias{dicPNAD2002}
\alias{dicPNAD2003}
\alias{dicPNAD2004}
\alias{dicPNAD2005}
\alias{dicPNAD2007}
\alias{dicPNAD2009}
\alias{dicPNAD2011}
\alias{dicPNAD2012}
\alias{dicPNAD2013}
\alias{dicPNAD2014}
\alias{dicPNAD2015}




\alias{dicdom1983}
\alias{dicpes1983}
\alias{dicdom1988}
\alias{dicpes1988}
\alias{dicdom1993}
\alias{dicpes1993}
\alias{dicdom1995}
\alias{dicpes1995}
\alias{dicdom1996}
\alias{dicpes1996}
\alias{dicdom1997}
\alias{dicpes1997}
\alias{dicdom1998}
\alias{dicpes1998}
\alias{dicdom1999}
\alias{dicpes1999}
\alias{dicdom2001}
\alias{dicpes2001}
\alias{dicdom2002}
\alias{dicpes2002}
\alias{dic_dom_2003}
\alias{dic_pessoas_2003}
\alias{dic_dom_2004}
\alias{dic_pessoas_2004}
\alias{dic_dom_2005}
\alias{dic_pessoas_2005}
\alias{dic_dom_2007}
\alias{dic_pessoas_2007}
\alias{dic_dom_2009}
\alias{dic_pessoas_2009}
\alias{dic_dom_2011}
\alias{dic_pessoas_2011}
\alias{dic_dom_2012}
\alias{dic_pessoas_2012}
\alias{dic_dom_2013}
\alias{dic_pessoas_2013}
\alias{dic_dom_2014}
\alias{dic_pessoas_2014}
\alias{dic_dom_2015}
\alias{dic_pessoas_2015}

\encoding{UTF-8}
\title{Data Dictionaries for PNAD}
\description{
  One data dictionary for people records and one for house records,
  for each PNAD of the years 1983, 1988 and from 1993 to 2015.
}
\format{
  Each dictionary is a data frame with one line for each survey variable,
  and it has the following columns:  
  
  \tabular{lll}{
    inicio \tab numeric \tab Position of the value's first character in
    the data file \cr
    cod \tab character \tab Variable code \cr
    tamanho \tab numeric \tab Field size \cr
    desc \tab character \tab Short description
  }
}
\source{PNAD documentation available in the IBGE website}
\keyword{datasets}