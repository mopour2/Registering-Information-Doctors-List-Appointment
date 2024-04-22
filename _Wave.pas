(*==============================================================================
                               Unit _Wave
===============================================================================
Descrp.     : Waves Related routines for the Logging System (LS)
Related Hardware :
           None.
Version     : 2.00

Programer   : S.Nemati
Modified by : Jalal Abedienjad : added {$I-} , {$I+} to beging and end of this unit
Last Modi.  : 82/11/12
===============================================================================
Modifications:

===============================================================================*)
unit _wave;
{******************************************************}
                    interface
{******************************************************}
{$I-}
Const
MuLaw_2_Linear: Array[0..255] of integer=
             (0,2,4,6,8,10,12,14,16,18,
             20,22,24,26,28,30,33,37,41,45,
             49,53,57,61,65,69,73,77,81,85,
             89,93,99,107,115,123,131,139,147,155,
             163,171,179,187,195,203,211,219,231,247,
             263,279,295,311,327,343,359,375,391,407,
             423,439,455,471,495,527,559,591,623,655,
             687,719,751,783,815,847,879,911,943,975,
             1023,1087,1151,1215,1279,1343,1407,1471,1535,1599,
             1663,1727,1791,1855,1919,1983,2079,2207,2335,2463,
             2591,2719,2847,2975,3103,3231,3359,3487,3615,3743,
             3871,3999,4191,4447,4703,4959,5215,5471,5727,5983,
             6239,6495,6751,7007,7263,7519,7775,8031,0,-2,
             -4,-6,-8,-10,-12,-14,-16,-18,-20,-22,
             -24,-26,-28,-30,-33,-37,-41,-45,-49,-53,
             -57,-61,-65,-69,-73,-77,-81,-85,-89,-93,
             -99,-107,-115,-123,-131,-139,-147,-155,-163,-171,
             -179,-187,-195,-203,-211,-219,-231,-247,-263,-279,
             -295,-311,-327,-343,-359,-375,-391,-407,-423,-439,
             -455,-471,-495,-527,-559,-591,-623,-655,-687,-719,
             -751,-783,-815,-847,-879,-911,-943,-975,-1023,-1087,
             -1151,-1215,-1279,-1343,-1407,-1471,-1535,-1599,-1663,-1727,
             -1791,-1855,-1919,-1983,-2079,-2207,-2335,-2463,-2591,-2719,
             -2847,-2975,-3103,-3231,-3359,-3487,-3615,-3743,-3871,-3999,
             -4191,-4447,-4703,-4959,-5215,-5471,-5727,-5983,-6239,-6495,
             -6751,-7007,-7263,-7519,-7775,-8031);
    MuLaw_2_Lin: Array[0..255] of integer=(  { without xor 255 }
     -8031,-7775,-7519,-7263,-7007,-6751,-6495,-6239,-5983,-5727,
     -5471,-5215,-4959,-4703,-4447,-4191,-3999,-3871,-3743,-3615,
     -3487,-3359,-3231,-3103,-2975,-2847,-2719,-2591,-2463,-2335,
     -2207,-2079,-1983,-1919,-1855,-1791,-1727,-1663,-1599,-1535,
     -1471,-1407,-1343,-1279,-1215,-1151,-1087,-1023, -975, -943,
      -911, -879, -847, -815, -783, -751, -719, -687, -655, -623,
      -591, -559, -527, -495, -471, -455, -439, -423, -407, -391,
      -375, -359, -343, -327, -311, -295, -279, -263, -247, -231,
      -219, -211, -203, -195, -187, -179, -171, -163, -155, -147,
      -139, -131, -123, -115, -107,  -99,  -93,  -89,  -85,  -81,
       -77,  -73,  -69,  -65,  -61,  -57,  -53,  -49,  -45,  -41,
       -37,  -33,  -30,  -28,  -26,  -24,  -22,  -20,  -18,  -16,
       -14,  -12,  -10,   -8,   -6,   -4,   -2,    0, 8031, 7775,
      7519, 7263, 7007, 6751, 6495, 6239, 5983, 5727, 5471, 5215,
      4959, 4703, 4447, 4191, 3999, 3871, 3743, 3615, 3487, 3359,
      3231, 3103, 2975, 2847, 2719, 2591, 2463, 2335, 2207, 2079,
      1983, 1919, 1855, 1791, 1727, 1663, 1599, 1535, 1471, 1407,
      1343, 1279, 1215, 1151, 1087, 1023,  975,  943,  911,  879,
       847,  815,  783,  751,  719,  687,  655,  623,  591,  559,
       527,  495,  471,  455,  439,  423,  407,  391,  375,  359,
       343,  327,  311,  295,  279,  263,  247,  231,  219,  211,
       203,  195,  187,  179,  171,  163,  155,  147,  139,  131,
       123,  115,  107,   99,   93,   89,   85,   81,   77,   73,
        69,   65,   61,   57,   53,   49,   45,   41,   37,   33,
        30,   28,   26,   24,   22,   20,   18,   16,   14,   12,
        10,    8,    6,    4,    2,    0);
aLaw_2_Linear: Array[0..127] of integer=
       ($158,$148,$178,$168,$118,$108,$138,$128,
        $1D8,$1C8,$1F8,$1E8,$198,$188,$1B8,$1A8,
        $0AC,$0A4,$0BC,$0B4,$08C,$084,$09C,$094,
        $0EC,$0E4,$0FC,$0F4,$0CC,$0C4,$0DC,$0D4,
        $560,$520,$5E0,$5A0,$460,$420,$4E0,$4A0,
        $760,$720,$7E0,$7A0,$660,$620,$6E0,$6A0,
        $2B0,$290,$2F0,$2D0,$230,$210,$270,$250,
        $3B0,$390,$3F0,$3D0,$330,$310,$370,$350,
        $015,$014,$017,$016,$011,$010,$013,$012,
        $01D,$01C,$01F,$01E,$019,$018,$01B,$01A,
        $005,$004,$007,$006,$001,$000,$003,$002,
        $00D,$00C,$00F,$00E,$009,$008,$00B,$00A,
        $056,$052,$05E,$05A,$046,$042,$04E,$04A,
        $076,$072,$07E,$07A,$066,$062,$06E,$06A,
        $02B,$029,$02F,$02D,$023,$021,$027,$025,
        $03B,$039,$03F,$03D,$033,$031,$037,$035);
{        -$158,-$148,-$178,-$168,-$118,-$108,-$138,-$128,
        -$1D8,-$1C8,-$1F8,-$1E8,-$198,-$188,-$1B8,-$1A8,
        -$0AC,-$0A4,-$0BC,-$0B4,-$08C,-$084,-$09C,-$094,
        -$0EC,-$0E4,-$0FC,-$0F4,-$0CC,-$0C4,-$0DC,-$0D4,
        -$560,-$520,-$5E0,-$5A0,-$460,-$420,-$4E0,-$4A0,
        -$760,-$720,-$7E0,-$7A0,-$660,-$620,-$6E0,-$6A0,
        -$2B0,-$290,-$2F0,-$2D0,-$230,-$210,-$270,-$250,
        -$3B0,-$390,-$3F0,-$3D0,-$330,-$310,-$370,-$350,
        -$015,-$014,-$017,-$016,-$011,-$010,-$013,-$012,
        -$01D,-$01C,-$01F,-$01E,-$019,-$018,-$01B,-$01A,
        -$005,-$004,-$007,-$006,-$001,-$0,-$003,-$002,
        -$00D,-$00C,-$00F,-$00E,-$009,-$008,-$00B,-$00A,
        -$056,-$052,-$05E,-$05A,-$046,-$042,-$04E,-$04A,
        -$076,-$072,-$07E,-$07A,-$066,-$062,-$06E,-$06A,
        -$02B,-$029,-$02F,-$02D,-$023,-$021,-$027,-$025,
        -$03B,-$039,-$03F,-$03D,-$033,-$031,-$037,-$035);}

  ShortIntTOuLaw : Array [ -128 .. 127 ] of Byte = (
                       0 ,   0 ,   1 ,   1 ,   1 ,   1 ,   1 ,   2 ,
                       2 ,   2 ,   2 ,   2 ,   3 ,   3 ,   3 ,   3 ,
                       3 ,   4 ,   4 ,   4 ,   4 ,   4 ,   5 ,   5 ,
                       5 ,   5 ,   5 ,   6 ,   6 ,   6 ,   6 ,   7 ,
                       7 ,   7 ,   7 ,   8 ,   8 ,   8 ,   8 ,   9 ,
                       9 ,   9 ,   9 ,  10 ,  10 ,  10 ,  10 ,  11 ,
                      11 ,  11 ,  12 ,  12 ,  12 ,  13 ,  13 ,  13 ,
                      13 ,  14 ,  14 ,  14 ,  15 ,  15 ,  15 ,  16 ,
                      16 ,  16 ,  17 ,  17 ,  18 ,  18 ,  18 ,  19 ,
                      19 ,  20 ,  20 ,  20 ,  21 ,  21 ,  22 ,  22 ,
                      23 ,  23 ,  24 ,  24 ,  25 ,  25 ,  26 ,  26 ,
                      27 ,  27 ,  28 ,  29 ,  29 ,  30 ,  30 ,  31 ,
                      32 ,  33 ,  33 ,  34 ,  35 ,  36 ,  36 ,  37 ,
                      38 ,  39 ,  40 ,  41 ,  42 ,  44 ,  45 ,  46 ,
                      47 ,  49 ,  50 ,  52 ,  54 ,  56 ,  58 ,  60 ,
                      63 ,  65 ,  69 ,  72 ,  77 ,  83 ,  91 , 102 ,
                     255 , 230 , 219 , 211 , 205 , 200 , 197 , 193 ,
                     191 , 188 , 186 , 184 , 182 , 180 , 178 , 177 ,
                     175 , 174 , 173 , 172 , 170 , 169 , 168 , 167 ,
                     166 , 165 , 164 , 164 , 163 , 162 , 161 , 161 ,
                     160 , 159 , 158 , 158 , 157 , 157 , 156 , 155 ,
                     155 , 154 , 154 , 153 , 153 , 152 , 152 , 151 ,
                     151 , 150 , 150 , 149 , 149 , 148 , 148 , 148 ,
                     147 , 147 , 146 , 146 , 146 , 145 , 145 , 144 ,
                     144 , 144 , 143 , 143 , 143 , 142 , 142 , 142 ,
                     141 , 141 , 141 , 141 , 140 , 140 , 140 , 139 ,
                     139 , 139 , 138 , 138 , 138 , 138 , 137 , 137 ,
                     137 , 137 , 136 , 136 , 136 , 136 , 135 , 135 ,
                     135 , 135 , 134 , 134 , 134 , 134 , 133 , 133 ,
                     133 , 133 , 133 , 132 , 132 , 132 , 132 , 132 ,
                     131 , 131 , 131 , 131 , 131 , 130 , 130 , 130 ,
                     130 , 130 , 129 , 129 , 129 , 129 , 129 , 128 ) ;

  { Lookup Table for conversion uLaw to ShorInt }
  uLawToShortInt : Array [ 0 .. 255 ] of ShortInt = (
                    -128 , -123 , -119 , -113 , -109 , -104 , -100 ,  -95 ,
                     -91 ,  -87 ,  -83 ,  -80 ,  -76 ,  -73 ,  -69 ,  -67 ,
                     -64 ,  -61 ,  -59 ,  -56 ,  -53 ,  -51 ,  -49 ,  -47 ,
                     -45 ,  -43 ,  -42 ,  -39 ,  -38 ,  -36 ,  -35 ,  -33 ,
                     -31 ,  -30 ,  -29 ,  -27 ,  -26 ,  -25 ,  -24 ,  -23 ,
                     -22 ,  -21 ,  -20 ,  -19 ,  -19 ,  -18 ,  -17 ,  -16 ,
                     -15 ,  -15 ,  -14 ,  -13 ,  -12 ,  -12 ,  -11 ,  -11 ,
                     -10 ,  -10 ,   -9 ,   -9 ,   -8 ,   -8 ,   -8 ,   -7 ,
                      -7 ,   -7 ,   -6 ,   -6 ,   -6 ,   -5 ,   -5 ,   -5 ,
                      -5 ,   -4 ,   -4 ,   -4 ,   -4 ,   -4 ,   -3 ,   -3 ,
                      -3 ,   -3 ,   -3 ,   -3 ,   -2 ,   -2 ,   -2 ,   -2 ,
                      -2 ,   -2 ,   -2 ,   -2 ,   -1 ,   -1 ,   -1 ,   -1 ,
                      -1 ,   -1 ,   -1 ,   -1 ,   -1 ,   -1 ,   -1 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,
                       0 ,  124 ,  119 ,  113 ,  108 ,  104 ,   99 ,   94 ,
                      91 ,   87 ,   83 ,   80 ,   77 ,   73 ,   70 ,   67 ,
                      65 ,   61 ,   58 ,   56 ,   53 ,   51 ,   49 ,   47 ,
                      45 ,   43 ,   41 ,   39 ,   37 ,   36 ,   34 ,   33 ,
                      31 ,   30 ,   28 ,   27 ,   26 ,   25 ,   24 ,   23 ,
                      22 ,   21 ,   20 ,   19 ,   18 ,   17 ,   17 ,   16 ,
                      15 ,   14 ,   13 ,   13 ,   12 ,   12 ,   11 ,   11 ,
                      10 ,   10 ,    9 ,    9 ,    8 ,    8 ,    8 ,    7 ,
                       7 ,    7 ,    6 ,    6 ,    6 ,    5 ,    5 ,    5 ,
                       5 ,    4 ,    4 ,    4 ,    4 ,    4 ,    3 ,    3 ,
                       3 ,    3 ,    3 ,    3 ,    2 ,    2 ,    2 ,    2 ,
                       2 ,    2 ,    2 ,    2 ,    1 ,    1 ,    1 ,    1 ,
                       1 ,    1 ,    1 ,    1 ,    1 ,    1 ,    1 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,
                       0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ,    0 ) ;


  Const
    Q1                =    2;
    Q2                =    4;
    Q3                =    8;
    Q4                =   16;
    Q4_1              =   15;
    Q5                =   32;
    Q5_1              =   31;
    Q6                =   64;
    Q6_1              =   63;
    Q7                =  128;
    Q7_1              =  127;
    Q8                =  256;
    Q8_1              =  255;
    Q9                =  512;
    Q10               = 1024;
    Q11               = 2048;
    Q11_1             = 2047;
    Q12_1             = 4095;
    Q12               = 4096;
    Q12_7             = 3968;
    Q13               = 8192;
    Q13_1             = 8191;
    Q14_10            =15360;
    Q14               =16384;

    LoTreshold        =  544;
    HiTreshold        = 5120;
    Mu                =  255;
    T5                = 1916;
    T9                =32632;

    SEG1              =T5-Q10-Q9-Q8;
    COEF1             =T5-Q10-Q9-Q8-Q7+Q3;

    SEG2              =T5-Q10-Q9;
    COEF2             =T5-Q10-Q9-Q8;

    SEG3              =T5-Q10;
    COEF3             =T5-Q10-Q9;

    COEF4             =T5-Q10;

    SEG5              =T5+Q11;
    COEF5             =T5;

    SEG6              =T5+Q11+Q12;
    COEF6             =T5+Q11;

    SEG7              =T5+Q11+Q12+Q13;
    COEF7             =T5+Q11+Q12;

    COEF8             =T5+Q11+Q12+Q13;

    PCM_FORMAT_CONST    = 1;
    CHANNEL_CONST       = 1;
    SAMPLERATE_CONST    = 7200;
    BITPERSAMPLE_CONST1 = 8;
    BITPERSAMPLE_CONST2 = 16;
    MAX_BUF_SIZE        = 2000;



type WaveHeaderType = record
                        Dummy1                 : array[1..4] of char; {= 'RIFF'}
                        Riffsize               : Longint;            { Riff size= nSamples+36}
                        Dummy2                 : array[1..4] of char; {= 'WAVE'}
                        Dummy3                 : array[1..4] of char; {= 'fmt '}
                        Dummy4                 : Longint;             {= 16 }
                        PCM_Format             : Word;                {=1}
                        Channel                : Word;                {=1}
                        SmplRate               : Longint;             {Sample Per Second }
                        ByteRate               : Longint;             {Average Byte Per Second }
                        Block_Align            : Word;                {Block Alignment = 1}
                        BitPerSample           : Word;                {Bit Per Second}
                        Dummy5                 : array[1..4] of char; {='data'}
                        nSample                : Longint;             {Number of Samples}
                      end;
Function _uLaw_2_Wave(Src, Dest : String; SrcSampleRate, DestSampleRate : Word): integer;
                                                   { Function For Conversion uLaw to Wave Format With   }
                                                   { Defined Sample Rate                                }
                                                   {   Input  : Src File Name, Dest File Name           }
                                                   {            Src File Sample Rate                    }
                                                   {            Dest File Sample Rate                   }
                                                   {   Output : Wave Format File In Defined Sample Rate }
                                                   {   Return : Success     0                           }
                                                   {            UnSuccess   <>0                         }
Function _Wave_2_uLaw(Src, Dest : String; DestSampleRate : Word): integer;
                                                   { Function For Conversion Wave to uLaw Format With   }
                                                   { Defined Sample Rate                                }
                                                   {   Input  : Src File Name, Dest File Name           }
                                                   {            Src File Sample Rate                    }
                                                   {            Dest File Sample Rate                   }
                                                   {   Output : uLaw Format File In Defined Sample Rate }
                                                   {   Return : Success     0                           }
                                                   {            UnSuccess   <>0                         }
Function _aLaw_2_Wave(Src, Dest : String; SrcSampleRate, DestSampleRate : Word): integer;
                                                   { Function For Conversion aLaw to Wave Format With   }
                                                   { Defined Sample Rate                                }
                                                   {   Input  : Src File Name, Dest File Name           }
                                                   {            Src File Sample Rate                    }
                                                   {            Dest File Sample Rate                   }
                                                   {   Output : Wave Format File In Defined Sample Rate }
                                                   {   Return : Success     0                           }
                                                   {            UnSuccess   <>0                         }
function _Linear_2_PCM(Sample:smallint):byte;
Function Conversion_Wave_Sampling_Rate(Src, Dest : String;SrcSampleRate,DestSampleRate : Word): integer;{******************************************************}
Function linear2ulaw(sample:Integer):Byte;
{******************************************************}
                    implementation
{******************************************************}




(*
** This routine converts from linear to ulaw
**
** Craig Reese: IDA/Supercomputing Research Center
** Joe Campbell: Department of Defense
** 29 September 1989
**
** References:
** 1) CCITT Recommendation G.711  (very difficult to follow)
** 2) "A New Digital Technique for Implementation of Any
**     Continuous PCM Companding Law," Villeret, Michel,
**     et al. 1973 IEEE Int. Conf. on Communications, Vol 1,
**     1973, pg. 11.12-11.17
** 3) MIL-STD-188-113,"Interoperability and Performance Standards
**     for Analog-to_Digital Conversion Techniques,"
**     17 February 1987
**
** Input: Signed 16 bit linear sample
** Output: 8 bit ulaw sample
*)

{.$define ZEROTRAP}    // turn on the trap as per the MIL-STD

Function linear2ulaw(sample:Integer):Byte;
Const

  exp_lut   : Array [0..255] of byte = (0,0,1,1,2,2,2,2,3,3,3,3,3,3,3,3,
                             4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
                             5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                             5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                             6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                             6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                             6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                             6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,
                             7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7);
Const
  BIAS  = $84;   //define the add-in bias for 16 bit samples
  CLIP  = 32635;
var
  sign, exponent, mantissa : Integer;
  ulawbyte                 : Byte;
begin
  // Get the sample into sign-magnitude.
  sign := (sample shr 8) and $80;		// set aside the sign
  if (sign <> 0) then             		// get magnitude
    sample := -sample;
  if (sample > CLIP) then       		// clip the magnitude
    sample := CLIP;
  // Convert from 16 bit linear to ulaw.
  sample := sample + BIAS;
  exponent := exp_lut[(sample shr 7) and $FF];
  mantissa := (sample shr (exponent + 3)) and $0F;
  //Jalal Abedinejad : Changed next line to avoid Range Check Error Exception !!!!
  //ulawbyte := Not(sign or (exponent shl 4) or mantissa);
  ulawbyte := (Not(sign or (exponent shl 4) or mantissa)) and $FF;
{$ifdef ZEROTRAP}
  if (ulawbyte = 0) then
    ulawbyte := $02;	// optional CCITT trap
{$endif}

  linear2ulaw:=ulawbyte;
end;
//*********************************************
function ulaw2linear(ulawbyte:byte):Integer;
Const
  exp_lut:Array[0..7]of integer = (0,132,396,924,1980,4092,8316,16764);
var
  sign, exponent, mantissa,  sample :Integer;
begin
  ulawbyte:= Not(ulawbyte);
  sign := (ulawbyte and $80);
  exponent := (ulawbyte shr 4) and $07;
  mantissa:= ulawbyte and  $0F;
  sample:= exp_lut[exponent] + (mantissa shl (exponent + 3));
  if (sign<> 0) then
     sample := -sample;
 ulaw2linear:=sample;
end;

{-----------------------------------------}
{ Find k.m.m of Num1, Num2                }
{ Input  : Num1 Num2                      }
{ Output : usf, dsf	                  }
{-----------------------------------------}
Procedure Find_k_m_m(Num1, Num2: Word; Var usf, dsf: Byte);
Var
  i, j: smallint;
begin
  usf:=1;
  dsf:=1;
  Num1:=(Num1 div 1000)* 1000;  // truncate under 1000 hz 
  for i:=1 to 20 do
    for j:=1 to 20 do
      if(i*Num1=j*Num2) then
        begin
	  usf:=i;
	  dsf:=j;
          exit;
        end;
end;
{----------------------------------------------}
{ Interpolate Num1 & Num2 with usf			 }
{   Input  : Num1 Num2 usf                     }
{   Output : Interpolated Interger array       }
{----------------------------------------------}
Procedure interp(Num1, Num2: smallint; usf: Byte; Var Output: Array Of smallint; Index : Word);
Var
  Temp, j : smallint;
  i       : Word;
begin
  Temp:=(Num2-Num1) div usf;
  j:=0;
  for i:=Index to Index+usf-1 do
    begin
      if (LongInt(Num1)+LongInt(j)) < -32767 then
        Output[i] := -32766
      else if (LongInt(Num1)+LongInt(j)) > 32767 then
        Output[i] := 32766
      else
        Output[i] := Num1+j;
      if longint(j)+longint(temp) <= -32767 then
        begin
          j := -32766;
          temp:=0;
        end;
      if longint(j)+longint(temp) >= 32766 then
        begin
          j := 32766;
          temp:=0;
        end;
      j:=j+Temp;
    end;
end;
{---------------------------------------------}
{ Linear to PCM                               }
{---------------------------------------------}
function _Linear_2_PCM(Sample:smallint):byte;
var
  scratch,Ik : smallint;
begin
  if sample=-32768 then
    sample:=-32767;
  if sample >= 0 then
    scratch:=0
  else
    begin
      sample:=-sample;
      scratch:=Q7;
    end;

  if sample >= T9{32632} then
    Ik:=(scratch+Q7_1)XOR Q8_1
  else
    if sample < T5{1916} then
      if sample < SEG1{124} then
        if sample >= Q2{4} then
          Ik:=(scratch+(sample-COEF1) Div (1 shl 3) {div Q3} +1)XOR Q8_1
        else
          Ik:=sample-Q2
      else
        if sample < SEG2{380} then
          Ik:=(scratch+(sample-COEF2) Div (1 shl 4){div Q4} +16)XOR Q8_1
        else
        if sample < SEG3{892} then
          Ik:=(scratch+(sample-COEF3) Div (1 shl 5){div Q5} +32)XOR Q8_1
        else
          Ik:=(scratch+(sample-COEF4) Div (1 shl 6){div Q6} +48)XOR Q8_1
    else
      begin
        if sample < SEG5{3964} then
          Ik:=(scratch+(sample-COEF5) Div (1 shl 7){div Q7} +64)XOR Q8_1
        else
          if sample < SEG6{8060} then
            Ik:=(scratch+(sample-COEF6) Div (1 shl 8){div Q8} +80)XOR Q8_1
          else
            if sample < SEG7{16252} then
              Ik:=(scratch+(sample-COEF7) Div (1 shl 9){div Q9} +96)XOR Q8_1
            else
              Ik:=(scratch+(sample-COEF8) Div (1 shl 10){div Q10} +112)XOR Q8_1;
      end;
  _Linear_2_PCM:=Byte(Ik);
end;


(*******************************************)
{---------------------------------------------------}
{ Check Wave File If Wave File Format is not        }
{ confirmed format return Error Code                }
{---------------------------------------------------}
Function Wave_Check(WHeader : WaveHeaderType) : Byte;
begin
  with WHeader do
    begin
      if PCM_Format<>PCM_FORMAT_CONST then
        begin
          Wave_Check:=1;
          exit;
        end;
      if Channel<>CHANNEL_CONST then
        begin
          Wave_Check:=2;
          exit;
        end;
      if SmplRate<>SAMPLERATE_CONST then
        begin
          Wave_Check:=3;
          exit;
        end;
      if (BitPerSample<>BITPERSAMPLE_CONST1)and(BitPerSample<>BITPERSAMPLE_CONST2) then
        begin
          Wave_Check:=4;
          exit;
        end;
    end;
  Wave_Check:=0;
end;
{---------------------------------------------------}
{ Check Wave File If Wave File Format is not        }
{ confirmed format return Error Code                }
{---------------------------------------------------}
Function _Wave_Check(WHeader, _WHeader : WaveHeaderType) : Byte;
begin
  with WHeader do
    begin
      if PCM_Format<>PCM_FORMAT_CONST then
        begin
          _Wave_Check:=1;
          exit;
        end;
      if Channel<>CHANNEL_CONST then
        begin
          _Wave_Check:=2;
          exit;
        end;
{      if SmplRate<>_WHeader.SmplRate then
        begin
          _Wave_Check:=3;
          exit;
        end;
      if (BitPerSample<>BITPERSAMPLE_CONST1)and(BitPerSample<>BITPERSAMPLE_CONST2) then
        begin
          _Wave_Check:=4;
          exit;
        end;}
    end;
  _Wave_Check:=0;
end;
{----------------------------------------------------}
{ Function For Conversion uLaw to Wave Format With   }
{ Defined Sample Rate                                }
{   Input  : Src File Name, Dest File Name           }
{            Src File Sample Rate                    }
{            Dest File Sample Rate                   }
{   Output : Wave Format File In Defined Sample Rate }
{   Return : Success     0                           }
{            UnSuccess   <>0                         }
{----------------------------------------------------}
Function _uLaw_2_Wave(Src, Dest : String; SrcSampleRate, DestSampleRate : Word): integer;
Var
  ff,gg             : file;
  j                 : word;
  count             : integer;
  _Ret              : integer;
  WHeader           : WaveHeaderType;
  WriteCount        : integer;
  First_Byte        : Boolean;
  Old_t             : smallint;
  usf, dsf          : Byte;
  us_Output_Num     : Word;
  us_Output         : Array[0..50] of smallint;
  OutCount          : Word;
  ppp               : Word;
  buff       : array[0..MAX_BUF_SIZE] of byte;
  buff1      : array[0..MAX_BUF_SIZE*2] of smallint;
  p          : Real;
begin
  Find_k_m_m(SrcSampleRate, DestSampleRate, usf, dsf);
  First_Byte:=True;
  _Ret:=0;
  old_t:=0;
  us_Output_Num:=0;
  assign(ff, Src);
  reset(ff,1);
  if (IOResult<>0) then
    _Ret:=-1
  else
    begin
      assign(gg, Dest);
      rewrite(gg,2);
      WHeader.Dummy1:='RIFF';
      p:=filesize(ff);
      p:=(p * 2* DestSampleRate)/SrcSampleRate;
{      WHeader.Riffsize:=((FileSize(ff)*Longint(DestSampleRate)* 2) div SrcSampleRate)+36;}
      WHeader.Riffsize:=Round(P)+36;
      WHeader.Dummy2:='WAVE';
      WHeader.Dummy3:='fmt ';
      WHeader.Dummy4:=16;
      WHeader.PCM_Format:=1;
      WHeader.Channel:=1;
      WHeader.SmplRate:=DestSampleRate;
      WHeader.ByteRate:=DestSampleRate*2;
      WHeader.Block_Align:=2;
      WHeader.BitPerSample:=16;
      WHeader.Dummy5:='data';
      WHeader.nSample:=(Filesize(ff)*int64(DestSampleRate)*2) div SrcSampleRate ;
      blockwrite(gg, WHeader, sizeof(WaveHeaderType)Div 2);
      repeat
        blockread(ff, buff[0], MAX_BUF_SIZE, count);
        if count<=0 then
          Break;
        OutCount:=0;
        if usf=dsf then
          begin
            for j:=0 to count-1 do
              begin
                if LongInt(MuLaw_2_Lin[buff[j]]*4)>32677 then
                  buff1[OutCount]:=32767
                else if LongInt(MuLaw_2_Lin[buff[j]]*4)<-32677 then
                  buff1[OutCount]:=-32767
                else
                  buff1[OutCount]:=MuLaw_2_Lin[buff[j]]*4;
                Inc(OutCount);
              end
          end
        else
          for j:=0 to count-1 do
            begin
              if (First_Byte) then
                begin
                if LongInt(MuLaw_2_Lin[buff[j]]*4)>32677 then
                  Old_t:=32767
                else if LongInt(MuLaw_2_Lin[buff[j]]*4)<-32677 then
                  Old_t:=-32767
                else
                  Old_t:=MuLaw_2_Lin[buff[j]]*4;
                  First_Byte:=False;
                end
              else
                begin
                  interp(Old_t, MuLaw_2_Lin[buff[j]]*4, usf, us_Output, us_Output_Num);
                  if LongInt(MuLaw_2_Lin[buff[j]]*4)>32677 then
                    Old_t:=32767
                  else if LongInt(MuLaw_2_Lin[buff[j]]*4)<-32677 then
                    Old_t:=-32767
                  else
                    Old_t:=MuLaw_2_Lin[buff[j]]*4;
                  Inc(us_Output_Num, usf);
                  while (us_Output_Num>=dsf) do
                    begin
                      buff1[OutCount]:=us_Output[0];
                      Inc(OutCount);
                      Dec(us_Output_Num, dsf);
                      for ppp:=0 to us_Output_Num do
                        us_Output[ppp]:=us_Output[ppp+dsf];
                    end;
                end;
            end;
        blockwrite(gg, buff1, OutCount, WriteCount);
      until count<>MAX_BUF_SIZE;
      close(ff);
      close(gg);
      reset(gg,1);
      blockread(gg,WHeader,sizeof(WaveHeaderType));
      Wheader.RiffSize:=filesize(gg)-8;
      Wheader.nSample:=filesize(gg)-44;
      Reset(gg, 1);
      blockwrite(gg, WHeader, sizeof(WaveHeaderType));
      Close(gg);
    end;
  _uLaw_2_Wave:=_Ret;
end;

{----------------------------------------------------}
{ Function For Conversion Wave to uLaw Format With   }
{ Defined Sample Rate                                }
{   Input  : Src File Name, Dest File Name           }
{            Src File Sample Rate                    }
{            Dest File Sample Rate                   }
{   Output : uLaw Format File In Defined Sample Rate }
{   Return : Success     0                           }
{            UnSuccess   <>0                         }
{----------------------------------------------------}
Function _Wave_2_uLaw(Src, Dest : String; DestSampleRate : Word): integer;
var
  WHeader            : WaveHeaderType;
  _WHeader           : WaveHeaderType;
  ff,gg              : file;
  _Ret               : integer;
  j                  : word;
  count              : integer;
  OutCount, BufCount : Word;
  First_Byte         : Boolean;
  Old_t              : smallint;
  usf, dsf           : Byte;
  us_Output_Num      : Word;
  us_Output          : Array[0..200] of smallint;
  ppp                : Byte;
  SrcSampleRate      : Word;
  buff       : array[0..MAX_BUF_SIZE] of byte;
  buff1      : array[0..MAX_BUF_SIZE*2] of smallint;
begin
  bufcount:=0;
  First_Byte:=True;
  us_Output_Num:=0;
  assign(ff, Src);
  reset(ff,1);
  old_t:=0;
  _Ret:=0;
  if (IOResult<>0) then
    _Ret:=-1
  else
    begin
      assign(gg, Dest);
      rewrite(gg,1);
      blockread(ff, WHeader, sizeof(WaveHeaderType));
      SrcSampleRate:=WHeader.SmplRate;
      Find_k_m_m(SrcSampleRate, DestSampleRate, usf, dsf);
      j:=_Wave_Check(WHeader, _WHeader);
      if j=0 then
        begin
          repeat
            OutCount:=0;
            blockread(ff, buff[0], MAX_BUF_SIZE, count);
            if (count<>0) then
               begin
                  if (WHeader.BitPerSample=8) then
                    begin
                      for j:=0 to count-1 do
                        buff1[j]:=buff[j];
                      bufCount:=Count-1;
                    end
                  else if (WHeader.BitPerSample=16) then
                    begin
                      for j:=0 to (count div 2)-1 do
                        buff1[j]:=smallint((buff[j*2+1] shl 8)+(buff[j*2+0]));
                      bufCount:=(Count div 2)-1;
                    end;
                  if bufCount>1 then
                    begin
                      if usf=dsf then
                        begin
                          for j:=0 to bufCount-1 do
                            begin
                              if (WHeader.BitPerSample=8) then
                                 buff[OutCount]:=linear2ulaw(buff1[j] shl 4)
                              else if (WHeader.BitPerSample=16) then
                                 buff[OutCount]:=linear2ulaw(buff1[j]);
                              Inc(OutCount);
                            end;
                        end
                      else
                        begin
                          for j:=0 to bufCount-1 do
                            begin
                              if (First_Byte) then
                                begin
                                  Old_t:=buff1[j];
                                  First_Byte:=False;
                                end
                              else
                                begin
                                  interp(Old_t, buff1[j], usf, us_Output, us_Output_Num);
                                  Old_t:=buff1[j];
                                  Inc(us_Output_Num, usf);
                                  while (us_Output_Num>=dsf) do
                                    begin
                                      if (WHeader.BitPerSample=8) then
                                         buff[OutCount]:=linear2ulaw(us_Output[0] shl 4)
                                      else if (WHeader.BitPerSample=16) then
                                         buff[OutCount]:=linear2ulaw(us_Output[0]);
                                      Inc(OutCount);
                                      Dec(us_Output_Num, dsf);
                                      for ppp:=0 to us_Output_Num do
                                        us_Output[ppp]:=us_Output[ppp+dsf];
                                    end;
                                end;
                            end;
                        end;    
                     blockwrite(gg, buff, OutCount);
                   end;
               end;
          until count<>MAX_BUF_SIZE;
          close(gg);
        end
      else
        _Ret:=j;
    close(ff);
    end;
  _Wave_2_uLaw:=_Ret;
end;
{----------------------------------------------------}
{ Function For Conversion aLaw to Wave Format With   }
{ Defined Sample Rate                                }
{   Input  : Src File Name, Dest File Name           }
{            Src File Sample Rate                    }
{            Dest File Sample Rate                   }
{   Output : Wave Format File In Defined Sample Rate }
{   Return : Success     0                           }
{            UnSuccess   <>0                         }
{----------------------------------------------------}
Function _aLaw_2_Wave(Src, Dest : String; SrcSampleRate, DestSampleRate : Word): integer;
Var
  ff,gg             : file;
  j                 : word;
  count             : integer;
  _Ret              : integer;
  WHeader           : WaveHeaderType;
  WriteCount        : integer;
  First_Byte        : Boolean;
  Old_t             : smallint;
  usf, dsf          : Byte;
  us_Output_Num     : Word;
  us_Output         : Array[0..50] of smallint;
  OutCount          : Word;
  ppp               : Word;
  buff              : array[0..MAX_BUF_SIZE] of byte;
  buff1             : array[0..MAX_BUF_SIZE*2] of smallint;
  p                 : Real;
  {--------------------------------------}
  Function alaw_2_Lin(Smpl : Byte) : Integer;
    var
      k : byte;
    begin
      k:=Smpl and $80;
      if k<>0 then
        Result:=-(alaw_2_Linear[Smpl and $7F])
      else
        Result:=(alaw_2_Linear[Smpl and $7F]);
    end;
  {--------------------------------------}
begin
  Find_k_m_m(SrcSampleRate, DestSampleRate, usf, dsf);
  First_Byte:=True;
  _Ret:=0;
  old_t:=0;
  us_Output_Num:=0;
  assign(ff, Src);
  reset(ff,1);
  if (IOResult<>0) then
    _Ret:=-1
  else
    begin
      assign(gg, Dest);
      rewrite(gg,2);
      WHeader.Dummy1:='RIFF';
      p:=filesize(ff);
      p:=(p * 2* DestSampleRate)/SrcSampleRate;
{      WHeader.Riffsize:=((FileSize(ff)*Longint(DestSampleRate)* 2) div SrcSampleRate)+36;}
      WHeader.Riffsize:=Round(P)+36;
      WHeader.Dummy2:='WAVE';
      WHeader.Dummy3:='fmt ';
      WHeader.Dummy4:=16;
      WHeader.PCM_Format:=1;
      WHeader.Channel:=1;
      WHeader.SmplRate:=DestSampleRate;
      WHeader.ByteRate:=DestSampleRate*2;
      WHeader.Block_Align:=2;
      WHeader.BitPerSample:=16;
      WHeader.Dummy5:='data';
      WHeader.nSample:=(Filesize(ff)*int64(DestSampleRate)*2) div SrcSampleRate ;
      blockwrite(gg, WHeader, sizeof(WaveHeaderType)Div 2);
      repeat
        blockread(ff, buff[0], MAX_BUF_SIZE, count);
        if count<=0 then
          Break;
        OutCount:=0;
        if usf=dsf then
          begin
            for j:=0 to count-1 do
              begin
                if LongInt(alaw_2_Lin(buff[j])*4)>32677 then
                  buff1[OutCount]:=32767
                else if LongInt(alaw_2_Lin(buff[j])*4)<-32677 then
                  buff1[OutCount]:=-32767
                else
                  buff1[OutCount]:=alaw_2_Lin(buff[j])*4;
                Inc(OutCount);
              end
          end
        else
          for j:=0 to count-1 do
            begin
              if (First_Byte) then
                begin
                if LongInt(alaw_2_Lin(buff[j])*4)>32677 then
                  Old_t:=32767
                else if LongInt(alaw_2_Lin(buff[j])*4)<-32677 then
                  Old_t:=-32767
                else
                  Old_t:=alaw_2_Lin(buff[j])*4;
                  First_Byte:=False;
                end
              else
                begin
                  interp(Old_t, alaw_2_Lin(buff[j])*4, usf, us_Output, us_Output_Num);
                  if LongInt(alaw_2_Lin(buff[j])*4)>32677 then
                    Old_t:=32767
                  else if LongInt(alaw_2_Lin(buff[j])*4)<-32677 then
                    Old_t:=-32767
                  else
                    Old_t:=alaw_2_Lin(buff[j])*4;
                  Inc(us_Output_Num, usf);
                  while (us_Output_Num>=dsf) do
                    begin
                      buff1[OutCount]:=us_Output[0];
                      Inc(OutCount);
                      Dec(us_Output_Num, dsf);
                      for ppp:=0 to us_Output_Num do
                        us_Output[ppp]:=us_Output[ppp+dsf];
                    end;
                end;
            end;
        blockwrite(gg, buff1, OutCount, WriteCount);
      until count<>MAX_BUF_SIZE;
      close(ff);
      close(gg);
      reset(gg,1);
      blockread(gg,WHeader,sizeof(WaveHeaderType));
      Wheader.RiffSize:=filesize(gg)-8;
      Wheader.nSample:=filesize(gg)-44;
      Reset(gg, 1);
      blockwrite(gg, WHeader, sizeof(WaveHeaderType));
      Close(gg);
    end;
  _aLaw_2_Wave:=_Ret;
end;
{----------------------------------------------------}
{Function For Conversion Sampling rate of Wave Format}
{   Input  : Src File Name, Dest File Name           }
{            Src File Sample Rate                    }
{            Dest File Sample Rate                   }
{   Output : Wave Format File In Defined Sample Rate }
{   Return : Success     0                           }
{            UnSuccess   <>0                         }
{----------------------------------------------------}
Function Conversion_Wave_Sampling_Rate(Src, Dest : String;SrcSampleRate,DestSampleRate : Word): integer;
Var
  ff,gg             : file;
  j                 : word;
  count             : integer;
  _Ret              : integer;
  WHeader_Src       : WaveHeaderType;
  WHeader_Des       : WaveHeaderType;
  WriteCount        : integer;
  First_Byte        : Boolean;
  Old_t             : smallint;
  usf, dsf          : Byte;
  us_Output_Num     : Word;
  us_Output         : Array[0..50] of smallint;
  OutCount          : Word;
  ppp               : Word;
  buff              : array[0..MAX_BUF_SIZE] of smallint;
  buff1             : array[0..MAX_BUF_SIZE*2] of smallint;
begin
  Find_k_m_m(SrcSampleRate, DestSampleRate, usf, dsf);
  First_Byte:=True;
  _Ret:=0;
  us_Output_Num:=0;
  assign(ff, Src);
  reset(ff,2);
  Old_t:=0;
  if (IOResult<>0) then
    _Ret:=-1
  else
    begin
      blockread(ff, WHeader_Src, sizeof(WaveHeaderType)Div 2, count);
      assign(gg, Dest);
      rewrite(gg,2);
      With WHeader_Des do
        begin
          Dummy1:='RIFF';
          Riffsize:=((FileSize(ff)*int64(DestSampleRate)* 2)div SrcSampleRate)+36;
          Dummy2:='WAVE';
          Dummy3:='fmt ';
          Dummy4:=16;
          PCM_Format:=1;
          Channel:=1;
          SmplRate:=DestSampleRate;
          ByteRate:=DestSampleRate*2;
          Block_Align:=2;
          BitPerSample:=16;
          Dummy5:='data';
          nSample:=(WHeader_Src.nSample*int64(DestSampleRate)*2) div SrcSampleRate ;
        end;
      blockwrite(gg, WHeader_Des, sizeof(WaveHeaderType)Div 2);
      repeat
        blockread(ff, buff[0], MAX_BUF_SIZE, count);
        if count<=0 then
          Break;
        OutCount:=0;
        if usf=dsf then
          for j:=0 to count-1 do
            begin
              buff1[OutCount]:=buff[j];
              Inc(OutCount);
            end
        else
          for j:=0 to count-1 do
            if (First_Byte) then
              begin
                Old_t:=buff[j];
                First_Byte:=False;
              end
            else
              begin
                interp(Old_t, buff[j], usf, us_Output, us_Output_Num);
                Old_t:=buff[j];
                Inc(us_Output_Num, usf);
                while (us_Output_Num>=dsf) do
                  begin
                    buff1[OutCount]:=us_Output[0];
                    Inc(OutCount);
                    Dec(us_Output_Num, dsf);
                    for ppp:=0 to us_Output_Num do
                      us_Output[ppp]:=us_Output[ppp+dsf];
                  end;
              end;
        blockwrite(gg, buff1, OutCount, WriteCount);
      until count<>MAX_BUF_SIZE;
      close(ff);
      close(gg);
      reset(gg,1);
      blockread(gg,WHeader_Src,sizeof(WaveHeaderType));
      Wheader_Src.RiffSize:=filesize(gg)-8;
      Wheader_Src.nSample:=filesize(gg)-44;
      Reset(gg, 1);
      blockwrite(gg, WHeader_Src, sizeof(WaveHeaderType));
      Close(gg);
    end;
  Conversion_Wave_Sampling_Rate:=_Ret;                 
end;

{I+}

end.

