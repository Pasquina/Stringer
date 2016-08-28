{
   Copyright © 2015 Milan Vydareny

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

}

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
