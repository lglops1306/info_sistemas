unit FCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask,DtAPI,Data.DB,Datasnap.DBClient;

type
  TFrmCadastro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    EdMIdentidade: TMaskEdit;
    EdMCPF: TMaskEdit;
    EdNome: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    EdCidade: TEdit;
    EdLogradouro: TEdit;
    EdPais: TEdit;
    EdNumero: TEdit;
    EdComplemento: TEdit;
    EdBairro: TEdit;
    EdEstado: TEdit;
    Panel4: TPanel;
    Label4: TLabel;
    EdEmail: TEdit;
    EdMTelefone: TMaskEdit;
    Label5: TLabel;
    EdMCEP: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    BtnConfirmar: TBitBtn;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1CPF: TStringField;
    ClientDataSet1Identidade: TStringField;
    ClientDataSet1Nome: TStringField;
    ClientDataSet1Email: TStringField;
    ClientDataSet1Telefone: TStringField;
    ClientDataSet1CEP: TStringField;
    ClientDataSet1Logradouro: TStringField;
    ClientDataSet1Numero: TStringField;
    ClientDataSet1Cidade: TStringField;
    ClientDataSet1Bairro: TStringField;
    ClientDataSet1Estado: TStringField;
    ClientDataSet1Pais: TStringField;

    procedure EdMCEPExit(Sender: TObject);
    function TiraMascaraCEP(CEP:STRING):STRING;
    procedure BtnConfirmarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}



procedure TFrmCadastro.BtnConfirmarClick(Sender: TObject);
var
caminho: string;
begin

  if EdNome.Text = '' then
  begin
      Application.MessageBox('Favor Preencher o Campo Nome Completo!','Aten��o!',MB_OK+MB_ICONWARNING);
      EdNome.SetFocus;
      exit;
  end;

  try
     caminho                        := ExtractFilePath(GetCurrentDir);

     ClientDataSet1.Close;
     ClientDataSet1.CreateDataSet;
     ClientDataSet1.Insert;

     ClientDataSet1CPF.Value        := EdMCPF.Text;
     ClientDataSet1Identidade.Value := EdMCPF.Text;
     ClientDataSet1Nome.Value       := EdNome.Text;
     ClientDataSet1Email.Value      := EdEmail.Text;
     ClientDataSet1Telefone.Value   := EdMTelefone.Text;
     ClientDataSet1CEP.Value        := EdMCEP.Text;
     ClientDataSet1Logradouro.Value := EdLogradouro.Text;
     ClientDataSet1Numero.Value     := EdNumero.Text;
     ClientDataSet1Cidade.Value     := EdCidade.Text;
     ClientDataSet1Bairro.Value     := EdBairro.Text;
     ClientDataSet1Estado.Value     := EdEstado.Text;
     ClientDataSet1Pais.Value       := EdPais.Text;

     ClientDataSet1.SaveToFile(caminho+'/XML/'+EdNome.Text+'.xml');

     Application.MessageBox('Arquivo XML exportado com Sucesso!','Aten��o!',MB_OK);



   except
   on e: Exception do
     begin
        Application.MessageBox(pchar('Ocorreu o erro: '+e.Message),'Aten��o!',MB_OK+MB_ICONWARNING);
        exit;
     end;
   end;


end;

procedure TFrmCadastro.EdMCEPExit(Sender: TObject);
var
 caminho: string;
begin

  try
       caminho := 'https://viacep.com.br/ws/'+TiraMascaraCEP(EdMCEP.Text)+'/json/';
       DtmAPI.RESTClient1.BaseURL :=  caminho;
       DtmAPI.RESTRequest1.Execute;


       EdLogradouro.Text          := DtmAPI.FDMemTable1.FieldByName('Logradouro').AsString;
       EdBairro.Text              := DtmAPI.FDMemTable1.FieldByName('Bairro').AsString;
       EdComplemento.Text         := DtmAPI.FDMemTable1.FieldByName('Complemento').AsString;
       EdCidade.Text              := DtmAPI.FDMemTable1.FieldByName('Localidade').AsString;
       EdEstado.Text              := DtmAPI.FDMemTable1.FieldByName('uf').AsString;

  except

     on e : Exception do
     begin
       Application.MessageBox('Favor Preencher com um CEP V�lido!','Aten��o!',MB_OK+MB_ICONWARNING);
       EdMCEP.SetFocus;
       exit;
     end;

  end;

end;

function TFrmCadastro.TiraMascaraCEP(CEP:STRING):STRING;
VAR
 REG_SUBREG, SET_SUBSET_DIVSUBSET, IND_DIST : STRING;
begin

     REG_SUBREG           := Copy(CEP,1,2);
     SET_SUBSET_DIVSUBSET := Copy(CEP,4,3);
     IND_DIST             := Copy(CEP,8,3);

     Result := REG_SUBREG+SET_SUBSET_DIVSUBSET+IND_DIST;

end;


end.
