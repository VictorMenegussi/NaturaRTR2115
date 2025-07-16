using ParameterService as service from '../../srv/service';

annotate service.Parameters with @(
    Capabilities.SearchRestrictions: {Searchable: false},
    Capabilities                   : {NavigationRestrictions: {
        $Type               : 'Capabilities.NavigationRestrictionsType',
        RestrictedProperties: [{
            $Type             : 'Capabilities.NavigationPropertyRestriction',
            NavigationProperty: DraftAdministrativeData,
            FilterRestrictions: {
                $Type     : 'Capabilities.FilterRestrictionsType',
                Filterable: false
            }
        }, ]
    }, },
    UI.HeaderInfo                  : {
        TypeName      : '{@i18n>app_parametros_fi_title}',
        TypeNamePlural: '{@i18n>app_parametros_fi_title}',
        Title         : {Value: '{@i18n>app_parametros_fi_title}'},
    },
    UI.FieldGroup #GeneratedGroup  : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>empresa}',
                Value: empresa,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>escopo}',
                Value: escopo_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>processo}',
                Value: processo_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>periodicidade}',
                Value: periodicidade_ID,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>tipoDocumento}',
                Value: tipoDocumento,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>chaveLancamentoDebito}',
                Value: chaveLancamentoDebito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>contaContabilDebito}',
                Value: contaContabilDebito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>chaveLancamentoCredito}',
                Value: chaveLancamentoCredito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>contaContabilCredito}',
                Value: contaContabilCredito,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>bloqueioPgto}',
                Value: bloqueioPgto,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>centroCusto}',
                Value: centroCusto,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>email}',
                Value: email,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>emailSuccess}',
                Value: emailSuccess,
            },
            {
                $Type: 'UI.DataField',
                Label: '{@i18n>emailError}',
                Value: emailError,
            },
        ],
    },
    UI.Facets                      : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : '',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                    : [
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>empresa}',
            Value: empresa,
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>escopo}',
            ![@HTML5.CssDefaults]: {width: '10rem'},
            Value                : escopo_ID,
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>processo}',
            ![@HTML5.CssDefaults]: {width: '10rem'},
            Value                : processo_ID,
        },
        {
            $Type                : 'UI.DataField',
            Label                : '{@i18n>periodicidade}',
            ![@HTML5.CssDefaults]: {width: '10rem'},
            Value                : periodicidade_ID,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>tipoDocumento}',
            Value: tipoDocumento,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>chaveLancamentoDebito}',
            Value: chaveLancamentoDebito,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>contaContabilDebito}',
            Value: contaContabilDebito,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>chaveLancamentoCredito}',
            Value: chaveLancamentoCredito,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>contaContabilCredito}',
            Value: contaContabilCredito,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>bloqueioPgto}',
            Value: bloqueioPgto,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>centroCusto}',
            Value: centroCusto,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>email}',
            Value: email,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>emailSuccess}',
            Value: emailSuccess,
        },
        {
            $Type: 'UI.DataField',
            Label: '{@i18n>emailError}',
            Value: emailError,
        },
    ],
    UI.SelectionFields             : [
        empresa,
        escopo_ID,
        processo_ID,
        periodicidade_ID
    ],
);

annotate service.Parameters with {
    empresa                @(
        title : '{@i18n>empresa}',
        Common: {
            FilterDefaultValue: 'EC30', //opcional
            ValueList         : {
                $Type         : 'Common.ValueListType', //n muda
                CollectionPath: 'A_CompanyCodeVH', //aponta para a view de ajuda
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut', //não muda é o código
                        LocalDataProperty: empresa, //é o campo codigo que fica na entity do fiori
                        ValueListProperty: 'CompanyCode', //é o value help do codigo
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly', //não muda é a descrição
                        ValueListProperty: 'CompanyCodeName', //é a descrição do value help
                    },
                ],
            }
        }
    );
    escopo                 @(
        title : '{@i18n>escopo}',
        Common: {
            ValueListWithFixedValues: true,
            Text                    : escopo.description,
            TextArrangement         : #TextOnly,
            ValueList               : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'EscopoValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: escopo_ID,
                        ValueListProperty: 'ID',
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description',
                    },
                ],
            }
        }
    );
    processo               @(
        title : '{@i18n>processo}',
        Common: {
            ValueListWithFixedValues: true,
            Text                    : processo.description,
            TextArrangement         : #TextOnly,
            ValueList               : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'ProcessoValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: processo_ID,
                        ValueListProperty: 'ID',
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description',
                    },
                ],
            }
        }
    );
    periodicidade          @(
        title : '{@i18n>periodicidade}',
        Common: {
            ValueListWithFixedValues: true,
            Text                    : periodicidade.description,
            TextArrangement         : #TextOnly,
            ValueList               : {
                $Type         : 'Common.ValueListType',
                CollectionPath: 'PeriodicidadeValues',
                Parameters    : [
                    {
                        $Type            : 'Common.ValueListParameterInOut',
                        LocalDataProperty: periodicidade_ID,
                        ValueListProperty: 'ID',
                    },
                    {
                        $Type            : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty: 'description',
                    },
                ],
            }
        }
    );
    centroCusto            @(
        title : '{@i18n>centroCusto}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_CostCenterVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: centroCusto,
                    ValueListProperty: 'CostCenter',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'CostCenter_Text',
                },
            ],
        }}
    );
    tipoDocumento          @(
        title : '{@i18n>tipoDocumento}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_DocumentTypeVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: tipoDocumento,
                    ValueListProperty: 'AccountingDocumentType',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'AccountingDocumentType_Text',
                },
            ],
        }}
    );
    chaveLancamentoDebito  @(
        title : '{@i18n>chaveLancamentoDebito}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_PostingKeyVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: chaveLancamentoDebito,
                    ValueListProperty: 'PostingKey',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PostingKey_Text',
                },
            ],
        }}
    );
    contaContabilDebito    @(
        title : '{@i18n>contaContabilDebito}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_GLAccountVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: contaContabilDebito,
                    ValueListProperty: 'GLAccount',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'GLAccount_Text',
                },
            ],
        }}
    );
    chaveLancamentoCredito @(
        title : '{@i18n>chaveLancamentoCredito}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_PostingKeyVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: chaveLancamentoCredito,
                    ValueListProperty: 'PostingKey',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'PostingKey_Text',
                },
            ],
        }}
    );
    contaContabilCredito   @(
        title : '{@i18n>contaContabilCredito}',
        Common: {ValueList: {
            $Type         : 'Common.ValueListType',
            CollectionPath: 'A_GLAccountVH',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: contaContabilCredito,
                    ValueListProperty: 'GLAccount',
                },
                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'GLAccount_Text',
                },
            ],
        }}
    );

};

annotate service.EscopoValues with {
    ID @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast
    };
};

annotate service.ProcessoValues with {
    ID @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast
    };
};

annotate service.PeriodicidadeValues with {
    ID @Common.Text : {
        $value : description,
        ![@UI.TextArrangement] : #TextLast
    };
};

annotate service.A_CompanyCodeVH with {
    @title: '{@i18n>code}'
    CompanyCode;
    @title: '{@i18n>description}'
    CompanyCodeName;
};

annotate service.A_CostCenterVH with {
    @title: '{@i18n>code}'
    CostCenter;
    @title: '{@i18n>description}'
    CostCenter_Text;
};

annotate service.A_DocumentTypeVH with {
    @title: '{@i18n>code}'
    AccountingDocumentType;
    @title: '{@i18n>description}'
    AccountingDocumentType_Text;
};

annotate service.A_PostingKeyVH with {
    @title: '{@i18n>code}'
    PostingKey;
    @title: '{@i18n>description}'
    PostingKey_Text;
};

annotate service.A_GLAccountVH with {
    @title: '{@i18n>code}'
    GLAccount;    
    @title: '{@i18n>description}'
    GLAccount_Text;
};
