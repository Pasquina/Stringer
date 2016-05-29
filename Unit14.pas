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
