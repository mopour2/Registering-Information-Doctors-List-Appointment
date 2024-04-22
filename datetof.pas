unit datetof;

interface
uses sysutils;

procedure GetDateToString(var yeart,montt, dayt:word;var ss,ss2:string);
procedure GetLastDateToString(var yeart,montt, dayt,yeart3,montt3, dayt3:word;var ss2,ss3:string);
function datetostrFarsi(Year, Month, Day: Word):string;
procedure GetAfterDateToString(var yeart,montt, dayt,yeart3,montt3, dayt3:word;var ss2,ss3:string);
Function DayOfWeek_Shamsi (y,m,d:integer):integer;
procedure SplDate(var yeart,montt, dayt:string;Date1:string);
Function WeekNumber_Shamsi (y,m,d:integer):integer;

const
 weekStrFarsi: array [1..7] of string =('Ìò‘‰»Â','œÊ‘‰»Â','”Â ‘‰»Â','çÂ«— ‘‰»Â','Å‰Ã ‘‰»Â','Ã„⁄Â','‘‰»Â');

procedure ftodate(var yeart,montt, dayt:word);
implementation

procedure ftodate(var yeart,montt, dayt:word);
const
 ArrayShamsiMonthName:array [0..11] of string =('???????', '????????', '?????', '???', '?????', '??????', '???', '????', '???', '??', '????', '?????');
 ArrayShamsiDayName: array [0..6] of string =('??????', '??????', '?? ????', '????????', '??? ????', '????', '????');
 MiladiDaysInMonth:array [0..11] of integer =(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
 ShamsiDaysInMonth:array [0..11] of integer =(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
var
 DateShamsiYear,DateShamsiDayNP,DateMiladiDayNo,DateMiladiYear,DateMiladiMonth,DateMiladiDay:integer;
 DateShamsiMonth,DateShamsiDay:integer;
 DateShamsiDayName,DateShamsiMonthName:string;
 GetDateYearMiladi,GetDateMonthMiladi,GetDateDayMiladi:integer;
  i:integer;
   DateShamsiDayNo:integer;
 begin

// Acquire;
 try
// {$FINITEFLOAT ON}
      GetDateYearMiladi:=yeart;
      GetDateMonthMiladi:=montt;
      GetDateDayMiladi:=dayt;

        DateMiladiYear := GetDateYearMiladi - 1600;
        DateMiladiMonth := GetDateMonthMiladi - 1;
        DateMiladiDay := GetDateDayMiladi - 1;

        DateMiladiDayNo := (365 * DateMiladiYear) + ((DateMiladiYear + 3)div 4) - ((DateMiladiYear + 99)div 100) + ((DateMiladiYear + 399)div 400);

        i := 0;
        while (i < DateMiladiMonth) do
            begin
            DateMiladiDayNo := DateMiladiDayNo + MiladiDaysInMonth[i];
            inc(i);
            end;


        if (DateMiladiMonth > 1) and (( ((DateMiladiYear mod 4) = 0) and ((DateMiladiYear mod 100) <> 0)) or ((DateMiladiYear mod 400) = 0)) then
            inc(DateMiladiDayNo);

        DateMiladiDayNo := DateMiladiDayNo + DateMiladiDay;
        DateShamsiDayNo := DateMiladiDayNo - 79;
        DateShamsiDayNP := (DateShamsiDayNo div 12053);
        DateShamsiDayNo := DateShamsiDayNo mod 12053;
        DateShamsiYear := 979 + 33 * DateShamsiDayNP + 4 * (DateShamsiDayNo div 1461);
        DateShamsiDayNo :=DateShamsiDayNo mod  1461;

        if(DateShamsiDayNo >= 366) then
        begin
            DateShamsiYear := DateShamsiYear + ((DateShamsiDayNo - 1) div 365);
            DateShamsiDayNo := (DateShamsiDayNo - 1) mod 365;
        end;

         i := 0;
         while ( i < 11) and (DateShamsiDayNo >= ShamsiDaysInMonth[i]) do
          begin
            DateShamsiDayNo := DateShamsiDayNo - ShamsiDaysInMonth[i];
            inc(i);
          end;

        DateShamsiYear := DateShamsiYear;

        if (i + 1 >= 10) then
          DateShamsiMonth := (i + 1)
        else DateShamsiMonth :=((i + 1));

        DateShamsiMonthName := ArrayShamsiMonthName[DateShamsiMonth - 1];

        if (DateShamsiDayNo + 1 >= 10) then
         DateShamsiDay := (DateShamsiDayNo + 1)
         else DateShamsiDay := ((DateShamsiDayNo + 1));

//        DateShamsiDayName := ArrayShamsiDayName[DayOfWeek(ADate)];

        YearT := DateShamsiYear;
        Montt:=DateShamsiMonth;
        Dayt := DateShamsiDay;
//        MonthName:=DateShamsiMonthName ;
//        DayName := DateShamsiDayName;
//{$FINITEFLOAT off}
 except
        YearT := 1360;
        Montt:= 01;
        Dayt := 01;
 end;
//Release;
end;

procedure ftodate2(var yeart,montt, dayt:word);
const

 MonMil:array [0..11] of integer =(31, 29, 31, 30, 31, 30, 31, 31, 30, 30, 30, 31);
 Mon:array [0..11] of integer =(31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);

var
 kabise:boolean;
 Temp,DayLastYear:integer;
 Day , Cnt:integer;
begin

{dayt,montt,yeart}
 Temp := yeart Mod 4; {Kabise Year}
 If temp=1 then
     Kabise:=True
 else  Kabise:=False;
{----------------------------------------------------------}
         Day:=0;

	 for Cnt := 0  to  ( montt - 2) do
	      if (Cnt=1) And (kabise=True)then
		 Day :=Day+29
	      else
		 Day :=Day+ MonMil[Cnt];

	 Day:= Day + dayt;                {total day of date year Miladi}
{----------------------------------------------------------}

	 if (kabise=True) then
	    DayLastYear:=80
	 else DayLastYear:=79;

	 Day:= Day - DayLastYear;
					    {total day of date year Shamsi}
{---------------------------------------------------------------}
	 if (Day > 0 ) then
	       yeart := yeart- 621  {2001 -621 = 1380}
	 else
	   begin
	       yeart := yeart- 622 ;
               if (kabise=True) then
	        Day :=Day+ 366
               else Day :=Day+ 365 ;
	    end;                                       {year}

{---------------------------------------------------------------}
          cnt:=0;
          while(Day > 0) And (Day  > Mon[Cnt]) and (cnt<12) do
           begin
	      if (cnt=11) and (kabise=true)  then Day :=Day - 30
              else Day :=Day -  Mon[Cnt] ;
              cnt:=cnt+1;
           end;
{---------------------------------------------------------------}
          if Day=0 then
           Montt:=12
          else montt:=cnt+1;   {mont}
{---------------------------------------------------------------}
          if day=0 then
             dayt:=30
          else dayt:=day;  {day}
{---------------------------------------------------------------}
end;
//*******************************************
function datetostrFarsi(Year, Month, Day: Word):string;
var Temp1,Temp2,Temp3:string;
begin
  Temp2:=inttostr(year)+'/';
   temp1:=inttostr(Month);
   if (length(Temp1)<2) then
     Temp3:='0'+Temp1
   else Temp3:=Temp1;
   Temp2:=Temp2+Temp3+'/';
   temp1:=inttostr(Day);
   if (length(Temp1)<2) then
     Temp3:='0'+Temp1
   else Temp3:=Temp1;
   Temp2:=Temp2+Temp3;
result:=temp2;
end;
//*******************************************

//*******************************************
procedure SplDate(var yeart,montt, dayt:string;Date1:string);
begin
   if (length(date1)=8) then
   begin
    YearT:=date1[1]+date1[2];
     setLength(YearT,2);
    MontT:=date1[4]+date1[5];
    setLength(MontT,2);
    DayT:=date1[7]+date1[8];
    setLength(DayT,2);
   end;
end;
procedure GetDateToString(var yeart,montt, dayt:word;var ss,ss2:string);
begin
  ss:=inttostr(yeart)+'/';
  if(montt<10) then
  ss:=ss+'0'+ inttostr(montt)+'/'
  else ss:=ss+inttostr(montt)+'/';

  if(dayt<10) then
  ss:=ss+'0'+inttostr(dayt)
  else ss:=ss+inttostr(dayt);

  ss2:=inttostr(yeart);
  if(montt<10) then
  ss2:=ss2+'0'+ inttostr(montt)
  else ss2:=ss2+inttostr(montt);

  if(dayt<10) then
  ss2:=ss2+'0'+inttostr(dayt)
  else ss2:=ss2+inttostr(dayt);

end;
//*******************************************
procedure GetLastDateToString(var yeart,montt, dayt,yeart3,montt3, dayt3:word;var ss2,ss3:string);
var Lyeart,Lmontt,Ldayt:WORD;
begin
//----------------------
  if(dayt=1)and (montt=1) then
  begin ss2:=inttostr(yeart-1)+'/'; Lyeart:=yeart-1;Lmontt:=12;Ldayt:=29; ss2:= ss2+'12/29'end
//----------------------
  else if(dayt>1)and (dayt<=31) then
   begin
    ss2:=inttostr(yeart)+'/';
    Lyeart:=yeart;Lmontt:=montt;Ldayt:=dayt-1;
    if(montt<10) then
      ss2:=ss2+'0'+ inttostr(montt)+'/'
    else ss2:=ss2+inttostr(montt)+'/';
    if(dayt-1<10) then
     ss2:=ss2+'0'+inttostr(dayt-1)
    else ss2:=ss2+inttostr(dayt-1);
  end
//----------------------
  else if(dayt=1)and (montt<7) then
   begin
    Lyeart:=yeart;Lmontt:=montt-1;Ldayt:=31;
    ss2:=inttostr(yeart)+'/';
    if(montt-1<10) then
      ss2:=ss2+'0'+ inttostr(montt-1)+'/'
    else ss2:=ss2+inttostr(montt-1)+'/';
     ss2:=ss2+inttostr(31);
  end
//----------------------
  else if(dayt=1)and (montt>=7) then
   begin
    Lyeart:=yeart;Lmontt:=montt-1;Ldayt:=30;
    ss2:=inttostr(yeart)+'/';
    if(montt-1<10) then
      ss2:=ss2+'0'+ inttostr(montt-1)+'/'
    else ss2:=ss2+inttostr(montt-1)+'/';
    ss2:=ss2+inttostr(30);
  end;

  ss3:=inttostr(Lyeart);
  if(Lmontt<10) then
  ss3:=ss3+'0'+ inttostr(Lmontt)
  else ss3:=ss3+inttostr(Lmontt);

  if(Ldayt<10) then
  ss3:=ss3+'0'+inttostr(Ldayt)
  else ss3:=ss3+inttostr(Ldayt);
  yeart3:=Lyeart;
  montt3:=Lmontt;
  dayt3:=Ldayt;
end;
//*******************************************

//*******************************************
procedure GetAfterDateToString(var yeart,montt, dayt,yeart3,montt3, dayt3:word;var ss2,ss3:string);
var Lyeart,Lmontt,Ldayt:WORD;
begin
//----------------------
  if(dayt=29)and (montt=12) then
  begin ss2:=inttostr(yeart+1)+'/'; Lyeart:=yeart+1;Lmontt:=1;Ldayt:=1; ss2:= ss2+'01/01'end
//----------------------
  else if(dayt>=1)and (dayt<30) then
   begin
    ss2:=inttostr(yeart)+'/';
    Lyeart:=yeart;Lmontt:=montt;Ldayt:=dayt+1;
    if(montt<10) then
      ss2:=ss2+'0'+ inttostr(montt)+'/'
    else ss2:=ss2+inttostr(montt)+'/';
    if(dayt+1<10) then
     ss2:=ss2+'0'+inttostr(dayt+1)
    else ss2:=ss2+inttostr(dayt+1);
  end
//----------------------
  else if(dayt=30)and (montt<7) then
   begin
    Lyeart:=yeart;Lmontt:=montt;Ldayt:=31;
    ss2:=inttostr(yeart)+'/';
    if(montt<10) then
      ss2:=ss2+'0'+ inttostr(montt)+'/'
    else ss2:=ss2+inttostr(montt)+'/';
     ss2:=ss2+inttostr(31);
  end
//----------------------
  else if(dayt=31)and (montt<7) then
   begin
    Lyeart:=yeart;Lmontt:=montt+1;Ldayt:=1;
    ss2:=inttostr(yeart)+'/';
    if(montt<10) then
      ss2:=ss2+'0'+ inttostr(montt+1)+'/'
    else ss2:=ss2+inttostr(montt+1)+'/';
     ss2:=ss2+'0'+inttostr(1);
  end
//----------------------
  else if(dayt=30)and (montt>=7) then
   begin
    Lyeart:=yeart;Lmontt:=montt+1;Ldayt:=1;
    ss2:=inttostr(yeart)+'/';
    if(montt+1<10) then
      ss2:=ss2+'0'+ inttostr(montt+1)+'/'
    else ss2:=ss2+inttostr(montt+1)+'/';
    ss2:=ss2+'0'+inttostr(1);
  end;
//**************************************
  ss3:=inttostr(Lyeart);
  if(Lmontt<10) then
  ss3:=ss3+'0'+ inttostr(Lmontt)
  else ss3:=ss3+inttostr(Lmontt);

  if(Ldayt<10) then
  ss3:=ss3+'0'+inttostr(Ldayt)
  else ss3:=ss3+inttostr(Ldayt);
  yeart3:=Lyeart;
  montt3:=Lmontt;
  dayt3:=Ldayt;
//****************************************
end;
//«⁄œ«œ 0  « 6 —Ê »⁄‰Ê«‰ Œ—ÊÃÌ ° »Â ’Ê— Ì òÂ 0 „⁄—› "‘‰»Â" ° 1 „⁄—› "Ìò‘‰»Â" Ê ... Ê 6 „⁄—› "Ã„⁄Â" »«‘œ .
// Ê œ— «Œ— ‘‰»Â —« »« 7  €ÌÌ— „ÌœÂÌ„
Function DayOfWeek_Shamsi (y,m,d:integer):integer;
Var
Sum:int64;
ww:integer;
Begin
 Sum:=y div 4;
 sum:=sum+(y*365);
if m<=6 then
  Sum:=Sum+((m-1)*31)+d
else
 Begin
   Sum:=Sum+(6*31)+d;
   Sum:=Sum+((m-7)*30);
End;

ww:=Sum Mod 7;

case ww of
 0: DayOfWeek_Shamsi:=7;
 else  DayOfWeek_Shamsi:=ww;
end;
End;
//**************************************************
Function WeekNumber_Shamsi (y,m,d:integer):integer;
Var
Sum,Sum2:int64;
ww:integer;
Begin
 Sum:=y div 4;           Sum2:=(y-1) div 4;
 sum:=sum+(y*365);       sum2:=sum2+((y-1)*365); Sum2:=Sum2+((1-1)*31)+1;
if m<=6 then
  Sum:=Sum+((m-1)*31)+d
else
 Begin
   Sum:=Sum+(6*31)+d;
   Sum:=Sum+((m-7)*30);
End;

WeekNumber_Shamsi := (Sum div 7)-(Sum2 div 7)-51;

End;

end.
