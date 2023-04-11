unit U_DMRelatorios;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDMRelatorios = class(TDataModule)
    ADOQWRelPerfilTodos: TADOQuery;
    ADOPerfilTodosC: TADOQuery;
    ADOQRelConfigGeral: TADOQuery;
    ADOQWRelPerfilTodosID: TAutoIncField;
    ADOQWRelPerfilTodosSTATUS: TStringField;
    ADOQWRelPerfilTodosINATIVO: TStringField;
    ADOQWRelPerfilTodosDATA_INC: TDateTimeField;
    ADOQWRelPerfilTodosDATA_ALT: TDateTimeField;
    ADOQWRelPerfilTodosDATA_HAB: TDateTimeField;
    ADOQWRelPerfilTodosDESC_PERFIL: TStringField;
    ADOQWRelPerfilTodosPERFIL_MENU: TStringField;
    ADOQWRelPerfilTodosPERFIL_INC: TStringField;
    ADOQWRelPerfilTodosPERFIL_ALT: TStringField;
    ADOQWRelPerfilTodosPERFIL_EXC: TStringField;
    ADOQWRelPerfilTodosPERFIL_MAR: TStringField;
    ADOQWRelPerfilTodosPERFIL_IMP: TStringField;
    ADOQWRelPerfilTodosPERFIL_INA: TStringField;
    ADOQWRelPerfilTodosPERFIL_HAB: TStringField;
    ADOQWRelPerfilTodosUSUARIO_MENU: TStringField;
    ADOQWRelPerfilTodosUSUARIO_INC: TStringField;
    ADOQWRelPerfilTodosUSUARIO_ALT: TStringField;
    ADOQWRelPerfilTodosUSUARIO_EXC: TStringField;
    ADOQWRelPerfilTodosUSUARIO_MAR: TStringField;
    ADOQWRelPerfilTodosUSUARIO_IMP: TStringField;
    ADOQWRelPerfilTodosUSUARIO_INA: TStringField;
    ADOQWRelPerfilTodosUSUARIO_HAB: TStringField;
    ADOQWRelPerfilTodosOCUTLTAR_C_OCULTO: TStringField;
    ADOQWRelPerfilTodosLOGOFF_MENU: TStringField;
    ADOQWRelPerfilTodosAJUDA_MENU: TStringField;
    ADOQWRelPerfilTodosSOBRE_MENU: TStringField;
    ADOQWRelPerfilTodosERRO_SISTEMA: TStringField;
    ADOQWRelPerfilTodosLOG_INICIAR: TStringField;
    ADOQWRelPerfilTodosLOG_ATIVIDADES: TStringField;
    ADOQWRelPerfilTodosLOG_INC: TStringField;
    ADOQWRelPerfilTodosLOG_ALT: TStringField;
    ADOQWRelPerfilTodosLOG_EXC: TStringField;
    ADOQWRelPerfilTodosLOG_MAR: TStringField;
    ADOQWRelPerfilTodosLOG_IMP: TStringField;
    ADOQWRelPerfilTodosLOG_INA: TStringField;
    ADOQWRelPerfilTodosLOG_HAB: TStringField;
    ADOQWRelPerfilTodosRELATORIOS_MENU: TStringField;
    ADOQWRelPerfilTodosRELATORIOS_PERFIL_BASICO: TStringField;
    ADOQWRelPerfilTodosRELATORIOS_PERFIL_COMP: TStringField;
    ADOPerfilTodosCID: TAutoIncField;
    ADOPerfilTodosCSTATUS: TStringField;
    ADOPerfilTodosCINATIVO: TStringField;
    ADOPerfilTodosCDATA_INC: TDateTimeField;
    ADOPerfilTodosCDATA_ALT: TDateTimeField;
    ADOPerfilTodosCDATA_HAB: TDateTimeField;
    ADOPerfilTodosCDESC_PERFIL: TStringField;
    ADOPerfilTodosCPERFIL_MENU: TStringField;
    ADOPerfilTodosCPERFIL_INC: TStringField;
    ADOPerfilTodosCPERFIL_ALT: TStringField;
    ADOPerfilTodosCPERFIL_EXC: TStringField;
    ADOPerfilTodosCPERFIL_MAR: TStringField;
    ADOPerfilTodosCPERFIL_IMP: TStringField;
    ADOPerfilTodosCPERFIL_INA: TStringField;
    ADOPerfilTodosCPERFIL_HAB: TStringField;
    ADOPerfilTodosCUSUARIO_MENU: TStringField;
    ADOPerfilTodosCUSUARIO_INC: TStringField;
    ADOPerfilTodosCUSUARIO_ALT: TStringField;
    ADOPerfilTodosCUSUARIO_EXC: TStringField;
    ADOPerfilTodosCUSUARIO_MAR: TStringField;
    ADOPerfilTodosCUSUARIO_IMP: TStringField;
    ADOPerfilTodosCUSUARIO_INA: TStringField;
    ADOPerfilTodosCUSUARIO_HAB: TStringField;
    ADOPerfilTodosCOCUTLTAR_C_OCULTO: TStringField;
    ADOPerfilTodosCLOGOFF_MENU: TStringField;
    ADOPerfilTodosCAJUDA_MENU: TStringField;
    ADOPerfilTodosCSOBRE_MENU: TStringField;
    ADOPerfilTodosCERRO_SISTEMA: TStringField;
    ADOPerfilTodosCLOG_INICIAR: TStringField;
    ADOPerfilTodosCLOG_ATIVIDADES: TStringField;
    ADOPerfilTodosCLOG_INC: TStringField;
    ADOPerfilTodosCLOG_ALT: TStringField;
    ADOPerfilTodosCLOG_EXC: TStringField;
    ADOPerfilTodosCLOG_MAR: TStringField;
    ADOPerfilTodosCLOG_IMP: TStringField;
    ADOPerfilTodosCLOG_INA: TStringField;
    ADOPerfilTodosCLOG_HAB: TStringField;
    ADOPerfilTodosCRELATORIOS_MENU: TStringField;
    ADOPerfilTodosCRELATORIOS_PERFIL_BASICO: TStringField;
    ADOPerfilTodosCRELATORIOS_PERFIL_COMP: TStringField;
    ADOPerfilTodosCCADCHACA_MENU: TStringField;
    ADOPerfilTodosCCADCHACA_INC: TStringField;
    ADOPerfilTodosCCADCHACA_ALT: TStringField;
    ADOPerfilTodosCCADCHACA_EXC: TStringField;
    ADOPerfilTodosCCADCHACA_MAR: TStringField;
    ADOPerfilTodosCCADCHACA_IMP: TStringField;
    ADOPerfilTodosCCADCHACA_INA: TStringField;
    ADOPerfilTodosCCADCHACA_HAB: TStringField;
    ADOPerfilTodosCCONTAGERAL_MENU: TStringField;
    ADOPerfilTodosCCONTAGERAL_INC: TStringField;
    ADOPerfilTodosCCONTAGERAL_ALT: TStringField;
    ADOPerfilTodosCCONTAGERAL_EXC: TStringField;
    ADOPerfilTodosCCONTAGERAL_MAR: TStringField;
    ADOPerfilTodosCCONTAGERAL_IMP: TStringField;
    ADOPerfilTodosCCONTAGERAL_INA: TStringField;
    ADOPerfilTodosCCONTAGERAL_HAB: TStringField;
    ADOPerfilTodosCCONFIGURACAO_MENU: TStringField;
    ADOPerfilTodosCCONFIGURACAO_INC: TStringField;
    ADOPerfilTodosCCONFIGURACAO_ALT: TStringField;
    ADOPerfilTodosCCONFIGURACAO_EXC: TStringField;
    ADOPerfilTodosCCONFIGURACAO_MAR: TStringField;
    ADOPerfilTodosCCONFIGURACAO_IMP: TStringField;
    ADOPerfilTodosCCONFIGURACAO_INA: TStringField;
    ADOPerfilTodosCCONFIGURACAO_HAB: TStringField;
    ADOPerfilTodosCLEITURACHACARA_MENU: TStringField;
    ADOPerfilTodosCLEITURACHACARA_INC: TStringField;
    ADOPerfilTodosCLEITURACHACARA_ALT: TStringField;
    ADOPerfilTodosCLEITURACHACARA_EXC: TStringField;
    ADOPerfilTodosCLEITURACHACARA_MAR: TStringField;
    ADOPerfilTodosCLEITURACHACARA_IMP: TStringField;
    ADOPerfilTodosCLEITURACHACARA_INA: TStringField;
    ADOPerfilTodosCLEITURACHACARA_HAB: TStringField;
    ADOPerfilTodosCGERARCONTAS_MENU: TStringField;
    ADOPerfilTodosCGERARCONTAS_INC: TStringField;
    ADOPerfilTodosCGERARCONTAS_ALT: TStringField;
    ADOPerfilTodosCGERARCONTAS_EXC: TStringField;
    ADOPerfilTodosCGERARCONTAS_MAR: TStringField;
    ADOPerfilTodosCGERARCONTAS_IMP: TStringField;
    ADOPerfilTodosCGERARCONTAS_INA: TStringField;
    ADOPerfilTodosCGERARCONTAS_HAB: TStringField;
    ADOPerfilTodosCRELATORIOS_CONFIGERAL: TStringField;
    ADOQWRelPerfilTodosCADCHACA_MENU: TStringField;
    ADOQWRelPerfilTodosCADCHACA_INC: TStringField;
    ADOQWRelPerfilTodosCADCHACA_ALT: TStringField;
    ADOQWRelPerfilTodosCADCHACA_EXC: TStringField;
    ADOQWRelPerfilTodosCADCHACA_MAR: TStringField;
    ADOQWRelPerfilTodosCADCHACA_IMP: TStringField;
    ADOQWRelPerfilTodosCADCHACA_INA: TStringField;
    ADOQWRelPerfilTodosCADCHACA_HAB: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_MENU: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_INC: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_ALT: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_EXC: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_MAR: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_IMP: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_INA: TStringField;
    ADOQWRelPerfilTodosCONTAGERAL_HAB: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_MENU: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_INC: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_ALT: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_EXC: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_MAR: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_IMP: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_INA: TStringField;
    ADOQWRelPerfilTodosCONFIGURACAO_HAB: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_MENU: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_INC: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_ALT: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_EXC: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_MAR: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_IMP: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_INA: TStringField;
    ADOQWRelPerfilTodosLEITURACHACARA_HAB: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_MENU: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_INC: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_ALT: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_EXC: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_MAR: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_IMP: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_INA: TStringField;
    ADOQWRelPerfilTodosGERARCONTAS_HAB: TStringField;
    ADOQWRelPerfilTodosRELATORIOS_CONFIGERAL: TStringField;
    ADOQRelConfigGeralID: TAutoIncField;
    ADOQRelConfigGeralDATA_ALT: TDateTimeField;
    ADOQRelConfigGeralDATA_HAB: TDateTimeField;
    ADOQRelConfigGeralDATA_INC: TDateTimeField;
    ADOQRelConfigGeralVLTXSERVICO: TBCDField;
    ADOQRelConfigGeralVLTXAGUA: TBCDField;
    ADOQRelConfigGeralINATIVO: TStringField;
    ADOQRelConfigGeralSTATUS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRelatorios: TDMRelatorios;

implementation

uses
  U_DMPrincipal, U_GerarConta;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
