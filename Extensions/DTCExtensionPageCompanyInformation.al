pageextension 50105 DTCompanyInformationPageExt extends "company information"
{
    layout

    {

        addbefore("DTC Document Type")
        {
            field(PictureCenterInvoice; Rec.PictureCenterInvoice)
            {

                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
            field(PictureFooterInvoice; Rec.PictureFooterInvoice)
            {

                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
            field(PictureHeaderInvoice; Rec.PictureHeaderInvoice)
            {

                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
            field(PictureInvoice; Rec.PictureInvoice)
            {

                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                trigger OnValidate()
                begin
                    CurrPage.SaveRecord;
                end;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}