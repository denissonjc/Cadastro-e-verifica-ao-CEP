unit ProJeto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.JSON,idHTTP,IdSSLOpenSSL;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Ed_CEP: TEdit;
    Ed_Log: TEdit;
    Ed_LogNum: TEdit;
    Ed_Complemento: TEdit;
    Ed_Bairro: TEdit;
    Ed_Cidade: TEdit;
    Ed_UF: TEdit;
    Ed_Pais: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Ed_Nome: TEdit;
    Ed_Identidade: TEdit;
    Ed_CPF: TEdit;
    Ed_Telefone: TEdit;
    Ed_Email: TEdit;
    procedure Button2Click(Sender: TObject);
  private
     function GetCEP(CEP:string): TJSONObject;
     procedure CarregaCep(JSON: TJSONObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
   LJsonObj: TJSONObject;
begin
   if length(Ed_CEP.Text) <> 8 then
   begin
      showMessage('CEP incorreto');
  //    LimpaCamposCEP;
      Ed_CEP.SetFocus;
      exit;
   end;

  LJsonObj := GetCEP(Ed_CEP.Text);
   if LJsonOBJ <> nil then
      CarregaCep(LJsonObj)
   else
   begin
      showMessage('CEP inválido ou não encontrado');
   //   LimpaCamposCEP;
      Ed_CEP.SetFocus;
      exit;
   end;


end;

procedure TForm1.CarregaCep(JSON: TJSONObject);
begin
   Ed_Log.Text  := JSON.Get('logradouro').JsonValue.Value;
   Ed_Cidade.Text  := UpperCase(JSON.Get('localidade').JsonValue.Value);
   Ed_Bairro.Text   := JSON.Get('bairro').JsonValue.Value;
   Ed_UF.Text  := JSON.Get('uf').JsonValue.Value;
   Ed_Complemento.Text:=JSON.Get('complemento').JsonValue.Value;
   Ed_Pais.Text     := 'BRASIL';

end;

function TForm1.GetCEP(CEP: string): TJSONObject;
var
   HTTP: TIdHTTP;
   IDSSLHandler : TIdSSLIOHandlerSocketOpenSSL;
   Response: TStringStream;
   LJsonObj: TJSONObject;
begin
   try
      HTTP := TIdHTTP.Create;
      IDSSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create;
      HTTP.IOHandler := IDSSLHandler;
      Response := TStringStream.Create('');
      HTTP.Get('https://viacep.com.br/ws/' + String(CEP) + '/json', Response);
      if (HTTP.ResponseCode = 200) and not(Utf8ToAnsi(Response.DataString) = '{'#$A'  "erro": true'#$A'}') then
         Result := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes( Utf8ToAnsi(Response.DataString)), 0) as TJSONObject;
   finally
      FreeAndNil(HTTP);
      FreeAndNil(IDSSLHandler);
      Response.Destroy;
   end;
end;

end.
