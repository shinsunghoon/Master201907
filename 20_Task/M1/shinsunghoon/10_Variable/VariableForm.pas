unit VariableForm;

interface

// 깃허그 테스트

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNum: TEdit;
    Button1: TButton;
    edtSum: TEdit;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    // 이 폼(유닛)에서만 사용하는 변수와 함수를 선언

    { TODO : (1) 정수 형 FSum 변수를 선언하세요. }
    FSum : Integer;                                                             //정수형 변수 선언

    function AddNum(ANum: Integer): Integer;
  public
    // 다른 유닛에서 참조할 수 있는 변수와 함수 선언
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.AddNum(ANum: Integer): Integer;
begin
  { TODO :
      (2) FSum 변수에 파라메터 ANum 값을 더합니다.
          FSum 변수 반환 }
  FSum := FSum + ANum;                                                          //FSum 변수에 쌓기

  Result := FSum;                                                               //반환값
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Num, Sum: Integer;  // 이곳에 선언된 변수는 이 함수에서만 사용합니다.
begin
  Num := StrToInt(edtNum.Text);
  Sum := AddNum(Num);

  edtSum.Text := IntToStr(Sum);
end;

end.
