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

unit Unit14;

interface

uses Unit15;

type
  TStringer = class(TInterfacedObject, IStringer)
  public
    class function Reverse(const AInString: string): string;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses System.StrUtils;

{ TStringer }

constructor TStringer.Create;
begin
  inherited;
end;

destructor TStringer.Destroy;
begin
  inherited;
end;

class function TStringer.Reverse(const AInString: string): string;
begin
  Result := ReverseString(AInString); // do something to the string and send it back
end;

end.
