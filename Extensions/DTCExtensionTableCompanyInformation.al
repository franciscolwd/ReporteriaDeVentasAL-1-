tableextension 50110 DTCompanyInformationPageExt extends "Company Information"
{
    fields
    {
        field(50110; PictureCenterInvoice; Blob)
        {
            CaptionML = ENU = 'PictureCenterInvoice', ESP = ' Imagen Centro de Factura';
            DataClassification = ToBeClassified;
            SubType = Bitmap;

            trigger OnValidate()
            begin
                PictureUpdated := true;
            end;
        }
        field(50111; PictureFooterInvoice; Blob)
        {
            CaptionML = ENU = 'PictureFooterInvoice', ESP = 'Imagen Pie de Factura';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
            trigger OnValidate()
            begin
                PictureUpdated := true;
            end;
        }
        field(50112; PictureHeaderInvoice; Blob)
        {
            CaptionML = ENU = 'PictureHeaderInvoice', ESP = 'Imagen Cabecera Factura';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
            trigger OnValidate()
            begin
                PictureUpdated := true;
            end;
        }
        field(50113; PictureInvoice; Blob)
        {
            CaptionML = ENU = 'PictureInvoice', ESP = 'Imagen Factura';
            DataClassification = ToBeClassified;
            SubType = Bitmap;
            trigger OnValidate()
            begin
                PictureUpdated := true;
            end;
        }




    }
    var
        PictureUpdated: Boolean;
}
