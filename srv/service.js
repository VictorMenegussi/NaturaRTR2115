const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { Parameters, A_CompanyCodeVH, A_CostCenterVH, A_DocumentTypeVH, A_GLAccountVH, A_PostingKeyVH } = this.entities;


    this.after('READ', Parameters, async (list, req) => {
        const select = req.query.SELECT;
        let escopoexpand = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "escopo"
        );
        let processoexpande = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "processo"
        );
        let periodexpande = select.columns.findIndex(
            ({ expand, ref }) => expand && ref[0] === "processo"
        );
        if (escopoexpand > 0) {
            console.log('escopoexpand is greater than 0');
            list.forEach(line => {
                console.log('Processing line:', line);
                if(line.escopo_ID == 1) {
                    line.escopo = { ID: 1, description: req.locale === 'pt' ? 'Baixa de títulos' : req.locale === 'es' ? 'Baja de títulos' : 'Title write-off' };
                } else if(line.escopo_ID == 2) {
                    line.escopo = { ID: 2, description: req.locale === 'pt' ? 'Gestão de cobrança' : req.locale === 'es' ? 'Gestión de cobranza' : 'Collection management' };
                }              
            })
        }
        if (processoexpande > 0) {
            console.log('processoexpande is greater than 0');
            list.forEach(line => {
                console.log('Processing line:', line);
                if(line.processo_ID == 1) {
                    line.processo = { ID: 1, description: req.locale === 'pt' ? 'Reclassificação' : req.locale === 'es' ? 'Reclasificación' : 'Reclassification' };
                } else if(line.processo_ID == 2) {
                    line.processo = { ID: 2, description: req.locale === 'pt' ? 'Baixa' : req.locale === 'es' ? 'Baja' : 'Write-off' };
                }       
            })
        }
        if (periodexpande > 0) {
            console.log('periodexpande is greater than 0');
            list.forEach(line => {
                console.log('Processing line:', line);
                if(line.periodicidade_ID == 1) {
                    line.periodicidade = { ID: 1, description: req.locale === 'pt' ? 'Diário' : req.locale === 'es' ? 'Diario' : 'Daily' };
                } else if(line.periodicidade_ID == 2) {
                    line.periodicidade = { ID: 2, description: req.locale === 'pt' ? 'Mensal' : req.locale === 'es' ? 'Mensual' : 'Monthly' };
                }           
            })
        }
    })

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

    this.on('READ', 'EscopoValues', (req) => {
        if (req.locale === 'pt') {
            return [
                { ID: 1, description: 'Baixa de títulos' },
                { ID: 2, description: 'Gestão de cobrança' }
            ]
        } else if (req.locale === 'es') {
            return [
                { ID: 1, description: 'Baja de títulos' },
                { ID: 2, description: 'Gestión de cobranza' }
            ]
        } else {
            return [
                { ID: 1, description: 'Title write-off' },
                { ID: 2, description: 'Collection management' }
            ]
        }
    })

    this.on('READ', 'ProcessoValues', (req) => {
        if (req.locale === 'pt') {
            return [
                { ID: 1, description: 'Reclassificação' },
                { ID: 2, description: 'Baixa' }
            ]
        } else if (req.locale === 'es') {
            return [
                { ID: 1, description: 'Reclasificación' },
                { ID: 2, description: 'Baja' }
            ]
        } else {
            return [
                { ID: 1, description: 'Reclassification' },
                { ID: 2, description: 'Write-off' }
            ]
        }
    })

    this.on('READ', 'PeriodicidadeValues', (req) => {
        if (req.locale === 'pt') {
            return [
                { ID: 1, description: 'Diário' },
                { ID: 2, description: 'Mensal' }
            ]
        } else if (req.locale === 'es') {
            return [
                { ID: 1, description: 'Diario' },
                { ID: 2, description: 'Mensual' }
            ]
        } else {
            return [
                { ID: 1, description: 'Daily' },
                { ID: 2, description: 'Monthly' }
            ]
        }
    })

    this.on('READ', 'PeriodicidadeValues', (req) => {
        if (req.locale === 'pt') {
            return [
                { ID: 1, description: 'Diário' },
                { ID: 2, description: 'Mensal' }
            ]
        } else if (req.locale === 'es') {
            return [
                { ID: 1, description: 'Diario' },
                { ID: 2, description: 'Mensual' }
            ]
        } else {
            return [
                { ID: 1, description: 'Daily' },
                { ID: 2, description: 'Monthly' }
            ]
        }
    })
});
