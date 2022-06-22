le.pesquisa <- function(dicionario, pathname.in, codigos, rotulos = NULL, tbloco = 2000, nlines = NA) {

  inicios <- numeric(0)
  tamanhos <- numeric(0)

  #Condições da função:
  ## Se é um NA, print "You must provide the number of lines of the data file"
  if(is.na(nlines))
    stop(paste("You must provide the number of lines of the data file", substitute(dicionario), sep=" "))

  ## Se os valores forem falsos, print "The", substitute(dicionario)," is not a valid object for 'dicionario' parameter"
  if(!all(c("inicio","cod", "tamanho", "desc") == colnames(dicionario)) )
    stop(paste("The", substitute(dicionario)," is not a valid object for 'dicionario' parameter",sep=" "))
  
  ## Se os valores forem falsos, print "The", substitute(dicionario)," is not a valid object for 'rotulos' parameter"
  if(!all(c("cod", "valor", "rotulo") == colnames(rotulos)) )
    stop(paste("The", substitute(rotulos), "is not a valid object for 'rotulos' parameter", sep=" "))
  
  tmp <- merge(data.frame(cod = codigos, stringsAsFactors = FALSE), dicionario)
  inicios <- tmp[ ,"inicio"]
  tamanhos <- tmp[ ,"tamanho"]
  rm(tmp)
  ## Se o início do dado for == 0, print "Variables do not exist in", substitute(dicionario)  
  if (length(inicios) == 0)
    stop(paste("Variables do not exist in", substitute(dicionario), sep=" "))

  ## Aqui é quando está lendo? "Will display a progress bar on the R console via text representation
  pb <- txtProgressBar(min = 0, max = (nlines/tbloco) * length(codigos), style = 3)
  arq <- file(pathname.in, open = "r")
  dados <- NULL

  process <- 0
  cont <- TRUE
  while (cont) {
    bloco <- scan(file = arq, what = " ", sep = " ", nlines = tbloco, quiet = TRUE)
    df.temp <- NULL
    for (k in 1:length(inicios)) {
      coluna <- substr(bloco, inicios[k], inicios[k] + tamanhos[k] - 1) 
      if(is.null(df.temp))
        df.temp <- data.frame(type.convert(coluna))
      else 
        df.temp <- cbind(df.temp, data.frame(type.convert(coluna)))
      process <- process + 1
      setTxtProgressBar(pb, process)
    }
    ## Se os dados forem nulos
    if(is.null(dados))
      dados <- df.temp
    else
      dados <- rbind(dados, df.temp)
    if (length(bloco) < tbloco) 
      cont <- FALSE
  }
  close(arq)
  rm(bloco, df.temp)
  colnames(dados) <- codigos
  close(pb)
  if(is.null(rotulos)){
    return(dados)
  }
  for(n in 1:ncol(dados)){
    colname <- colnames(dados)[n]
    if(colname %in% rotulos$cod){
      tmp <- rotulos[rotulos$cod == colname, 2:3]
      dados[,n] <- factor(dados[,n], levels = tmp[,1], labels = tmp[,2])
    }
  }
  return(dados)
}