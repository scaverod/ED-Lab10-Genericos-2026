unit uTElement;


interface

uses sysutils;

type
    TElement = record
        info: string;
    end;

procedure assign(var e: TElement; e2: TElement);
function toString(e: TElement): string;

implementation

procedure assign(var e: TElement; e2: TElement);
begin
    e.info := e2.info; 
end;

function toString(e: TElement): string;
begin
    toString := e.info;
end;

end.
