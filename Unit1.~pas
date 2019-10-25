unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdMessage, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, ComCtrls, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    StatusBar1: TStatusBar;
    OpenDialog1: TOpenDialog;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    IdMessage1: TIdMessage;
    Memo2: TMemo;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  i : integer;
  IdMessage : TIdMessage;
begin
      if OpenDialog1.Execute then
        begin
            for i:=0 to OpenDialog1.Files.Count -1 do
              if (ListBox1.Items.IndexOf(OpenDialog1.Files[i]) = -1) then
              ListBox1.Items.Add(OpenDialog1.Files[i]);
        end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
  var
  //objetos necessários para o funcionamento
    IdSSLIOHandlerSocket : TIdSSLIOHandlerSocket;
    IdSMTP : TIdSMTP;
    IdMessage : TIdMessage;
    CaminhoAnexo: string;
    i : integer;
begin
  //instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocket.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
  //configuração do SSL
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;
  //configuração do SMTP
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.AuthenticationType := atLogin;
    IdSMTP.Port := StrToInt(ComboBox1.Text);
    IdSMTP.Host := Edit6.Text;
    IdSMTP.Username := Edit7.Text;
    IdSMTP.Password := Edit8.Text;
  //tentativa de conexão e autenticação
      try
        IdSMTP.Connect;
        IdSMTP.Authenticate;
      Except
        on e:Exception do
        begin
          MessageDlg('Erro na conexão e/ou autenticação' + e.Message,mtWarning, [mbOK],0);
          exit;
        end;
      end;
  //configuração da mensagem
  IdMessage.From.Address := Edit2.Text;
  IdMessage.From.Name := 'Nome do Remetente';
  IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
  IdMessage.Recipients.EMailAddresses := Edit3.Text;
  IdMessage.CCList.EMailAddresses := Edit4.Text;
  IdMessage.BccList.EMailAddresses := Edit5.Text;
  IdMessage.Subject := Edit1.Text;
  IdMessage.Body.Text := Memo2.Lines.Text;
  //anexo da mensagem(opcional)
  If ListBox1.Items.Count > 0 then
    begin
      for i:= 0 to ListBox1.Items.Count - 1 do
        begin
             if FileExists(ListBox1.Items[i]) then
             TIdAttachment.Create(IdMessage.MessageParts,ListBox1.Items[i]);
        end;
    end;
  //envio da mensagem
  try
    IdSMTP.Send(IdMessage);
    MessageDlg('Mensagem enviada com sucesso!!', mtInformation, [mbOK],0);
  except
    on e:Exception do
      MessageDlg('Erro ao enviar mendagem:' + e.Message, mtWarning,[mbOK],0);
    end;
  finally
//liberação dos objetos da memoria
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;

end;

end.
