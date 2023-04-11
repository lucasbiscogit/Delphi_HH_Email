object DMRelatorios: TDMRelatorios
  Height = 439
  Width = 588
  PixelsPerInch = 96
  object ADOQWRelPerfilTodos: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VW_PERFILTODOS')
    Left = 116
    Top = 104
    object ADOQWRelPerfilTodosID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQWRelPerfilTodosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOQWRelPerfilTodosDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOQWRelPerfilTodosDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOQWRelPerfilTodosDESC_PERFIL: TStringField
      FieldName = 'DESC_PERFIL'
      Size = 100
    end
    object ADOQWRelPerfilTodosPERFIL_MENU: TStringField
      FieldName = 'PERFIL_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_INC: TStringField
      FieldName = 'PERFIL_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_ALT: TStringField
      FieldName = 'PERFIL_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_EXC: TStringField
      FieldName = 'PERFIL_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_MAR: TStringField
      FieldName = 'PERFIL_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_IMP: TStringField
      FieldName = 'PERFIL_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_INA: TStringField
      FieldName = 'PERFIL_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosPERFIL_HAB: TStringField
      FieldName = 'PERFIL_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_MENU: TStringField
      FieldName = 'USUARIO_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_INC: TStringField
      FieldName = 'USUARIO_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_ALT: TStringField
      FieldName = 'USUARIO_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_EXC: TStringField
      FieldName = 'USUARIO_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_MAR: TStringField
      FieldName = 'USUARIO_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_IMP: TStringField
      FieldName = 'USUARIO_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_INA: TStringField
      FieldName = 'USUARIO_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosUSUARIO_HAB: TStringField
      FieldName = 'USUARIO_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosOCUTLTAR_C_OCULTO: TStringField
      FieldName = 'OCUTLTAR_C_OCULTO'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOGOFF_MENU: TStringField
      FieldName = 'LOGOFF_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosAJUDA_MENU: TStringField
      FieldName = 'AJUDA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosSOBRE_MENU: TStringField
      FieldName = 'SOBRE_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosERRO_SISTEMA: TStringField
      FieldName = 'ERRO_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_INICIAR: TStringField
      FieldName = 'LOG_INICIAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_ATIVIDADES: TStringField
      FieldName = 'LOG_ATIVIDADES'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_INC: TStringField
      FieldName = 'LOG_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_ALT: TStringField
      FieldName = 'LOG_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_EXC: TStringField
      FieldName = 'LOG_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_MAR: TStringField
      FieldName = 'LOG_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_IMP: TStringField
      FieldName = 'LOG_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_INA: TStringField
      FieldName = 'LOG_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLOG_HAB: TStringField
      FieldName = 'LOG_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosRELATORIOS_MENU: TStringField
      FieldName = 'RELATORIOS_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosRELATORIOS_PERFIL_BASICO: TStringField
      FieldName = 'RELATORIOS_PERFIL_BASICO'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosRELATORIOS_PERFIL_COMP: TStringField
      FieldName = 'RELATORIOS_PERFIL_COMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_MENU: TStringField
      FieldName = 'CADCHACA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_INC: TStringField
      FieldName = 'CADCHACA_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_ALT: TStringField
      FieldName = 'CADCHACA_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_EXC: TStringField
      FieldName = 'CADCHACA_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_MAR: TStringField
      FieldName = 'CADCHACA_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_IMP: TStringField
      FieldName = 'CADCHACA_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_INA: TStringField
      FieldName = 'CADCHACA_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCADCHACA_HAB: TStringField
      FieldName = 'CADCHACA_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_MENU: TStringField
      FieldName = 'CONTAGERAL_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_INC: TStringField
      FieldName = 'CONTAGERAL_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_ALT: TStringField
      FieldName = 'CONTAGERAL_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_EXC: TStringField
      FieldName = 'CONTAGERAL_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_MAR: TStringField
      FieldName = 'CONTAGERAL_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_IMP: TStringField
      FieldName = 'CONTAGERAL_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_INA: TStringField
      FieldName = 'CONTAGERAL_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONTAGERAL_HAB: TStringField
      FieldName = 'CONTAGERAL_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_MENU: TStringField
      FieldName = 'CONFIGURACAO_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_INC: TStringField
      FieldName = 'CONFIGURACAO_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_ALT: TStringField
      FieldName = 'CONFIGURACAO_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_EXC: TStringField
      FieldName = 'CONFIGURACAO_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_MAR: TStringField
      FieldName = 'CONFIGURACAO_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_IMP: TStringField
      FieldName = 'CONFIGURACAO_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_INA: TStringField
      FieldName = 'CONFIGURACAO_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosCONFIGURACAO_HAB: TStringField
      FieldName = 'CONFIGURACAO_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_MENU: TStringField
      FieldName = 'LEITURACHACARA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_INC: TStringField
      FieldName = 'LEITURACHACARA_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_ALT: TStringField
      FieldName = 'LEITURACHACARA_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_EXC: TStringField
      FieldName = 'LEITURACHACARA_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_MAR: TStringField
      FieldName = 'LEITURACHACARA_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_IMP: TStringField
      FieldName = 'LEITURACHACARA_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_INA: TStringField
      FieldName = 'LEITURACHACARA_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosLEITURACHACARA_HAB: TStringField
      FieldName = 'LEITURACHACARA_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_MENU: TStringField
      FieldName = 'GERARCONTAS_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_INC: TStringField
      FieldName = 'GERARCONTAS_INC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_ALT: TStringField
      FieldName = 'GERARCONTAS_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_EXC: TStringField
      FieldName = 'GERARCONTAS_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_MAR: TStringField
      FieldName = 'GERARCONTAS_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_IMP: TStringField
      FieldName = 'GERARCONTAS_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_INA: TStringField
      FieldName = 'GERARCONTAS_INA'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosGERARCONTAS_HAB: TStringField
      FieldName = 'GERARCONTAS_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOQWRelPerfilTodosRELATORIOS_CONFIGERAL: TStringField
      FieldName = 'RELATORIOS_CONFIGERAL'
      FixedChar = True
      Size = 1
    end
  end
  object ADOPerfilTodosC: TADOQuery
    Active = True
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM VW_PERFILTODOS')
    Left = 220
    Top = 104
    object ADOPerfilTodosCID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOPerfilTodosCSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOPerfilTodosCDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOPerfilTodosCDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOPerfilTodosCDESC_PERFIL: TStringField
      FieldName = 'DESC_PERFIL'
      Size = 100
    end
    object ADOPerfilTodosCPERFIL_MENU: TStringField
      FieldName = 'PERFIL_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_INC: TStringField
      FieldName = 'PERFIL_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_ALT: TStringField
      FieldName = 'PERFIL_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_EXC: TStringField
      FieldName = 'PERFIL_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_MAR: TStringField
      FieldName = 'PERFIL_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_IMP: TStringField
      FieldName = 'PERFIL_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_INA: TStringField
      FieldName = 'PERFIL_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCPERFIL_HAB: TStringField
      FieldName = 'PERFIL_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_MENU: TStringField
      FieldName = 'USUARIO_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_INC: TStringField
      FieldName = 'USUARIO_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_ALT: TStringField
      FieldName = 'USUARIO_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_EXC: TStringField
      FieldName = 'USUARIO_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_MAR: TStringField
      FieldName = 'USUARIO_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_IMP: TStringField
      FieldName = 'USUARIO_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_INA: TStringField
      FieldName = 'USUARIO_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCUSUARIO_HAB: TStringField
      FieldName = 'USUARIO_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCOCUTLTAR_C_OCULTO: TStringField
      FieldName = 'OCUTLTAR_C_OCULTO'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOGOFF_MENU: TStringField
      FieldName = 'LOGOFF_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCAJUDA_MENU: TStringField
      FieldName = 'AJUDA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCSOBRE_MENU: TStringField
      FieldName = 'SOBRE_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCERRO_SISTEMA: TStringField
      FieldName = 'ERRO_SISTEMA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_INICIAR: TStringField
      FieldName = 'LOG_INICIAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_ATIVIDADES: TStringField
      FieldName = 'LOG_ATIVIDADES'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_INC: TStringField
      FieldName = 'LOG_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_ALT: TStringField
      FieldName = 'LOG_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_EXC: TStringField
      FieldName = 'LOG_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_MAR: TStringField
      FieldName = 'LOG_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_IMP: TStringField
      FieldName = 'LOG_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_INA: TStringField
      FieldName = 'LOG_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLOG_HAB: TStringField
      FieldName = 'LOG_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCRELATORIOS_MENU: TStringField
      FieldName = 'RELATORIOS_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCRELATORIOS_PERFIL_BASICO: TStringField
      FieldName = 'RELATORIOS_PERFIL_BASICO'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCRELATORIOS_PERFIL_COMP: TStringField
      FieldName = 'RELATORIOS_PERFIL_COMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_MENU: TStringField
      FieldName = 'CADCHACA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_INC: TStringField
      FieldName = 'CADCHACA_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_ALT: TStringField
      FieldName = 'CADCHACA_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_EXC: TStringField
      FieldName = 'CADCHACA_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_MAR: TStringField
      FieldName = 'CADCHACA_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_IMP: TStringField
      FieldName = 'CADCHACA_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_INA: TStringField
      FieldName = 'CADCHACA_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCADCHACA_HAB: TStringField
      FieldName = 'CADCHACA_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_MENU: TStringField
      FieldName = 'CONTAGERAL_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_INC: TStringField
      FieldName = 'CONTAGERAL_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_ALT: TStringField
      FieldName = 'CONTAGERAL_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_EXC: TStringField
      FieldName = 'CONTAGERAL_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_MAR: TStringField
      FieldName = 'CONTAGERAL_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_IMP: TStringField
      FieldName = 'CONTAGERAL_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_INA: TStringField
      FieldName = 'CONTAGERAL_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONTAGERAL_HAB: TStringField
      FieldName = 'CONTAGERAL_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_MENU: TStringField
      FieldName = 'CONFIGURACAO_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_INC: TStringField
      FieldName = 'CONFIGURACAO_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_ALT: TStringField
      FieldName = 'CONFIGURACAO_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_EXC: TStringField
      FieldName = 'CONFIGURACAO_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_MAR: TStringField
      FieldName = 'CONFIGURACAO_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_IMP: TStringField
      FieldName = 'CONFIGURACAO_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_INA: TStringField
      FieldName = 'CONFIGURACAO_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCCONFIGURACAO_HAB: TStringField
      FieldName = 'CONFIGURACAO_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_MENU: TStringField
      FieldName = 'LEITURACHACARA_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_INC: TStringField
      FieldName = 'LEITURACHACARA_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_ALT: TStringField
      FieldName = 'LEITURACHACARA_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_EXC: TStringField
      FieldName = 'LEITURACHACARA_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_MAR: TStringField
      FieldName = 'LEITURACHACARA_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_IMP: TStringField
      FieldName = 'LEITURACHACARA_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_INA: TStringField
      FieldName = 'LEITURACHACARA_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCLEITURACHACARA_HAB: TStringField
      FieldName = 'LEITURACHACARA_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_MENU: TStringField
      FieldName = 'GERARCONTAS_MENU'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_INC: TStringField
      FieldName = 'GERARCONTAS_INC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_ALT: TStringField
      FieldName = 'GERARCONTAS_ALT'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_EXC: TStringField
      FieldName = 'GERARCONTAS_EXC'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_MAR: TStringField
      FieldName = 'GERARCONTAS_MAR'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_IMP: TStringField
      FieldName = 'GERARCONTAS_IMP'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_INA: TStringField
      FieldName = 'GERARCONTAS_INA'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCGERARCONTAS_HAB: TStringField
      FieldName = 'GERARCONTAS_HAB'
      FixedChar = True
      Size = 1
    end
    object ADOPerfilTodosCRELATORIOS_CONFIGERAL: TStringField
      FieldName = 'RELATORIOS_CONFIGERAL'
      FixedChar = True
      Size = 1
    end
  end
  object ADOQRelConfigGeral: TADOQuery
    Active = True
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from VW_CONFIGURACAOGERALTD')
    Left = 328
    Top = 104
    object ADOQRelConfigGeralID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQRelConfigGeralDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOQRelConfigGeralDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOQRelConfigGeralDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOQRelConfigGeralVLTXSERVICO: TBCDField
      FieldName = 'VLTXSERVICO'
      Precision = 12
      Size = 2
    end
    object ADOQRelConfigGeralVLTXAGUA: TBCDField
      FieldName = 'VLTXAGUA'
      Precision = 12
      Size = 2
    end
    object ADOQRelConfigGeralINATIVO: TStringField
      FieldName = 'INATIVO'
      ReadOnly = True
      Size = 3
    end
    object ADOQRelConfigGeralSTATUS: TStringField
      FieldName = 'STATUS'
      ReadOnly = True
      Size = 12
    end
  end
end
