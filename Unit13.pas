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

unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Button1: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

  { declare the dll }

function Reverse(AString: PChar): PANSIString;
stdcall external 'ZStringer.dll';

implementation

{ This program also includes an instruction to report memory leaks on shutdown. This will help
  ensure that the FreeMem for the dll solution operates correctly.  }

{$R *.dfm}

{ declare the bpl Note: there is an interface also defined that isn't necessary. If you need to
  instantiate the class, however, the interface is the preferred method to use. }

uses Unit14, Unit15;

{ Use the BPL to process the string }

procedure TForm13.Button1Click(Sender: TObject);
begin
  LabeledEdit2.Text := TStringer.Reverse(LabeledEdit1.Text); // call the routine
end;

{ Use the dll to process the string }

procedure TForm13.Button2Click(Sender: TObject);
var
  LResult: PANSIString;                                      // receiving location for the string pointer
begin
  LResult           := Reverse(Pointer(LabeledEdit1.Text));  // call the dll routine
  LabeledEdit2.Text := LResult^;                             // put the returned text back in the edit box
  FreeMem(LResult);                                          // free the memory allocated for the return
end;

end.
