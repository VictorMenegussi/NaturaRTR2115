namespace db;

using {
    cuid,
    managed
} from '@sap/cds/common';

entity Parameters : cuid, managed {
        empresa                : String(4); // BUKRS: Company Code
        escopo                 : Association to EscopoValues; // ZESCP: Scope
        processo               : Association to ProcessoValues; // ZPROCES: Process
        periodicidade          : Association to PeriodicidadeValues; // ZPERIO: Periodicity
        tipoDocumento          : String(2); // BLART: Document Type
        chaveLancamentoDebito  : String(2); // BSCHL: Posting Key
        contaContabilDebito    : String(10); // HKONT: G/L Account
        chaveLancamentoCredito : String(2); // BSCHL: Posting Key
        contaContabilCredito   : String(10); // HKONT: G/L Account
        bloqueioPgto           : String(1); // ZLSPR: Payment Block Key
        centroCusto            : String(10); // KOSTL: Cost Center
        email                  : String(255); // CHAR(255): Character String, Length 255
        emailSuccess           : String(255); // CHAR(255): Character String, Length 255
        emailError             : String(255); // CHAR(255): Character String, Length 255
}

entity ProcessoValues {
  key ID : Integer;
  description : String;
}

entity PeriodicidadeValues {
  key ID : Integer;
  description : String;
}

entity EscopoValues {
  key ID : Integer;
  description : String;
}

// entity tipoDocumentoValues {
//   key blart : String(2);
//   description : String;
// }

// entity chaveLancamentoDebitoValues {
//   key bschl : String(2);
//   description : String;
// }

// entity contaContabilDebitoValues {
//   key hkont : String(10);
//   description : String;
// }

// entity chaveLancamentoCreditoValues {
//   key bschl : String(2);
//   description : String;
// }

// entity contaContabilCreditoValues {
//   key hkont : String(10);
//   description : String;
// }

// entity bloqueioPgtoValues {
//   key zlspr : String(1);
//   description : String;
// }

// entity centroCustoValues {
//   key kostl : String(10);
//   description : String;
// }
