using db as db from '../db/schema.cds';
using ZFI_API_RTR2115_VH as valueHelps from '../srv/external/ZFI_API_RTR2115_VH.cds';


@requires: 'authenticated-user'
service ParameterService {
    
    entity Parameters as projection on db.Parameters;        
    entity ProcessoValues as projection on db.ProcessoValues;
    entity PeriodicidadeValues as projection on db.PeriodicidadeValues;
    entity EscopoValues as projection on db.EscopoValues;
    //entity tipoDocumentoValues as projection on db.tipoDocumentoValues;
    //entity chaveLancamentoDebitoValues as projection on db.chaveLancamentoDebitoValues;
    //entity contaContabilDebitoValues as projection on db.contaContabilDebitoValues;
    //entity chaveLancamentoCreditoValues as projection on db.chaveLancamentoCreditoValues;
    //entity contaContabilCreditoValues as projection on db.contaContabilCreditoValues;
    //entity bloqueioPgtoValues as projection on db.bloqueioPgtoValues;
    //entity centroCustoValues as projection on db.centroCustoValues;
}

annotate ParameterService.Parameters with @odata.draft.enabled;

// annotate ParameterService.Parameters {
//     ID @Core.Computed
// }

extend service ParameterService with {
    entity A_CompanyCodeVH as projection on valueHelps.A_CompanyCodeVH;
    entity A_CostCenterVH as projection on valueHelps.A_CostCenterVH;
    entity A_DocumentTypeVH as projection on valueHelps.A_DocumentTypeVH;
    entity A_GLAccountVH as projection on valueHelps.A_GLAccountVH;
    entity A_PostingKeyVH as projection on valueHelps.A_PostingKeyVH;
}
