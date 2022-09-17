
(* lexical analyzer template (TP Lex V3.0), V1.0 3-2-91 AG *)

(* global definitions: *)
//This is the Lex (TPLex) lex file, the tokenizer

// ΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡ
// This comment intentionally includes some characters to get your attraction if you open the  file with
//  some encoding that is not the original ISO-8859-1. You will see a lot of trash below instead 
// of several accented N, (n-tilde) characters) if that happens.
// ΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡΡ





function yylex : Integer;

procedure yyaction ( yyruleno : Integer );
  (* local definitions: *)
begin
  (* actions: *)
  case yyruleno of
  1:
     			BEGIN  AddToken(TokenList, T_SECTION_CTL, yytext, MaxLongInt, yylineno, yycolno);  END;
  2:
     			BEGIN  AddToken(TokenList, T_SECTION_STX, yytext, MaxLongInt, yylineno, yycolno);  END;
  3:
     			BEGIN  AddToken(TokenList, T_SECTION_CON, yytext, MaxLongInt, yylineno, yycolno); END;
  4:
     			BEGIN  AddToken(TokenList, T_SECTION_MTX, yytext, MaxLongInt, yylineno, yycolno); END;
  5:
     			BEGIN  AddToken(TokenList, T_SECTION_LTX, yytext, MaxLongInt, yylineno, yycolno); END;
  6:
     			BEGIN  AddToken(TokenList, T_SECTION_OTX, yytext, MaxLongInt, yylineno, yycolno); END;
  7:
     			BEGIN  AddToken(TokenList, T_SECTION_OBJ, yytext, MaxLongInt, yylineno, yycolno); END;
  8:
     			BEGIN  AddToken(TokenList, T_SECTION_VOC, yytext, MaxLongInt, yylineno, yycolno); END;
  9:
     			BEGIN  AddToken(TokenList, T_SECTION_PRO, yytext, MaxLongInt, yylineno, yycolno); END;
  10:
     			BEGIN  AddToken(TokenList, T_SECTION_END, yytext, MaxLongInt, yylineno, yycolno); END;
  11:
       			BEGIN  AddToken(TokenList, T_DEFINE, yytext, MaxLongInt, yylineno, yycolno); END;
  12:
      			BEGIN  AddToken(TokenList, T_IFDEF, yytext, MaxLongInt, yylineno, yycolno); END;
  13:
    			BEGIN  AddToken(TokenList, T_IFDEF, yytext, MaxLongInt, yylineno, yycolno); END;
  14:
       			BEGIN  AddToken(TokenList, T_IFNDEF, yytext, MaxLongInt, yylineno, yycolno); END;
  15:
      			BEGIN  AddToken(TokenList, T_ENDIF, yytext, MaxLongInt, yylineno, yycolno); END;
  16:
                BEGIN  AddToken(TokenList, T_ELSE, yytext, MaxLongInt, yylineno, yycolno); END;
  17:
                BEGIN  AddToken(TokenList, T_ECHO, yytext, MaxLongInt, yylineno, yycolno); END;
  18:
                BEGIN  AddToken(TokenList, T_USERPTR, yytext, MaxLongInt, yylineno, yycolno); END;
  19:
                BEGIN  AddToken(TokenList, T_INT, yytext, MaxLongInt, yylineno, yycolno); END;
  20:
                BEGIN  AddToken(TokenList, T_SFX, yytext, MaxLongInt, yylineno, yycolno); END;
  21:
                BEGIN  AddToken(TokenList, T_HEX, yytext, MaxLongInt, yylineno, yycolno); END;
  22:
                BEGIN  AddToken(TokenList, T_DEBUG, yytext, MaxLongInt, yylineno, yycolno); END;
  23:
   				BEGIN  AddToken(TokenList, T_DB, yytext, MaxLongInt, yylineno, yycolno); END;
  24:
        		BEGIN  AddToken(TokenList, T_DB, yytext, MaxLongInt, yylineno, yycolno); END;
  25:
                BEGIN  AddToken(TokenList, T_DW, yytext, MaxLongInt, yylineno, yycolno); END;
  26:
                BEGIN  AddToken(TokenList, T_DW, yytext, MaxLongInt, yylineno, yycolno); END;
  27:
       			BEGIN  AddToken(TokenList, T_EXTERN, yytext, MaxLongInt, yylineno, yycolno); END;
  28:
       			BEGIN  AddToken(TokenList, T_INCBIN, yytext, MaxLongInt, yylineno, yycolno); END;
  29:
                BEGIN  AddToken(TokenList, T_CLASSIC, yytext, MaxLongInt, yylineno, yycolno); END;
  30:
      			BEGIN  AddToken(TokenList, T_STRING, yytext, MaxLongInt, yylineno, yycolno); END;
  31:
       			BEGIN  AddToken(TokenList, T_STRING, UTF8Encode(yytext), MaxLongInt, yylineno, yycolno); END;
  32:
 				BEGIN  AddToken(TokenList, T_UNDERSCORE, yytext, MaxLongInt, yylineno, yycolno); END;
  33:
 				BEGIN  AddToken(TokenList, T_UNDERSCORE, yytext, MaxLongInt, yylineno, yycolno); END;
  34:
 				BEGIN  AddToken(TokenList, T_PROCESS_ENTRY_SIGN, yytext, MaxLongInt, yylineno, yycolno); END;
  35:
                BEGIN  AddToken(TokenList, T_LIST_ENTRY, yytext, StrToInt(Copy(yytext,2,Length(yytext)-1)), yylineno, yycolno); END;
  36:
                                 BEGIN  AddToken(TokenList, T_LIST_ENTRY, Copy(yytext,2,Length(yytext)-1), MaxLongInt, yylineno, yycolno); END;
  37:
      			BEGIN  END;
  38:
                BEGIN  AddToken(TokenList, T_NUMBER, yytext, StrToInt(yytext), yylineno, yycolno); END;
  39:
                                 BEGIN  AddToken(TokenList, T_LABEL, yytext, MaxLongInt, yylineno, yycolno); END;
  40:
                               BEGIN  AddToken(TokenList, T_IDENTIFIER, yytext, MaxLongInt, yylineno, yycolno); END;
  41:
  				BEGIN  AddToken(TokenList, T_INDIRECT, yytext, MaxLongInt, yylineno, yycolno); END;
  42:
                BEGIN  END;
  43:
                BEGIN LexerError(yylineno, yycolno, yytext); Halt(1); END;
  end;
end(*yyaction*);

(* DFA table: *)

type YYTRec = record
                cc : set of Char;
                s  : Integer;
              end;

const

yynmarks   = 93;
yynmatches = 93;
yyntrans   = 186;
yynstates  = 123;

yyk : array [1..yynmarks] of Integer = (
  { 0: }
  { 1: }
  { 2: }
  43,
  { 3: }
  43,
  { 4: }
  43,
  { 5: }
  43,
  { 6: }
  32,
  40,
  43,
  { 7: }
  33,
  43,
  { 8: }
  34,
  43,
  { 9: }
  43,
  { 10: }
  43,
  { 11: }
  38,
  40,
  43,
  { 12: }
  43,
  { 13: }
  40,
  43,
  { 14: }
  41,
  43,
  { 15: }
  42,
  { 16: }
  42,
  43,
  { 17: }
  43,
  { 18: }
  36,
  { 19: }
  36,
  { 20: }
  36,
  { 21: }
  36,
  { 22: }
  36,
  { 23: }
  36,
  { 24: }
  36,
  { 25: }
  36,
  { 26: }
  35,
  36,
  { 27: }
  36,
  { 28: }
  { 29: }
  { 30: }
  { 31: }
  { 32: }
  { 33: }
  { 34: }
  { 35: }
  { 36: }
  30,
  { 37: }
  { 38: }
  { 39: }
  40,
  { 40: }
  { 41: }
  37,
  { 42: }
  38,
  { 43: }
  38,
  40,
  { 44: }
  39,
  { 45: }
  36,
  { 46: }
  36,
  { 47: }
  36,
  { 48: }
  36,
  { 49: }
  36,
  { 50: }
  36,
  { 51: }
  36,
  { 52: }
  36,
  { 53: }
  36,
  { 54: }
  36,
  { 55: }
  { 56: }
  23,
  { 57: }
  25,
  { 58: }
  13,
  { 59: }
  { 60: }
  { 61: }
  { 62: }
  { 63: }
  { 64: }
  { 65: }
  { 66: }
  { 67: }
  { 68: }
  31,
  { 69: }
  1,
  36,
  { 70: }
  3,
  36,
  { 71: }
  2,
  36,
  { 72: }
  4,
  36,
  { 73: }
  5,
  36,
  { 74: }
  6,
  36,
  { 75: }
  7,
  36,
  { 76: }
  8,
  36,
  { 77: }
  9,
  36,
  { 78: }
  10,
  36,
  { 79: }
  { 80: }
  { 81: }
  { 82: }
  { 83: }
  19,
  { 84: }
  { 85: }
  { 86: }
  { 87: }
  { 88: }
  { 89: }
  { 90: }
  20,
  { 91: }
  21,
  { 92: }
  { 93: }
  { 94: }
  24,
  { 95: }
  26,
  { 96: }
  { 97: }
  { 98: }
  { 99: }
  { 100: }
  { 101: }
  16,
  { 102: }
  17,
  { 103: }
  { 104: }
  { 105: }
  { 106: }
  { 107: }
  22,
  { 108: }
  12,
  { 109: }
  { 110: }
  { 111: }
  15,
  { 112: }
  { 113: }
  { 114: }
  { 115: }
  11,
  { 116: }
  14,
  { 117: }
  28,
  { 118: }
  27,
  { 119: }
  { 120: }
  { 121: }
  18,
  { 122: }
  29
);

yym : array [1..yynmatches] of Integer = (
{ 0: }
{ 1: }
{ 2: }
  43,
{ 3: }
  43,
{ 4: }
  43,
{ 5: }
  43,
{ 6: }
  32,
  40,
  43,
{ 7: }
  33,
  43,
{ 8: }
  34,
  43,
{ 9: }
  43,
{ 10: }
  43,
{ 11: }
  38,
  40,
  43,
{ 12: }
  43,
{ 13: }
  40,
  43,
{ 14: }
  41,
  43,
{ 15: }
  42,
{ 16: }
  42,
  43,
{ 17: }
  43,
{ 18: }
  36,
{ 19: }
  36,
{ 20: }
  36,
{ 21: }
  36,
{ 22: }
  36,
{ 23: }
  36,
{ 24: }
  36,
{ 25: }
  36,
{ 26: }
  35,
  36,
{ 27: }
  36,
{ 28: }
{ 29: }
{ 30: }
{ 31: }
{ 32: }
{ 33: }
{ 34: }
{ 35: }
{ 36: }
  30,
{ 37: }
{ 38: }
{ 39: }
  40,
{ 40: }
{ 41: }
  37,
{ 42: }
  38,
{ 43: }
  38,
  40,
{ 44: }
  39,
{ 45: }
  36,
{ 46: }
  36,
{ 47: }
  36,
{ 48: }
  36,
{ 49: }
  36,
{ 50: }
  36,
{ 51: }
  36,
{ 52: }
  36,
{ 53: }
  36,
{ 54: }
  36,
{ 55: }
{ 56: }
  23,
{ 57: }
  25,
{ 58: }
  13,
{ 59: }
{ 60: }
{ 61: }
{ 62: }
{ 63: }
{ 64: }
{ 65: }
{ 66: }
{ 67: }
{ 68: }
  31,
{ 69: }
  1,
  36,
{ 70: }
  3,
  36,
{ 71: }
  2,
  36,
{ 72: }
  4,
  36,
{ 73: }
  5,
  36,
{ 74: }
  6,
  36,
{ 75: }
  7,
  36,
{ 76: }
  8,
  36,
{ 77: }
  9,
  36,
{ 78: }
  10,
  36,
{ 79: }
{ 80: }
{ 81: }
{ 82: }
{ 83: }
  19,
{ 84: }
{ 85: }
{ 86: }
{ 87: }
{ 88: }
{ 89: }
{ 90: }
  20,
{ 91: }
  21,
{ 92: }
{ 93: }
{ 94: }
  24,
{ 95: }
  26,
{ 96: }
{ 97: }
{ 98: }
{ 99: }
{ 100: }
{ 101: }
  16,
{ 102: }
  17,
{ 103: }
{ 104: }
{ 105: }
{ 106: }
{ 107: }
  22,
{ 108: }
  12,
{ 109: }
{ 110: }
{ 111: }
  15,
{ 112: }
{ 113: }
{ 114: }
{ 115: }
  11,
{ 116: }
  14,
{ 117: }
  28,
{ 118: }
  27,
{ 119: }
{ 120: }
{ 121: }
  18,
{ 122: }
  29
);

yyt : array [1..yyntrans] of YYTrec = (
{ 0: }
  ( cc: [ #1..#8,#11..#31,'!','%','&','(',')','+','.',
            ':','<','=','?','['..'^','`','{'..#192,#194..#198,
            #200,#202..#204,#206..#208,#210,#212..#217,
            #219,#221..#224,#226..#230,#232,#234..#236,
            #238..#240,#242,#244..#249,#251,#253..#255 ]; s: 17),
  ( cc: [ #9,' ' ]; s: 16),
  ( cc: [ #10 ]; s: 15),
  ( cc: [ '"' ]; s: 4),
  ( cc: [ '#' ]; s: 3),
  ( cc: [ '$' ]; s: 12),
  ( cc: [ '''' ]; s: 5),
  ( cc: [ '*' ]; s: 7),
  ( cc: [ ',','A'..'Z','a'..'z',#193,#199,#201,#205,
            #209,#211,#218,#220,#225,#231,#233,#237,#241,
            #243,#250,#252 ]; s: 13),
  ( cc: [ '-' ]; s: 10),
  ( cc: [ '/' ]; s: 2),
  ( cc: [ '0'..'9' ]; s: 11),
  ( cc: [ ';' ]; s: 9),
  ( cc: [ '>' ]; s: 8),
  ( cc: [ '@' ]; s: 14),
  ( cc: [ '_' ]; s: 6),
{ 1: }
  ( cc: [ #1..#8,#11..#31,'!','%','&','(',')','+','.',
            ':','<','=','?','['..'^','`','{'..#192,#194..#198,
            #200,#202..#204,#206..#208,#210,#212..#217,
            #219,#221..#224,#226..#230,#232,#234..#236,
            #238..#240,#242,#244..#249,#251,#253..#255 ]; s: 17),
  ( cc: [ #9,' ' ]; s: 16),
  ( cc: [ #10 ]; s: 15),
  ( cc: [ '"' ]; s: 4),
  ( cc: [ '#' ]; s: 3),
  ( cc: [ '$' ]; s: 12),
  ( cc: [ '''' ]; s: 5),
  ( cc: [ '*' ]; s: 7),
  ( cc: [ ',','A'..'Z','a'..'z',#193,#199,#201,#205,
            #209,#211,#218,#220,#225,#231,#233,#237,#241,
            #243,#250,#252 ]; s: 13),
  ( cc: [ '-' ]; s: 10),
  ( cc: [ '/' ]; s: 2),
  ( cc: [ '0'..'9' ]; s: 11),
  ( cc: [ ';' ]; s: 9),
  ( cc: [ '>' ]; s: 8),
  ( cc: [ '@' ]; s: 14),
  ( cc: [ '_' ]; s: 6),
{ 2: }
  ( cc: [ ',','A','B','D','F'..'K','N','Q','R','T','U',
            'W'..'Z','_','a'..'z',#193,#199,#201,#205,
            #209,#211,#218,#220,#225,#231,#233,#237,#241,
            #243,#250,#252 ]; s: 27),
  ( cc: [ '0'..'9' ]; s: 26),
  ( cc: [ 'C' ]; s: 18),
  ( cc: [ 'E' ]; s: 25),
  ( cc: [ 'L' ]; s: 21),
  ( cc: [ 'M' ]; s: 20),
  ( cc: [ 'O' ]; s: 22),
  ( cc: [ 'P' ]; s: 24),
  ( cc: [ 'S' ]; s: 19),
  ( cc: [ 'V' ]; s: 23),
{ 3: }
  ( cc: [ 'c' ]; s: 34),
  ( cc: [ 'd' ]; s: 28),
  ( cc: [ 'e' ]; s: 30),
  ( cc: [ 'h' ]; s: 33),
  ( cc: [ 'i' ]; s: 29),
  ( cc: [ 's' ]; s: 32),
  ( cc: [ 'u' ]; s: 31),
{ 4: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 35),
  ( cc: [ '"' ]; s: 36),
{ 5: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 37),
  ( cc: [ '''' ]; s: 38),
{ 6: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 39),
{ 7: }
{ 8: }
{ 9: }
  ( cc: [ #1..#9,#11..#255 ]; s: 40),
  ( cc: [ #10 ]; s: 41),
{ 10: }
  ( cc: [ '0'..'9' ]; s: 42),
{ 11: }
  ( cc: [ ',','A'..'Z','_','a'..'z',#193,#199,#201,
            #205,#209,#211,#218,#220,#225,#231,#233,#237,
            #241,#243,#250,#252 ]; s: 39),
  ( cc: [ '0'..'9' ]; s: 43),
{ 12: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 44),
{ 13: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 39),
{ 14: }
{ 15: }
{ 16: }
{ 17: }
{ 18: }
  ( cc: [ ',','0'..'9','A'..'N','P'..'S','U'..'Z','_',
            'a'..'z',#193,#199,#201,#205,#209,#211,#218,
            #220,#225,#231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'O' ]; s: 46),
  ( cc: [ 'T' ]; s: 45),
{ 19: }
  ( cc: [ ',','0'..'9','A'..'S','U'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'T' ]; s: 47),
{ 20: }
  ( cc: [ ',','0'..'9','A'..'S','U'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'T' ]; s: 48),
{ 21: }
  ( cc: [ ',','0'..'9','A'..'S','U'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'T' ]; s: 49),
{ 22: }
  ( cc: [ ',','0'..'9','A','C'..'S','U'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'B' ]; s: 51),
  ( cc: [ 'T' ]; s: 50),
{ 23: }
  ( cc: [ ',','0'..'9','A'..'N','P'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'O' ]; s: 52),
{ 24: }
  ( cc: [ ',','0'..'9','A'..'Q','S'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'R' ]; s: 53),
{ 25: }
  ( cc: [ ',','0'..'9','A'..'M','O'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'N' ]; s: 54),
{ 26: }
  ( cc: [ ',','A'..'Z','_','a'..'z',#193,#199,#201,
            #205,#209,#211,#218,#220,#225,#231,#233,#237,
            #241,#243,#250,#252 ]; s: 27),
  ( cc: [ '0'..'9' ]; s: 26),
{ 27: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 28: }
  ( cc: [ 'b' ]; s: 56),
  ( cc: [ 'e' ]; s: 55),
  ( cc: [ 'w' ]; s: 57),
{ 29: }
  ( cc: [ 'f' ]; s: 58),
  ( cc: [ 'n' ]; s: 59),
{ 30: }
  ( cc: [ 'c' ]; s: 62),
  ( cc: [ 'l' ]; s: 61),
  ( cc: [ 'n' ]; s: 60),
  ( cc: [ 'x' ]; s: 63),
{ 31: }
  ( cc: [ 's' ]; s: 64),
{ 32: }
  ( cc: [ 'f' ]; s: 65),
{ 33: }
  ( cc: [ 'e' ]; s: 66),
{ 34: }
  ( cc: [ 'l' ]; s: 67),
{ 35: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 35),
  ( cc: [ '"' ]; s: 36),
{ 36: }
  ( cc: [ #1..#9,#11..'!','#'..#255 ]; s: 35),
  ( cc: [ '"' ]; s: 36),
{ 37: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 37),
  ( cc: [ '''' ]; s: 38),
{ 38: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 37),
  ( cc: [ '''' ]; s: 68),
{ 39: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 39),
{ 40: }
  ( cc: [ #1..#9,#11..#255 ]; s: 40),
  ( cc: [ #10 ]; s: 41),
{ 41: }
{ 42: }
  ( cc: [ '0'..'9' ]; s: 42),
{ 43: }
  ( cc: [ ',','A'..'Z','_','a'..'z',#193,#199,#201,
            #205,#209,#211,#218,#220,#225,#231,#233,#237,
            #241,#243,#250,#252 ]; s: 39),
  ( cc: [ '0'..'9' ]; s: 43),
{ 44: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 44),
{ 45: }
  ( cc: [ ',','0'..'9','A'..'K','M'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'L' ]; s: 69),
{ 46: }
  ( cc: [ ',','0'..'9','A'..'M','O'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'N' ]; s: 70),
{ 47: }
  ( cc: [ ',','0'..'9','A'..'W','Y','Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'X' ]; s: 71),
{ 48: }
  ( cc: [ ',','0'..'9','A'..'W','Y','Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'X' ]; s: 72),
{ 49: }
  ( cc: [ ',','0'..'9','A'..'W','Y','Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'X' ]; s: 73),
{ 50: }
  ( cc: [ ',','0'..'9','A'..'W','Y','Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'X' ]; s: 74),
{ 51: }
  ( cc: [ ',','0'..'9','A'..'I','K'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'J' ]; s: 75),
{ 52: }
  ( cc: [ ',','0'..'9','A','B','D'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'C' ]; s: 76),
{ 53: }
  ( cc: [ ',','0'..'9','A'..'N','P'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'O' ]; s: 77),
{ 54: }
  ( cc: [ ',','0'..'9','A'..'C','E'..'Z','_','a'..'z',
            #193,#199,#201,#205,#209,#211,#218,#220,#225,
            #231,#233,#237,#241,#243,#250,#252 ]; s: 27),
  ( cc: [ 'D' ]; s: 78),
{ 55: }
  ( cc: [ 'b' ]; s: 80),
  ( cc: [ 'f' ]; s: 79),
{ 56: }
{ 57: }
{ 58: }
  ( cc: [ 'd' ]; s: 81),
  ( cc: [ 'n' ]; s: 82),
{ 59: }
  ( cc: [ 'c' ]; s: 84),
  ( cc: [ 't' ]; s: 83),
{ 60: }
  ( cc: [ 'd' ]; s: 85),
{ 61: }
  ( cc: [ 's' ]; s: 86),
{ 62: }
  ( cc: [ 'h' ]; s: 87),
{ 63: }
  ( cc: [ 't' ]; s: 88),
{ 64: }
  ( cc: [ 'e' ]; s: 89),
{ 65: }
  ( cc: [ 'x' ]; s: 90),
{ 66: }
  ( cc: [ 'x' ]; s: 91),
{ 67: }
  ( cc: [ 'a' ]; s: 92),
{ 68: }
  ( cc: [ #1..#9,#11..'&','('..#255 ]; s: 37),
  ( cc: [ '''' ]; s: 68),
{ 69: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 70: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 71: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 72: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 73: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 74: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 75: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 76: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 77: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 78: }
  ( cc: [ ',','0'..'9','A'..'Z','_','a'..'z',#193,#199,
            #201,#205,#209,#211,#218,#220,#225,#231,#233,
            #237,#241,#243,#250,#252 ]; s: 27),
{ 79: }
  ( cc: [ 'b' ]; s: 94),
  ( cc: [ 'i' ]; s: 93),
  ( cc: [ 'w' ]; s: 95),
{ 80: }
  ( cc: [ 'u' ]; s: 96),
{ 81: }
  ( cc: [ 'e' ]; s: 97),
{ 82: }
  ( cc: [ 'd' ]; s: 98),
{ 83: }
{ 84: }
  ( cc: [ 'b' ]; s: 99),
{ 85: }
  ( cc: [ 'i' ]; s: 100),
{ 86: }
  ( cc: [ 'e' ]; s: 101),
{ 87: }
  ( cc: [ 'o' ]; s: 102),
{ 88: }
  ( cc: [ 'e' ]; s: 103),
{ 89: }
  ( cc: [ 'r' ]; s: 104),
{ 90: }
{ 91: }
{ 92: }
  ( cc: [ 's' ]; s: 105),
{ 93: }
  ( cc: [ 'n' ]; s: 106),
{ 94: }
{ 95: }
{ 96: }
  ( cc: [ 'g' ]; s: 107),
{ 97: }
  ( cc: [ 'f' ]; s: 108),
{ 98: }
  ( cc: [ 'e' ]; s: 109),
{ 99: }
  ( cc: [ 'i' ]; s: 110),
{ 100: }
  ( cc: [ 'f' ]; s: 111),
{ 101: }
{ 102: }
{ 103: }
  ( cc: [ 'r' ]; s: 112),
{ 104: }
  ( cc: [ 'p' ]; s: 113),
{ 105: }
  ( cc: [ 's' ]; s: 114),
{ 106: }
  ( cc: [ 'e' ]; s: 115),
{ 107: }
{ 108: }
{ 109: }
  ( cc: [ 'f' ]; s: 116),
{ 110: }
  ( cc: [ 'n' ]; s: 117),
{ 111: }
{ 112: }
  ( cc: [ 'n' ]; s: 118),
{ 113: }
  ( cc: [ 't' ]; s: 119),
{ 114: }
  ( cc: [ 'i' ]; s: 120),
{ 115: }
{ 116: }
{ 117: }
{ 118: }
{ 119: }
  ( cc: [ 'r' ]; s: 121),
{ 120: }
  ( cc: [ 'c' ]; s: 122)
{ 121: }
{ 122: }
);

yykl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 1,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 5,
{ 7: } 8,
{ 8: } 10,
{ 9: } 12,
{ 10: } 13,
{ 11: } 14,
{ 12: } 17,
{ 13: } 18,
{ 14: } 20,
{ 15: } 22,
{ 16: } 23,
{ 17: } 25,
{ 18: } 26,
{ 19: } 27,
{ 20: } 28,
{ 21: } 29,
{ 22: } 30,
{ 23: } 31,
{ 24: } 32,
{ 25: } 33,
{ 26: } 34,
{ 27: } 36,
{ 28: } 37,
{ 29: } 37,
{ 30: } 37,
{ 31: } 37,
{ 32: } 37,
{ 33: } 37,
{ 34: } 37,
{ 35: } 37,
{ 36: } 37,
{ 37: } 38,
{ 38: } 38,
{ 39: } 38,
{ 40: } 39,
{ 41: } 39,
{ 42: } 40,
{ 43: } 41,
{ 44: } 43,
{ 45: } 44,
{ 46: } 45,
{ 47: } 46,
{ 48: } 47,
{ 49: } 48,
{ 50: } 49,
{ 51: } 50,
{ 52: } 51,
{ 53: } 52,
{ 54: } 53,
{ 55: } 54,
{ 56: } 54,
{ 57: } 55,
{ 58: } 56,
{ 59: } 57,
{ 60: } 57,
{ 61: } 57,
{ 62: } 57,
{ 63: } 57,
{ 64: } 57,
{ 65: } 57,
{ 66: } 57,
{ 67: } 57,
{ 68: } 57,
{ 69: } 58,
{ 70: } 60,
{ 71: } 62,
{ 72: } 64,
{ 73: } 66,
{ 74: } 68,
{ 75: } 70,
{ 76: } 72,
{ 77: } 74,
{ 78: } 76,
{ 79: } 78,
{ 80: } 78,
{ 81: } 78,
{ 82: } 78,
{ 83: } 78,
{ 84: } 79,
{ 85: } 79,
{ 86: } 79,
{ 87: } 79,
{ 88: } 79,
{ 89: } 79,
{ 90: } 79,
{ 91: } 80,
{ 92: } 81,
{ 93: } 81,
{ 94: } 81,
{ 95: } 82,
{ 96: } 83,
{ 97: } 83,
{ 98: } 83,
{ 99: } 83,
{ 100: } 83,
{ 101: } 83,
{ 102: } 84,
{ 103: } 85,
{ 104: } 85,
{ 105: } 85,
{ 106: } 85,
{ 107: } 85,
{ 108: } 86,
{ 109: } 87,
{ 110: } 87,
{ 111: } 87,
{ 112: } 88,
{ 113: } 88,
{ 114: } 88,
{ 115: } 88,
{ 116: } 89,
{ 117: } 90,
{ 118: } 91,
{ 119: } 92,
{ 120: } 92,
{ 121: } 92,
{ 122: } 93
);

yykh : array [0..yynstates-1] of Integer = (
{ 0: } 0,
{ 1: } 0,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 7,
{ 7: } 9,
{ 8: } 11,
{ 9: } 12,
{ 10: } 13,
{ 11: } 16,
{ 12: } 17,
{ 13: } 19,
{ 14: } 21,
{ 15: } 22,
{ 16: } 24,
{ 17: } 25,
{ 18: } 26,
{ 19: } 27,
{ 20: } 28,
{ 21: } 29,
{ 22: } 30,
{ 23: } 31,
{ 24: } 32,
{ 25: } 33,
{ 26: } 35,
{ 27: } 36,
{ 28: } 36,
{ 29: } 36,
{ 30: } 36,
{ 31: } 36,
{ 32: } 36,
{ 33: } 36,
{ 34: } 36,
{ 35: } 36,
{ 36: } 37,
{ 37: } 37,
{ 38: } 37,
{ 39: } 38,
{ 40: } 38,
{ 41: } 39,
{ 42: } 40,
{ 43: } 42,
{ 44: } 43,
{ 45: } 44,
{ 46: } 45,
{ 47: } 46,
{ 48: } 47,
{ 49: } 48,
{ 50: } 49,
{ 51: } 50,
{ 52: } 51,
{ 53: } 52,
{ 54: } 53,
{ 55: } 53,
{ 56: } 54,
{ 57: } 55,
{ 58: } 56,
{ 59: } 56,
{ 60: } 56,
{ 61: } 56,
{ 62: } 56,
{ 63: } 56,
{ 64: } 56,
{ 65: } 56,
{ 66: } 56,
{ 67: } 56,
{ 68: } 57,
{ 69: } 59,
{ 70: } 61,
{ 71: } 63,
{ 72: } 65,
{ 73: } 67,
{ 74: } 69,
{ 75: } 71,
{ 76: } 73,
{ 77: } 75,
{ 78: } 77,
{ 79: } 77,
{ 80: } 77,
{ 81: } 77,
{ 82: } 77,
{ 83: } 78,
{ 84: } 78,
{ 85: } 78,
{ 86: } 78,
{ 87: } 78,
{ 88: } 78,
{ 89: } 78,
{ 90: } 79,
{ 91: } 80,
{ 92: } 80,
{ 93: } 80,
{ 94: } 81,
{ 95: } 82,
{ 96: } 82,
{ 97: } 82,
{ 98: } 82,
{ 99: } 82,
{ 100: } 82,
{ 101: } 83,
{ 102: } 84,
{ 103: } 84,
{ 104: } 84,
{ 105: } 84,
{ 106: } 84,
{ 107: } 85,
{ 108: } 86,
{ 109: } 86,
{ 110: } 86,
{ 111: } 87,
{ 112: } 87,
{ 113: } 87,
{ 114: } 87,
{ 115: } 88,
{ 116: } 89,
{ 117: } 90,
{ 118: } 91,
{ 119: } 91,
{ 120: } 91,
{ 121: } 92,
{ 122: } 93
);

yyml : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 1,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 5,
{ 7: } 8,
{ 8: } 10,
{ 9: } 12,
{ 10: } 13,
{ 11: } 14,
{ 12: } 17,
{ 13: } 18,
{ 14: } 20,
{ 15: } 22,
{ 16: } 23,
{ 17: } 25,
{ 18: } 26,
{ 19: } 27,
{ 20: } 28,
{ 21: } 29,
{ 22: } 30,
{ 23: } 31,
{ 24: } 32,
{ 25: } 33,
{ 26: } 34,
{ 27: } 36,
{ 28: } 37,
{ 29: } 37,
{ 30: } 37,
{ 31: } 37,
{ 32: } 37,
{ 33: } 37,
{ 34: } 37,
{ 35: } 37,
{ 36: } 37,
{ 37: } 38,
{ 38: } 38,
{ 39: } 38,
{ 40: } 39,
{ 41: } 39,
{ 42: } 40,
{ 43: } 41,
{ 44: } 43,
{ 45: } 44,
{ 46: } 45,
{ 47: } 46,
{ 48: } 47,
{ 49: } 48,
{ 50: } 49,
{ 51: } 50,
{ 52: } 51,
{ 53: } 52,
{ 54: } 53,
{ 55: } 54,
{ 56: } 54,
{ 57: } 55,
{ 58: } 56,
{ 59: } 57,
{ 60: } 57,
{ 61: } 57,
{ 62: } 57,
{ 63: } 57,
{ 64: } 57,
{ 65: } 57,
{ 66: } 57,
{ 67: } 57,
{ 68: } 57,
{ 69: } 58,
{ 70: } 60,
{ 71: } 62,
{ 72: } 64,
{ 73: } 66,
{ 74: } 68,
{ 75: } 70,
{ 76: } 72,
{ 77: } 74,
{ 78: } 76,
{ 79: } 78,
{ 80: } 78,
{ 81: } 78,
{ 82: } 78,
{ 83: } 78,
{ 84: } 79,
{ 85: } 79,
{ 86: } 79,
{ 87: } 79,
{ 88: } 79,
{ 89: } 79,
{ 90: } 79,
{ 91: } 80,
{ 92: } 81,
{ 93: } 81,
{ 94: } 81,
{ 95: } 82,
{ 96: } 83,
{ 97: } 83,
{ 98: } 83,
{ 99: } 83,
{ 100: } 83,
{ 101: } 83,
{ 102: } 84,
{ 103: } 85,
{ 104: } 85,
{ 105: } 85,
{ 106: } 85,
{ 107: } 85,
{ 108: } 86,
{ 109: } 87,
{ 110: } 87,
{ 111: } 87,
{ 112: } 88,
{ 113: } 88,
{ 114: } 88,
{ 115: } 88,
{ 116: } 89,
{ 117: } 90,
{ 118: } 91,
{ 119: } 92,
{ 120: } 92,
{ 121: } 92,
{ 122: } 93
);

yymh : array [0..yynstates-1] of Integer = (
{ 0: } 0,
{ 1: } 0,
{ 2: } 1,
{ 3: } 2,
{ 4: } 3,
{ 5: } 4,
{ 6: } 7,
{ 7: } 9,
{ 8: } 11,
{ 9: } 12,
{ 10: } 13,
{ 11: } 16,
{ 12: } 17,
{ 13: } 19,
{ 14: } 21,
{ 15: } 22,
{ 16: } 24,
{ 17: } 25,
{ 18: } 26,
{ 19: } 27,
{ 20: } 28,
{ 21: } 29,
{ 22: } 30,
{ 23: } 31,
{ 24: } 32,
{ 25: } 33,
{ 26: } 35,
{ 27: } 36,
{ 28: } 36,
{ 29: } 36,
{ 30: } 36,
{ 31: } 36,
{ 32: } 36,
{ 33: } 36,
{ 34: } 36,
{ 35: } 36,
{ 36: } 37,
{ 37: } 37,
{ 38: } 37,
{ 39: } 38,
{ 40: } 38,
{ 41: } 39,
{ 42: } 40,
{ 43: } 42,
{ 44: } 43,
{ 45: } 44,
{ 46: } 45,
{ 47: } 46,
{ 48: } 47,
{ 49: } 48,
{ 50: } 49,
{ 51: } 50,
{ 52: } 51,
{ 53: } 52,
{ 54: } 53,
{ 55: } 53,
{ 56: } 54,
{ 57: } 55,
{ 58: } 56,
{ 59: } 56,
{ 60: } 56,
{ 61: } 56,
{ 62: } 56,
{ 63: } 56,
{ 64: } 56,
{ 65: } 56,
{ 66: } 56,
{ 67: } 56,
{ 68: } 57,
{ 69: } 59,
{ 70: } 61,
{ 71: } 63,
{ 72: } 65,
{ 73: } 67,
{ 74: } 69,
{ 75: } 71,
{ 76: } 73,
{ 77: } 75,
{ 78: } 77,
{ 79: } 77,
{ 80: } 77,
{ 81: } 77,
{ 82: } 77,
{ 83: } 78,
{ 84: } 78,
{ 85: } 78,
{ 86: } 78,
{ 87: } 78,
{ 88: } 78,
{ 89: } 78,
{ 90: } 79,
{ 91: } 80,
{ 92: } 80,
{ 93: } 80,
{ 94: } 81,
{ 95: } 82,
{ 96: } 82,
{ 97: } 82,
{ 98: } 82,
{ 99: } 82,
{ 100: } 82,
{ 101: } 83,
{ 102: } 84,
{ 103: } 84,
{ 104: } 84,
{ 105: } 84,
{ 106: } 84,
{ 107: } 85,
{ 108: } 86,
{ 109: } 86,
{ 110: } 86,
{ 111: } 87,
{ 112: } 87,
{ 113: } 87,
{ 114: } 87,
{ 115: } 88,
{ 116: } 89,
{ 117: } 90,
{ 118: } 91,
{ 119: } 91,
{ 120: } 91,
{ 121: } 92,
{ 122: } 93
);

yytl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 17,
{ 2: } 33,
{ 3: } 43,
{ 4: } 50,
{ 5: } 52,
{ 6: } 54,
{ 7: } 55,
{ 8: } 55,
{ 9: } 55,
{ 10: } 57,
{ 11: } 58,
{ 12: } 60,
{ 13: } 61,
{ 14: } 62,
{ 15: } 62,
{ 16: } 62,
{ 17: } 62,
{ 18: } 62,
{ 19: } 65,
{ 20: } 67,
{ 21: } 69,
{ 22: } 71,
{ 23: } 74,
{ 24: } 76,
{ 25: } 78,
{ 26: } 80,
{ 27: } 82,
{ 28: } 83,
{ 29: } 86,
{ 30: } 88,
{ 31: } 92,
{ 32: } 93,
{ 33: } 94,
{ 34: } 95,
{ 35: } 96,
{ 36: } 98,
{ 37: } 100,
{ 38: } 102,
{ 39: } 104,
{ 40: } 105,
{ 41: } 107,
{ 42: } 107,
{ 43: } 108,
{ 44: } 110,
{ 45: } 111,
{ 46: } 113,
{ 47: } 115,
{ 48: } 117,
{ 49: } 119,
{ 50: } 121,
{ 51: } 123,
{ 52: } 125,
{ 53: } 127,
{ 54: } 129,
{ 55: } 131,
{ 56: } 133,
{ 57: } 133,
{ 58: } 133,
{ 59: } 135,
{ 60: } 137,
{ 61: } 138,
{ 62: } 139,
{ 63: } 140,
{ 64: } 141,
{ 65: } 142,
{ 66: } 143,
{ 67: } 144,
{ 68: } 145,
{ 69: } 147,
{ 70: } 148,
{ 71: } 149,
{ 72: } 150,
{ 73: } 151,
{ 74: } 152,
{ 75: } 153,
{ 76: } 154,
{ 77: } 155,
{ 78: } 156,
{ 79: } 157,
{ 80: } 160,
{ 81: } 161,
{ 82: } 162,
{ 83: } 163,
{ 84: } 163,
{ 85: } 164,
{ 86: } 165,
{ 87: } 166,
{ 88: } 167,
{ 89: } 168,
{ 90: } 169,
{ 91: } 169,
{ 92: } 169,
{ 93: } 170,
{ 94: } 171,
{ 95: } 171,
{ 96: } 171,
{ 97: } 172,
{ 98: } 173,
{ 99: } 174,
{ 100: } 175,
{ 101: } 176,
{ 102: } 176,
{ 103: } 176,
{ 104: } 177,
{ 105: } 178,
{ 106: } 179,
{ 107: } 180,
{ 108: } 180,
{ 109: } 180,
{ 110: } 181,
{ 111: } 182,
{ 112: } 182,
{ 113: } 183,
{ 114: } 184,
{ 115: } 185,
{ 116: } 185,
{ 117: } 185,
{ 118: } 185,
{ 119: } 185,
{ 120: } 186,
{ 121: } 187,
{ 122: } 187
);

yyth : array [0..yynstates-1] of Integer = (
{ 0: } 16,
{ 1: } 32,
{ 2: } 42,
{ 3: } 49,
{ 4: } 51,
{ 5: } 53,
{ 6: } 54,
{ 7: } 54,
{ 8: } 54,
{ 9: } 56,
{ 10: } 57,
{ 11: } 59,
{ 12: } 60,
{ 13: } 61,
{ 14: } 61,
{ 15: } 61,
{ 16: } 61,
{ 17: } 61,
{ 18: } 64,
{ 19: } 66,
{ 20: } 68,
{ 21: } 70,
{ 22: } 73,
{ 23: } 75,
{ 24: } 77,
{ 25: } 79,
{ 26: } 81,
{ 27: } 82,
{ 28: } 85,
{ 29: } 87,
{ 30: } 91,
{ 31: } 92,
{ 32: } 93,
{ 33: } 94,
{ 34: } 95,
{ 35: } 97,
{ 36: } 99,
{ 37: } 101,
{ 38: } 103,
{ 39: } 104,
{ 40: } 106,
{ 41: } 106,
{ 42: } 107,
{ 43: } 109,
{ 44: } 110,
{ 45: } 112,
{ 46: } 114,
{ 47: } 116,
{ 48: } 118,
{ 49: } 120,
{ 50: } 122,
{ 51: } 124,
{ 52: } 126,
{ 53: } 128,
{ 54: } 130,
{ 55: } 132,
{ 56: } 132,
{ 57: } 132,
{ 58: } 134,
{ 59: } 136,
{ 60: } 137,
{ 61: } 138,
{ 62: } 139,
{ 63: } 140,
{ 64: } 141,
{ 65: } 142,
{ 66: } 143,
{ 67: } 144,
{ 68: } 146,
{ 69: } 147,
{ 70: } 148,
{ 71: } 149,
{ 72: } 150,
{ 73: } 151,
{ 74: } 152,
{ 75: } 153,
{ 76: } 154,
{ 77: } 155,
{ 78: } 156,
{ 79: } 159,
{ 80: } 160,
{ 81: } 161,
{ 82: } 162,
{ 83: } 162,
{ 84: } 163,
{ 85: } 164,
{ 86: } 165,
{ 87: } 166,
{ 88: } 167,
{ 89: } 168,
{ 90: } 168,
{ 91: } 168,
{ 92: } 169,
{ 93: } 170,
{ 94: } 170,
{ 95: } 170,
{ 96: } 171,
{ 97: } 172,
{ 98: } 173,
{ 99: } 174,
{ 100: } 175,
{ 101: } 175,
{ 102: } 175,
{ 103: } 176,
{ 104: } 177,
{ 105: } 178,
{ 106: } 179,
{ 107: } 179,
{ 108: } 179,
{ 109: } 180,
{ 110: } 181,
{ 111: } 181,
{ 112: } 182,
{ 113: } 183,
{ 114: } 184,
{ 115: } 184,
{ 116: } 184,
{ 117: } 184,
{ 118: } 184,
{ 119: } 185,
{ 120: } 186,
{ 121: } 186,
{ 122: } 186
);


var yyn : Integer;

label start, scan, action;

begin

start:

  (* initialize: *)

  yynew;

scan:

  (* mark positions and matches: *)

  for yyn := yykl[yystate] to     yykh[yystate] do yymark(yyk[yyn]);
  for yyn := yymh[yystate] downto yyml[yystate] do yymatch(yym[yyn]);

  if yytl[yystate]>yyth[yystate] then goto action; (* dead state *)

  (* get next character: *)

  yyscan;

  (* determine action: *)

  yyn := yytl[yystate];
  while (yyn<=yyth[yystate]) and not (yyactchar in yyt[yyn].cc) do inc(yyn);
  if yyn>yyth[yystate] then goto action;
    (* no transition on yyactchar in this state *)

  (* switch to new state: *)

  yystate := yyt[yyn].s;

  goto scan;

action:

  (* execute action: *)

  if yyfind(yyrule) then
    begin
      yyaction(yyrule);
      if yyreject then goto action;
    end
  else if not yydefault and yywrap() then
    begin
      yyclear;
      return(0);
    end;

  if not yydone then goto start;

  yylex := yyretval;

end(*yylex*);


