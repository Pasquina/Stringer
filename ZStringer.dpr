{ This comment will cause a change to the file. }

library ZStringer;

uses
  System.SysUtils,
  System.Classes,
  System.StrUtils;

{$R *.res}

function Reverse(AString: PChar): PANSIString; stdcall; export;
var
  LOutString: AnsiString;                       // the processed string
  LLengthOfString: integer;                     // number of bytes needed for output (including the null character)
  LInString: AnsiString;                        // the input string in a Delphi managed format
begin
  LInString       := AString;                   // convert the input string to a managed Delphi string
  LOutString      := ReverseString(LInString);  // do something to it; for example, reverse it
  LLengthOfString := Length(LOutString) + 1;    // calclulate the required output length
  Result          := AllocMem(LLengthOfString); // acquire return main storage; set the return value (pointer)
  move(LOutString, Result^, LLengthOfString);   // move the processed data to the output main storage

  // important: you must free the main storage in the calling routine

end;

exports Reverse;

end.
