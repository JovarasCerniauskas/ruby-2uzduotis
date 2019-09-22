//Lukas Kaðëta PI17B
#include<iostream>
#include<fstream>
using namespace std;
//Programa kuri suranda kiek salos gyventojai turës sumokëti uþ elektrà
int main()
{
setlocale(LC_ALL, "Lithuanian");
double sump=0,proc=0,sumg=0,papildk=0,papildksum=0,papildkw=0,maxkw=0,pabaiga=0;
double a;
cout<<"Áveskite kiek kW elektros sunaudojo salos gyventojai"<<endl;
cin>>a;
if(a<=50) sump=(0.5*a) , sumg=sump+sumg; //Tikrinama ar sunaudojo maþiau negu 50kw elektros ir jeigu taip randama suma
else if(a>50,a<=150) papildk=a-50, sump=(0.5*50), papildksum=papildk*0.75 , sumg=sump+papildksum; //Ieðkoma kiek sunaudojo elektros papildomai ir apskaièiuojama suma
else if(a>150,a<=250) sump=(0.5*50) , papildksum=(100*0.75) , papildk=a-150 , papildkw=papildk*1.2 , sumg=sump+papildksum+papildkw; //Ieðkoma kiek sunaudojo elektros ir apskaièiuojama suma
    else sump=(0.5*50) , papildksum=(100*0.75) , papildkw=(100*1.2), papildk=a-250 , maxkw=papildk*1.5 , sumg=sump+papildksum+papildkw+maxkw; //Ieðkoma kiek sunaudojo elektros ir apskaièiuojama suma
proc=(sumg/100)*20; //Randamas administracinis mokestis
cout<<"Administracinis mokestis yra"<<proc<<"eur"<<endl;
cout<<"Salos þmonës uþ elektrà turës sumokëti"<<" "<<sumg<<"eur";
return 0;
}
