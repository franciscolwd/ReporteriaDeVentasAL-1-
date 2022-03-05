report 50121 "DTC Credit Note"
{
    Caption = 'DTC Credit Note';
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = './Layaout/DTReportNotaCredito.rdlc';



    dataset
    {

        dataitem(Header; "Sales Cr.Memo Header")
        {
            DataItemTableView = Sorting("No.");
            RequestFilterFields = "No.";
            PrintOnlyIfDetail = true;
            column(DocumentNo; Header."No.") { IncludeCaption = true; }
            column(FacturaDeVenta_Lbl; FacturaDeVenta_Lbl) { Caption = 'N° de Factura'; }
            column(FechaEmision; Header."Document Date") { IncludeCaption = true; }
            column(FechaEmision_lbl; FechaEmision_lbl) { Caption = 'Fecha de Emisión'; }

            column(FechaModificacion; Header.SystemModifiedAt) { IncludeCaption = true; }

            column(FechaVencimiento; Header."Due Date") { IncludeCaption = true; }
            column(FechaVencimiento_lbl; FechaVencimiento_lbl) { Caption = ' Fecha de Venc.'; }
            column(NombreDelCliente; Header."Sell-to Customer Name") { IncludeCaption = true; }
            column(NombreCliente_Lbl; NombreCliente_Lbl) { CaptionML = ENU = 'Name', ESP = 'Nombre'; }
            column(ClienteNo_; Header."Bill-to Customer No.") { IncludeCaption = true; }
            column(NumeroCliente_Lbl; NumeroCliente_Lbl) { Caption = 'CC.'; }
            column(DireccionCliente; Header."Bill-to Address") { IncludeCaption = true; }
            column(DirecCliente_Lbl; DirecCliente_Lbl) { Caption = 'Direccion Cliente'; }
            column(CiudadCliente; Header."Bill-to City") { IncludeCaption = true; }
            column(CiudadCLiente_lbl; CiudadCLiente_lbl) { Caption = 'Ciudad'; }
            column(DireccionClienteDespacho; Header."Ship-to Address") { IncludeCaption = true; }
            column(DespachoCliente_Lbl; DirecClienteDespacho_Lbl) { Caption = 'Direccion Despacho'; }
            column(CiudadCliente_Desp; Header."Ship-to City") { IncludeCaption = true; }
            column(CidadDespachoCliente_Lbl; CidadDespachoCliente_Lbl) { Caption = 'Ciudad'; }
            column(TelefonoCliente; Header."Sell-to Phone No.") { IncludeCaption = true; }
            column(TelefonoCliente_Lbl; TelefonoCliente_Lbl) { }
            column(Cond_PagoCliente; Header."Payment Terms Code") { IncludeCaption = true; }
            column(CondPagoCliente_Lbl; CondPagoCliente_Lbl) { }
            column(MetodoPagoCliente; Header."Payment Method Code") { IncludeCaption = true; }
            column(TermPagoCliente_Lbl; TermPagoCliente_Lbl) { }
            column(EmailCliente; Header."Sell-to E-Mail") { IncludeCaption = true; }
            column(EmailCLiente_Lbl; EmailCLiente_Lbl) { }
            column(VendedoralCliente; Header."Salesperson Code") { IncludeCaption = true; }
            column(VendorCliente_Lbl; VendorCliente_Lbl) { }
            column(MonedaPagoCliente; "Currency Code") { IncludeCaption = true; }
            column(MonedaPagCliente_Lbl; MonedaPagCliente_Lbl) { }
            column(NameCompany; companyinformation.Name) { IncludeCaption = true; }
            column(EmailCompany; companyinformation."E-Mail") { IncludeCaption = true; }
            column(PhoneCompany; companyinformation."Phone No.") { IncludeCaption = true; }
            column(AdressCompany; companyinformation.Address) { IncludeCaption = true; }
            column(WebCompany; companyinformation."Home Page") { IncludeCaption = true; }
            column(CiudadCompany; companyinformation."City") { }
            column(PaisCompany; companyinformation."Country/Region Code") { }
            column(LogoCompany; companyinformation.Picture) { }
            // column(Decripcion1; companyinformation.DTDescripcion1) { }
            // column(Decripcion2; companyinformation.DTDescripcion2) { }
            // column(Decripcion3; companyinformation.DTDescripcion3) { }
            // column(Decripcion4; companyinformation.DTDescripcion4) { }
            // column(Decripcion5; companyinformation.DTDescripcion5) { }
            // column(CUFE; header.DTCufe) { }
            // column(Status; header.DTStatus) { }
            column(Item_Lbl; Item_Lbl) { }
            column(CodiGo_Lbl; CodiGo_Lbl) { }
            column(Descripcion_lbl; Descripcion_lbl) { }
            column(Cantidad_lbl; Cantidad_lbl) { }
            column(Unidad_lbl; Unidad_lbl) { }
            column(Descuento_lbl; Descuento_lbl) { }
            column(IVAlinea_lbl; IVAlinea_lbl) { }
            column(CostoTotal_lbl; CostoTotal_lbl) { }
            column(TotalBruto_lbl; TotalBruto_lbl) { }
            column(DescuentoPorLinea_lbl; DescuentoPorLinea_lbl) { }
            column(DescuentoGlobal_lbl; DescuentoGlobal_lbl) { }
            column(SubTotal_lbl; SubTotal_lbl) { }
            column(Iva_lbl2; Iva_lbl2) { }
            column(RetencionFuente_lbl; RetencionFuente_lbl) { }
            column(Totalapagar_lbl; Totalapagar_lbl) { }
            column(PictureInvoiceCenter; companyinformation.PictureCenterInvoice) { }
            column(PictureInvoiceFooter; companyinformation.PictureFooterInvoice) { }
            column(PictureInvoiceHeader; companyinformation.PictureHeaderInvoice) { }
            column(PictureInvoice; companyinformation.PictureInvoice) { }
            // column(ImporteDescuentoDeFactura; header."Invoice Discount Value") { }
            column(NITEmpresa; CompanyInformation."VAT Registration No.") { }
            column(CodCuentaBanko; companyinformation."Bank Account No.") { }
            column(NombreBanko; companyinformation."Bank Name") { }
            column(Work_DescriptionOBSERVACIONES; header.GetWorkDescription()) { }
            column(Order_No_; "External Document No.") { }
            column(DtSeriesDescripcion1; DescripcionSeries1) { }
            column(DtSeriesDescripcion2; DescripcionSeries2) { }
            column(DtSeriesDescripcion3; DescripcionSeries3) { }
            column(PalletID; PalletID) { }
            column(PalletBarcode; PalletBarcode) { }
            column(PalletBarcode2D; PalletBarcode2D) { }
            column(OrdenCompra; header."External Document No.") { }
            column(ISDescription1; InvoiceSetup.GetDescription(1)) { }
            column(ISDescription2; InvoiceSetup.GetDescription(2)) { }
            column(ISDescription3; InvoiceSetup.GetDescription(3)) { }
            column(ISDescription4; InvoiceSetup.GetDescription(4)) { }
            column(ISDescription5; InvoiceSetup.GetDescription(5)) { }

            dataitem(Lineas; "Sales Cr.Memo Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.", "Line No.");
                column(No; lineas."Document No.") { IncludeCaption = true; }
                column(CantidadIncluyendoIVA; lineas."Amount Including VAT") { }
                column(MontoDescuentoFactura; Lineas."Inv. Discount Amount") { }
                column(Codigo; Lineas."Item Reference No.") { IncludeCaption = true; }
                column(Descripcion; Lineas.Description) { IncludeCaption = true; }
                column(Cantidad; Lineas.Quantity) { IncludeCaption = true; }
                column(PrecioUnitario; Lineas."Unit Price") { IncludeCaption = true; }
                column(Unidad; Lineas."Unit of Measure Code") { IncludeCaption = true; }
                column(NºReferenciaArticulo; "IC Item Reference No.") { }
                column(Iva; Lineas."VAT %") { IncludeCaption = true; }
                column(CostoTotal; lineas."Amount Including VAT") { }
                column(TotalBruto; Lineas."VAT Base Amount") { IncludeCaption = true; }
                column(DescuentoporLineaMonto; Lineas."Line Discount Amount") { IncludeCaption = true; }
                column(DescuentoGeneralFactura; Lineas."Inv. Discount Amount") { }
                column(DescuentoporLineaCalculo; Lineas."Line Discount Calculation") { IncludeCaption = true; }
                column(DescuentoporLineaPorcentaje; Lineas."Line Discount %") { IncludeCaption = true; }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                column(Line_Amount; "Line Amount") { }
                column(VAT_Base_Amount; "VAT Base Amount") { }
                column(Tipo; Lineas."type") { IncludeCaption = true; }
                column(NumeroDocumento; Lineas."Document No.") { IncludeCaption = True; }
                column(NumeroDeLinea; lineas."Line No.") { IncludeCaption = true; }
                column(TotalaPagar; "Amount Including VAT") { IncludeCaption = true; }
                column(EntryNO; EntryNO) { }
                column(Contador; Contador) { }
                column(RETEICA; RETEICA) { }
                column(RETEFUENTE; RETEFUENTE) { }
                column(AUTORETEFUENTE; AUTORETEFUENTE) { }
                column(VAT19; VAT19) { }
                column(VAT5; VAT5) { }
                column(ReteIva; ReteIva) { }
                column(N_Producto; NumeroProducto) { }
                column(N_LoteProd; NumeroLote) { }
                column(Cude_Cufe; Cude_Cufe) { }
                column(ImpuestoLine; ImpuestoLine) { }
                column(SendDian; SendDian) { }
                column(Iva19o5; impuestoline) { }
                // column(ImportenENLetras; GetAmountInLetters(SubTotal, '')) { }
                column(SubTotal; SubTotal) { }
                column(DescuentoComercial; DescuentoComercial) { }
                column(Total; Total) { }
                column(NetoConRetenciones; NetoConRetenciones) { }


                trigger OnAfterGetRecord()
                var
                    myInt: Integer;
                    VatEntry: record "vat entry";//TABLA 254 MOVIMIENTO DE IVA https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=254
                    TaxJuridiction: record "Tax Jurisdiction";//TABLA 320 JURIDICCION DE IMPUESTO https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=320
                    DetTaxLedEntry: Record "DTC Detailed Tax Ledger Entry"; //TABLA 60104 ENTRADA DETALLADA DEL LIBRO DE IMPUESTOS (DETAILED TAX LEDGER ENTRY) https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=60104
                    ValueEntry: record "Value Entry";//TABLA 5802 MOVIMIENTO VALOR https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=5802
                    ItemLedgerEntry: Record "Item Ledger Entry";//TABLA 32 MOVIMIENTO DE PRODUCTO https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=32
                    DTCTaxLedgerEntry: Record "DTC Tax Ledger Entry";
                    VarSubTotal, VarDescuentoComercial, VarIva5, VarIva19, VarTotal, VarReteIva, VarReteIca, VarReteFuente : Decimal;
                begin
                    ValueEntry.reset();//Reiniciamos la variable de movimiento de iva
                    ValueEntry.SetRange("Document No.", lineas."Document No.");//filtramos por "Numero de Documento" de Mov.IVA con el "Numero de Documento" de la variable de LINEAS(Sales invoice line)
                    ValueEntry.SetRange("Item No.", lineas."No.");//filtramos por Numero de producto de MovIva con "No." de LINEAS
                    if ValueEntry.FindFirst() then begin
                        ItemLedgerEntry.Reset();
                        ItemLedgerEntry.SetRange("Entry No.", ValueEntry."Item Ledger Entry No.");
                        if ItemLedgerEntry.FindFirst() then begin
                            NumeroProducto := ItemLedgerEntry."item No.";
                            NumeroLote := ItemLedgerEntry."Lot No.";
                        end;
                    end;

                    Contador += 1;
                    VatEntry.Init();
                    VatEntry.Reset();
                    VatEntry.SetRange("Document No.", Lineas."Document No.");
                    if VatEntry.FindFirst() then begin
                        repeat
                            // if TaxJuridiction."DTC DIAN Code" = '05' then
                            if VatEntry."Tax Type 2 KCP" = VatEntry."Tax Type 2 KCP"::VATWithh then
                                ReteIva += VatEntry.Amount;
                            if VatEntry."Tax Type 2 KCP" = VatEntry."Tax Type 2 KCP"::VAT then begin
                                if VatEntry."Tax % KCP" = 19 then
                                    VAT19 += VatEntry.Amount
                                else
                                    if VatEntry."Tax % KCP" = 5 then
                                        VAT5 += VatEntry.Amount
                            end else
                                if VatEntry."Tax Type 2 KCP" = VatEntry."Tax Type 2 KCP"::ICAWithh then
                                    RETEICA += VatEntry.Amount
                                else
                                    if VatEntry."Tax Type 2 KCP" = VatEntry."Tax Type 2 KCP"::TaxSelfWithh then
                                        AUTORETEFUENTE += VatEntry.Amount
                                    else
                                        if VatEntry."Tax Type 2 KCP" = VatEntry."Tax Type 2 KCP"::TaxWithh then
                                            if vatentry."Tax Identifier KCP" = 'RTEFTE' then
                                                RETEFUENTE += Vatentry.amount
                                            else
                                                if VatEntry."Tax Identifier KCP" = '' then
                                                    RETEFUENTE += Vatentry.amount;
                        until VatEntry.Next() = 0;
                    end;
                    DetTaxLedEntry.Reset();
                    DetTaxLedEntry.SetRange("Document No.", Lineas."Document No.");
                    DetTaxLedEntry.SetRange("Source Line No.", Lineas."Line No.");
                    if DetTaxLedEntry.FindFirst() then
                        repeat
                            TaxJuridiction.Get(DetTaxLedEntry."Tax Jurisdiction Code");
                            if TaxJuridiction."DTC DIAN Code" = '01' then
                                ImpuestoLine := DetTaxLedEntry."Tax Amount";
                            costototalimpuesto := lineas."Amount";
                            costototalimpuesto += ImpuestoLine;

                        until DetTaxLedEntry.Next() = 0;

                    VarSubTotal += lineas."Unit Price" * lineas.Quantity;
                    SubTotal := VarSubTotal;
                    VarDescuentoComercial += Lineas."Line Discount Amount";
                    DescuentoComercial := VarDescuentoComercial;
                    VarTotal := SubTotal - DescuentoComercial + VAT5 + VAT19;
                    Total := VarTotal;
                    NetoConRetenciones := Total - ReteIva - RETEFUENTE - RETEICA;

                end;
            }

            trigger OnAfterGetRecord()
            var                                            // REFERENCIAS CODIGO DE BARRA 1D BARCODE Y 2D QR CODE
                BarcodeSymbology: Enum "Barcode Symbology";//https://thatnavguy.wordpress.com/2022/01/18/printing-1d-and-2d-barcode/
                BarcodeSymbology2D: Enum "Barcode Symbology 2D";//https://www.barcodefaq.com/2d/qr-code/
            begin
                // Error('Error');
                EInvoicingLedger.Reset();// REFERENCIA E-INVOICING LEDGER ENTRY VALORES DEVUELTOS DE LA DIAN TABLE 60101 https://businesscentral.dynamics.com/31e2f0fd-cea9-48b8-bc25-3806f215cf25/Desarrollo_Francisco?table=60101
                EInvoicingLedger.SetRange("Document No.", Header."No.");
                if EInvoicingLedger.FindFirst() then begin
                    SendDian := EInvoicingLedger."Send date time";//REGISTRO DEL ENVIO A LA DIAN
                    Cude_Cufe := EInvoicingLedger."CUFE/CUDE Code";// CODIGO CUFE/CUDE DEVUELTO DE LA DIAN
                    PalletID := EInvoicingLedger.GetQRInformation();// VALOR ASIGNADO LA DEVOLUCION AL CODIGO QR
                end;
                if PalletID = '' then
                    if GuiAllowed then
                        Message('El coodigo QR no ha sido generado correctamente');
                PalletBarcode := Generate1DBarcodeSymbology(BarcodeSymbology::Code128, '132453678');//METODO QUE CREA EL CODIGO DE BARRAS
                PalletBarcode2D := Generate2DBarcodeSymbology(BarcodeSymbology2D::"QR-Code", PalletID);//METODO QUE CREA EL CODIGO QR
                Series.Reset();//Reset variable a tabla de Numeros de Serie 
                Series.SetRange(code, Header."No. Series");// filtrado por la Key "Code"(Numero de series) y el campo "No.Series"(Historico de factura de venta)
                if Series.FindFirst() then begin//Traemos el primero que coincida con lo que pongamos a continuacion
                    // DescripcionSeries1 := Series.DTDescripcion1;//Informacion Tributaria primer descripcion
                    // DescripcionSeries2 := Series.DTDescripcion2;//Informacion Tributaria segundo descripcion
                    // DescripcionSeries3 := Series.DTDescripcion3;//Informacion Tributaria tercero descripcion
                end;

            end;
        }
    }

    trigger OnInitReport()//Inicia el Reporte
    var
        entryNo: Integer;
    begin
        CompanyInformation.Get();//GET a la tabla Informacion de Empresa
        CompanyInformation.CalcFields(Picture, PictureCenterInvoice);//Traemos el LOGO
    end;

    procedure Generate1DBarcodeSymbology(BarcodeSymbology: Enum "Barcode Symbology"; BarcodeString: Text[50]): Text//Procedimiento que crea el codigo de Barras en el reporte 
    var
        BarcodeFontProviderEnum: Enum "Barcode Font Provider";
        BarcodeFontProvider: Interface "Barcode Font Provider";
    begin
        BarcodeFontProvider := BarcodeFontProviderEnum::IDAutomation1D;
        BarcodeFontProvider.ValidateInput(BarcodeString, BarcodeSymbology);
        Exit(BarcodeFontProvider.EncodeFont(BarcodeString, BarcodeSymbology));
    end;

    procedure Generate2DBarcodeSymbology(BarcodeSymbology2D: Enum "Barcode Symbology 2D"; BarcodeString: Text[1024]): Text //Procedimiento que crea el codigo QR en el reporte
    var
        BarcodeFontProvider2DEnum: Enum "Barcode Font Provider 2D";
        BarcodeFontProvider2D: Interface "Barcode Font Provider 2D";
    begin
        BarcodeFontProvider2D := BarcodeFontProvider2DEnum::IDAutomation2D;
        Exit(BarcodeFontProvider2D.EncodeFont(BarcodeString, BarcodeSymbology2D));
    end;

    // local procedure GetAmountInLetters(Amount_: Decimal; CurrencyCode: Code[10]): Text
    // var
    //     TextArray: array[10] of Text;
    //     TextAmount2_: Text;
    //     DecimalPartText: Text;
    // begin
    //     TextAmount2_ := '';
    //     AmountInLetters.FormatNoText(TextArray, ABS(Amount_));
    //     TextAmount2_ := TextArray[1];
    //     if ABS(Amount_) = 1000 then
    //         TextAmount2_ := 'UN' + TextArray[1];
    //     AmountInLetters.FormatNoText2(DecimalPartText, ABS(Amount_));
    //     TextAmount2_ += DecimalPartText;
    //     if CurrencyCode = '' then
    //         TextAmount2_ += ' PESOS COP'
    //     else
    //         TextAmount2_ += CurrencyCode;
    //     exit(TextAmount2_)
    // end;



    var
        // VARIABLES A TABLAS (RECORD INICIO)----------------------------------------------------------------------------------------------
        CompanyInformation: Record "Company Information";
        // AmountInLetters: Codeunit "Amount in letters";
        Item: record "Item Ledger Entry";
        ItemsDetailed: record "DTC Detailed Tax Ledger Entry";
        Series: record "No. Series";
        InvoiceSetup: Record "DTC E-Invoicing Setup";
        EInvoicingLedger: Record "DTC E-Invoicing Ledger Entry";
        Customer: record Customer;
        CodLote: record "Availability Info. Buffer";
        LoteInformation: record "Lot No. Information";

        // VARIABLES A TABLAS (RECORD FINAL)--------------------------------------------------------------------------

        // VARIABLES NUMERICAS INICIO---------------------------------------------------------------------------------
        SubTotal, DescuentoComercial, Iva5, Iva19, Total, NetoConRetenciones : Decimal;
        Iva19o5: Decimal;
        VAT19: Decimal;
        VAT5: Decimal;
        RETEFUENTE: Decimal;
        RETEICA: decimal;
        AUTORETEFUENTE: decimal;
        ReteIva: Decimal;
        ImpuestoLine: Decimal;
        costototalimpuesto: Decimal;
        EntryNO: Decimal;
        myInt: Integer;
        Contador: Integer;
        DescuentoGeneralFactura: decimal;

        // VARIABLES NUMERICAS FINAL----------------------------------------------------------------------------------

        // VARIABLES TIPO LABEL INICIO -------------------------------------------------------------------------------
        NitCompany_Lbl: label 'NIT :', Locked = true, MaxLength = 10;
        NombreCliente_Lbl: Label 'Cliente';
        NumeroCliente_Lbl: Label 'Cliente N°';
        DirecCliente_Lbl: Label 'Dirección';
        CiudadCLiente_lbl: label 'Ciudad';
        DirecClienteDespacho_Lbl: Label 'Direccion Despacho';
        CidadDespachoCliente_Lbl: Label 'Ciudad';
        TelefonoCliente_Lbl: Label 'Telefono';
        CondPagoCliente_Lbl: label 'Condición de Pago';
        TermPagoCliente_Lbl: Label 'Medio de pago';
        EmailCLiente_Lbl: Label 'Email Cliente';
        VendorCliente_Lbl: Label 'Vendedor';
        MonedaPagCliente_Lbl: label 'Moneda';
        FacturaDeVenta_Lbl: label 'N° de Factura';
        FechaEmision_lbl: Label 'Fecha de Emisión';
        FechaVencimiento_lbl: Label 'Fecha de Venc.';
        NIT_lbl: Label 'Factura Electronica de Venta';
        Item_Lbl: Label 'ÍTEM';
        CodiGo_Lbl: Label 'CÓDIGO';
        Descripcion_lbl: Label 'DESCRIPCIÓN';
        Cantidad_lbl: Label 'CANT';
        Unidad_lbl: Label 'UM';
        PrecioUnitario_lbl: Label 'PRECIO UNIT.';
        Descuento_lbl: Label 'DESC.';
        IVAlinea_lbl: Label '%IVA';
        CostoTotal_lbl: Label 'COSTO TOTAL';
        TotalBruto_lbl: Label 'TOTAL BRUTO';
        DescuentoPorLinea_lbl: Label 'DSCTO POR LÍNEA';
        DescuentoGlobal_lbl: Label 'DSCTO GLOBAL';
        SubTotal_lbl: Label 'SUBTOTAL';
        Iva_lbl2: label 'IVA';
        RetencionFuente_lbl: Label 'RETE FUENTE';
        Totalapagar_lbl: Label 'TOTAL A PAGAR';

        // VARIABLES TIPO LABEL FINAL -------------------------------------------------------------------------------

        // VARIABLES TIPO CODE Y DATETIME INICIO -------------------------------------------------------------------------------
        NumeroLote: Code[30];
        NumeroProducto: Code[20];
        SendDian: DateTime;

        // VARIABLES TIPO CODE Y DATETIME FINAL -------------------------------------------------------------------------------

        // VARIABLES TIPO TEXT INICIO -------------------------------------------------------------------------------
        PalletBarcode, PalletBarcode2D : Text;
        PalletID: Text[1024];
        Cude_Cufe: text[250];
        Des1: text[100];
        DescripcionSeries1, DescripcionSeries2, DescripcionSeries3 : text[250];

    // VARIABLES TIPO TEXT INICIO -------------------------------------------------------------------------------
}