Algoritmo "Simulado - No??es B?sicas de Programa??o"

Var
   cont, os, us, nc, ts, qh, thc, tc, thu, tu : real
   media, valor, macae, santos, complex, qh100, medhu, medhc : real
   calMacae, calSantos, usiMacae, usiSantos : real
   percCalMacae, percCalSantos, percUsiMacae, percUsiSantos : real

Inicio

   cont<-0
   os<-100
   enquanto cont<150 faca
      //Quest?o 1
      os<-os+1
      us<- randi(2)+1
      nc<- randi(3)+1
      ts<- randi(2)+1
      qh<- randi(153)+8
      //Quest?o 2
      valor<-1200+(200*nc)*qh
      escreval(os," -- Unidade:",us," -- Complexidade:",nc," -- Servi?o:",ts," -- Horas:",qh," -- Valor:",valor)
      //Maca?
      se us=1 entao
         macae<-macae+1
         se ts=1 entao
            calMacae<-calMacae+1
            thc<-thc+qh
            tc<-tc+1
         senao
            usiMacae<-usiMacae+1
            thu<-thu+qh
            tu<-tu+1
         fimse
      fimse
      //Santos
      se us=2 entao
         santos<-santos+1
         se ts=1 entao
            calSantos<-calSantos+1
            thc<-thc+qh
            tc<-tc+1
         senao
            usiSantos<-usiSantos+1
            thu<-thu+qh
            tu<-tu+1
         fimse
      fimse
      //Quest?o 4
      se nc=3 entao
         complex<-complex+1
         se qh>100 entao
            qh100<-qh100+1
         fimse
      fimse
      cont<-cont+1

   fimenquanto
   //Qust?o 3
   percCalMacae<-(calMacae/macae)*100
   percUsiMacae<-(usiMacae/macae)*100
   percCalSantos<-(calSantos/santos)*100
   percUsiSantos<-(usiSantos/santos)*100
   //Quest?o 5
   medhc<-thc/tc
   medhu<-thu/tu

   escreval("   ")
   escreval("Maca? - Percentual de Servi?os")
   escreval("Caldeiraria: ",percCalMacae:4:2,"%")
   escreval("Usinagem: ",percUsiMacae:4:2,"%")
   escreval("   ")
   escreval("Santos - Percentual de Servi?os")
   escreval("Caldeiraria: ",percCalSantos:4:2,"%")
   escreval("Usinagem: ",percUsiSantos:4:2,"%")
   escreval("   ")
   escreval("M?dia de Horas dos Servi?os")
   escreval("M?dia Caldeiraria: ",medhc:4:2)
   escreval("M?dia Usinagem: ",medhu:4:2)

Fimalgoritmo