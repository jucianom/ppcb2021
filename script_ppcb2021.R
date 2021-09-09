
# R packages --------------------------------------------------------------

library(tidyverse)
library(googlesheets4)
library(janitor)


# import table geral -----------------------------------------------------------
gs4_auth(email = "jucianom@gmail.com")

geral <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1YvUxnsI3uuYYNAeBO41uxy4NePzdz9HIMyMLukW8Q5k/edit#gid=2144456246") 

geral <- geral |> 
  rename(data_hora=`Carimbo de data/hora`,
         n_quest=`[Número do questionário]`,
         cod_pesq=`[Código do Pesquisador]`,
         cidade=`A. Cidade`,
         zona=`B. Zona/Área`,
         logradouro=`C. Logradouro (Rua, Av., etc.)`,
         dia_semana=`D. Dia da Semana`,
         data =`E. Data`,
         bike=`F. Bicicleta de Sistema Compartilhado`,
         qt_dia=`1. Quantos dias da semana você costuma utilizar a bicicleta como meio de transporte?`,
         trabalho=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local de trabalho]`,
         escola=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Escola/Faculdade]`,
         compras=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local de Compras]`,
         lazer=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local lazer/encontro social]`,
         estacao=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Estação Intermodal]`,
         qt_tempo=`3. Você começou a utilizar a bicicleta como meio de transporte há quanto tempo?`,
         ql_motivo=`4. Por qual motivo você utiliza a bicicleta como meio de transporte?`,
         ou_meio=`5. Nos trajetos mais frequentes de bicicleta antes você utilizava outro meio de transporte?`,
         ql_meio=`5.1 Se sim, qual?`,
         combina=`6. Em alguns dos seus trajetos semanais você utiliza a bicicleta em combinação com outro meio de transporte?`,
         ql_combina=`6.1 Se sim, qual?`,
         ocorrencia=`7. Nos últimos dois anos sofreu ou esteve envolvida (o) em alguma ocorrência de trânsito (colisão/atropelamento) enquanto pedalava?`,
         bairro=`8. Qual bairro você mora?`,
         tempo=`9.  Quanto tempo você leva no trajeto mais frequente que realiza de bicicleta`,
         pandemia=`10. Com a pandemia houve alteração na frequência dos deslocamentos de bicicleta?`,
         frequencia=`10.1 Se sim, como`,
         idade=`11. Qual a sua idade?`,
         sexo=`12. Qual o seu gênero?`,
         escolaridade=`13. Qual a sua escolaridade? (Considerar o último segmento completo)`,
         qt_domicilio=`14. Quantas pessoas moram no seu domicílio?`,
         raca=`15. A sua cor ou raça é:`,
         renda=`16. Qual a renda total do seu domicílio?`,
         oq_frequencia=`17. O que faria você utilizar a bicicleta com mais frequência?`,
         sistema=`18. A implantação dos Sistema de Bicicleta Compartilhada em sua cidade influenciou a sua escolha em utilizar a bicicleta?`,
         covid19=`19. Algum morador do seu domicílio foi diagnosticado com Covid-19?`
  ) |> 
  relocate(estacao, .after = lazer)



# import table Petrópolis -------------------------------------------------

petropolis <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1OSXf4sgRzmhw0gUn2usI8PhJ6qUuR_bUoUmPd5lzTpY/edit?resourcekey#gid=422190243") 


petropolis <- petropolis |> 
  rename(data_hora=`Carimbo de data/hora`,
         n_quest=`[Número do questionário]`,
         cod_pesq=`[Código do Pesquisador]`,
         cidade=`A. Cidade`,
         zona=`B. Zona/Área`,
         logradouro=`C. Logradouro (Rua, Av., etc.)`,
         dia_semana=`D. Dia da Semana`,
         data =`E. Data`,
         bike=`F. Bicicleta de Sistema Compartilhado`,
         qt_dia=`1. Quantos dias da semana você costuma utilizar a bicicleta como meio de transporte?`,
         trabalho=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local de trabalho]`,
         escola=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Escola/Faculdade]`,
         compras=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local de Compras]`,
         lazer=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Local lazer/encontro social]`,
         estacao=`2. Em relação à pergunta anterior, para quais destinos e em quantos dias você utiliza a bicicleta como meio de transporte? [Estação Intermodal]`,
         qt_tempo=`3. Você começou a utilizar a bicicleta como meio de transporte há quanto tempo?`,
         ql_motivo=`4. Por qual motivo você utiliza a bicicleta como meio de transporte?`,
         ou_meio=`5. Nos trajetos mais frequentes de bicicleta antes você utilizava outro meio de transporte?`,
         ql_meio=`5.1 Se sim, qual?`,
         combina=`6. Em alguns dos seus trajetos semanais você utiliza a bicicleta em combinação com outro meio de transporte?`,
         ql_combina=`6.1 Se sim, qual?`,
         ocorrencia=`7. Nos últimos dois anos sofreu ou esteve envolvida (o) em alguma ocorrência de trânsito (colisão/atropelamento) enquanto pedalava?`,
         bairro=`8. Qual bairro você mora?`,
         tempo=`9.  Quanto tempo você leva no trajeto mais frequente que realiza de bicicleta`,
         pandemia=`10. Com a pandemia houve alteração na frequência dos deslocamentos de bicicleta?`,
         frequencia=`10.1 Se sim, como`,
         idade=`11. Qual a sua idade?`,
         sexo=`12. Qual o seu gênero?`,
         escolaridade=`13. Qual a sua escolaridade? (Considerar o último segmento completo)`,
         qt_domicilio=`14. Quantas pessoas moram no seu domicílio?`,
         raca=`15. A sua cor ou raça é:`,
         renda=`16. Qual a renda total do seu domicílio?`,
         oq_frequencia=`17. O que faria você utilizar a bicicleta com mais frequência?`,
         sistema=`18. A implantação dos Sistema de Bicicleta Compartilhada em sua cidade influenciou a sua escolha em utilizar a bicicleta?`,
         covid19=`19. Algum morador do seu domicílio foi diagnosticado com Covid-19?`
  ) |> 
  relocate(estacao, .after = lazer)


ppcb21_painel <- rbind(geral, petropolis) |> 
  as_tibble()




