const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { Parameters, A_CompanyCodeVH, A_CostCenterVH, A_DocumentTypeVH, A_GLAccountVH, A_PostingKeyVH} = this.entities;

    this.before('CREATE', Parameters, async (req) => {
        const { empresa, escopo_ID, processo_ID, periodicidade_ID } = req.data;
        const existingRecord = await SELECT.one.from(Parameters).where({
            empresa,
            escopo_ID,
            processo_ID,
            periodicidade_ID
        })
        if (existingRecord) {
            if (req.locale === 'pt') {
                req.error(409, 'Chave Duplicada');
            } else if (req.locale === 'es') {
                req.error(409, 'Clave Duplicada');
            } else {
                req.error(409, 'Duplicate Key');
            }
        }
    });
    this.on('READ', [
        A_CompanyCodeVH,
        A_CostCenterVH,
        A_DocumentTypeVH,
        A_GLAccountVH,
        A_PostingKeyVH
    ], async (request) => {
        try {
            const api = await cds.connect.to('ZFI_API_RTR2115_VH');
            //const result = api.run(SELECT.from(A_CompanyCodeVH))
            const result = await api.run(request.query);
            return result;
        } catch (error) {
            console.log(error);
            return request.reject(error);
        }
    });
});
