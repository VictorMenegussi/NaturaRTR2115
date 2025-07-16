/* checksum : bcf89f0b3f506834c5be20cab9553aed */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZFI_API_RTR2115_VH {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Tipo de partida individual'
entity ZFI_API_RTR2115_VH.A_DocumentTypeVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'AccountingDocumentType_Text'
  @sap.label : 'Tipo lçto.contábil'
  @sap.quickinfo : 'Tipo de lançamento contábil'
  key AccountingDocumentType : String(2) not null;
  @sap.label : 'Nome tipo lçto.cont.'
  @sap.quickinfo : 'Nome do tipo de documento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  AccountingDocumentType_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Intervalo numeração'
  @sap.quickinfo : 'Intervalo de numeração'
  AccountingDocumentNumberRange : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categ.taxa câmbio de doc.moeda estr'
  @sap.quickinfo : 'Categ.de taxa de câmbio p/determ.da taxa de câmbio proposta'
  ExchangeRateType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipos conta'
  @sap.quickinfo : 'Tipos de conta permitidos'
  AllowedFinancialAccountTypes : String(5);
  @sap.label : 'Cliente'
  @sap.quickinfo : 'Código: lançamentos no cliente permitidos?'
  CustomerPostingIsAllowed : Boolean;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Empresa'
entity ZFI_API_RTR2115_VH.A_CompanyCodeVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'CompanyCodeName'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome da empresa'
  @sap.quickinfo : 'Denominação de empresa ou sociedade'
  CompanyCodeName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área contab.custos'
  @sap.quickinfo : 'Área de contabilidade de custos'
  ControllingArea : String(4);
  @sap.label : 'Local'
  CityName : String(25);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave do país/região'
  Country : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Moeda'
  @sap.quickinfo : 'Código da moeda'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.label : 'Código de idioma'
  Language : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plano de contas'
  ChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Variante exercício'
  @sap.quickinfo : 'Variante de exercício'
  FiscalYearVariant : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  Company : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área controle créd.'
  @sap.quickinfo : 'Área de controle de créditos'
  CreditControlArea : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plano de contas alternativo'
  @sap.quickinfo : 'Plano de contas alternativo para país/região'
  CountryChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área de AF'
  @sap.quickinfo : 'Área de administração financeira'
  FinancialManagementArea : String(4);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Centro de custo'
entity ZFI_API_RTR2115_VH.A_CostCenterVH {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área contab.custos'
  @sap.quickinfo : 'Área de contabilidade de custos'
  key ControllingArea : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.text : 'CostCenter_Text'
  @sap.label : 'Centro custo'
  @sap.quickinfo : 'Centro de custo'
  key CostCenter : String(10) not null;
  @sap.display.format : 'Date'
  @sap.label : 'Válido até'
  @sap.quickinfo : 'Data de validade final'
  key ValidityEndDate : Date not null;
  @sap.label : 'Nome centro de custo'
  @sap.quickinfo : 'Nome do centro de custo'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CostCenter_Text : String(20);
  @sap.display.format : 'Date'
  @sap.label : 'Válido desde'
  @sap.quickinfo : 'Data de início da validade'
  ValidityStartDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Conta do Razão'
entity ZFI_API_RTR2115_VH.A_GLAccountVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'GLAccount_Text'
  @sap.label : 'Conta do Razão'
  @sap.quickinfo : 'Nº conta do Razão'
  key GLAccount : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Empresa'
  key CompanyCode : String(4) not null;
  @sap.label : 'Nome conta do Razão'
  @sap.quickinfo : 'Nome da conta do Razão'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  GLAccount_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.text : 'ChartOfAccounts_Text'
  @sap.label : 'Plano de contas'
  ChartOfAccounts : String(4);
  @sap.label : 'Descrição do plano de contas'
  @sap.quickinfo : 'Denominação do plano de contas'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChartOfAccounts_Text : String(50);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Grupo de contas'
  @sap.quickinfo : 'Grupo de contas: contas do Razão'
  GLAccountGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº conta do grupo'
  CorporateGroupAccount : String(10);
  @sap.label : 'Bloqueio lçto.'
  @sap.quickinfo : 'Código: conta bloqueada para lançamento?'
  AccountIsBlockedForPosting : Boolean;
  @sap.label : 'Bloq.planejam.'
  @sap.quickinfo : 'Código: conta bloqueada para planejamento?'
  AccountIsBlockedForPlanning : Boolean;
  @sap.label : 'Bloq.criação'
  @sap.quickinfo : 'Código: conta bloqueada para criação?'
  AccountIsBlockedForCreation : Boolean;
  @sap.label : 'Conta do balanço'
  @sap.quickinfo : 'Código: a conta é uma conta do balanço?'
  IsBalanceSheetAccount : Boolean;
  @sap.label : 'Marc.p/elimin.'
  @sap.quickinfo : 'Código: conta marcada para eliminação?'
  AccountIsMarkedForDeletion : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Nº soc.parceira'
  @sap.quickinfo : 'Nº sociedade parceira'
  PartnerCompany : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Área funcional'
  FunctionalArea : String(16);
  @sap.display.format : 'Date'
  @sap.label : 'Dta.criação'
  @sap.quickinfo : 'Data de criação do registro'
  CreationDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta-modelo'
  @sap.quickinfo : 'Nº conta-modelo'
  SampleGLAccount : String(10);
  @sap.label : 'Conta do balanço'
  @sap.quickinfo : 'Código: a conta é uma conta do balanço?'
  IsProfitLossAccount : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo conta do Razão'
  @sap.quickinfo : 'Tipo de uma conta do Razão'
  GLAccountType : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Criado por'
  @sap.quickinfo : 'Nome do responsável que adicionou o objeto'
  CreatedByUser : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tpo.cta.result.'
  @sap.quickinfo : 'Tipo de conta de resultados'
  ProfitLossAccountType : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.coletivo'
  @sap.quickinfo : 'A conta é conta coletiva'
  ReconciliationAccountType : String(1);
  @sap.label : 'Parts.indivs.'
  @sap.quickinfo : 'Código: possível exibir partidas individuais via conta?'
  LineItemDisplayIsEnabled : Boolean;
  @sap.label : 'Administr.PA'
  @sap.quickinfo : 'Código: administração de partidas em aberto?'
  IsOpenItemManaged : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Conta do Razão alternativa'
  @sap.quickinfo : 'Nº alternativo de conta do Razão na empresa'
  AlternativeGLAccount : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chave ordenação'
  @sap.quickinfo : 'Chave para a ordenação por nºs atribuição'
  AcctgDocItmDisplaySequenceRule : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ID externo cta.Razão'
  @sap.quickinfo : 'Número da conta do Razão'
  GLAccountExternal : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plano ctas.altern.'
  @sap.quickinfo : 'Plano de contas alternativo'
  CountryChartOfAccounts : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Autorização'
  @sap.quickinfo : 'Grupo autorizações'
  AuthorizationGroup : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Categoria fiscal'
  @sap.quickinfo : 'Categoria fiscal no mestre de contas'
  TaxCategory : String(2);
  @sap.label : 'Lançável autom.'
  @sap.quickinfo : 'Código: conta só pode ser lançada automaticamente?'
  IsAutomaticallyPosted : Boolean;
  @sap.label : 'Nome da empresa'
  @sap.quickinfo : 'Denominação de empresa ou sociedade'
  CompanyCodeName : String(25);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.content.version : '1'
@sap.label : 'Chave de lançamento'
entity ZFI_API_RTR2115_VH.A_PostingKeyVH {
  @sap.display.format : 'UpperCase'
  @sap.text : 'PostingKey_Text'
  @sap.label : 'Chave de lançamento'
  key PostingKey : String(2) not null;
  @sap.label : 'Nome chave lçto.'
  @sap.quickinfo : 'Nome da chave de lançamento'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PostingKey_Text : String(20);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Cód.débito/crédito'
  @sap.quickinfo : 'Código de débito/crédito'
  DebitCreditCode : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tipo de conta'
  FinancialAccountType : String(1);
  @sap.label : 'Item rel.a vendas'
  @sap.quickinfo : 'Código: item relacionado a vendas'
  IsSalesRelated : Boolean;
  @sap.label : 'Operação pagamento'
  @sap.quickinfo : 'Código: trata-se de uma operação de pagamento ?'
  IsUsedInPaymentTransaction : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Chv.lançto.estorno'
  @sap.quickinfo : 'Chave de lançamento para estorno/lançamento de estorno'
  ReversalPostingKey : String(2);
  @sap.label : 'Razão Especial'
  @sap.quickinfo : 'Código: chave de lançamento para operações do Razão Especial'
  IsSpecialGLTransaction : Boolean;
};

