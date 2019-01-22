codeunit 50005 "DXCBillToAddressEventHandling"
{
      [EventSubscriber(ObjectType::Table, 36, 'OnAfterValidateEvent', 'Bill-to Address Code', false, false)]
    local procedure HandleValidateBillToAddressCodeOnSalesHeader(var Rec : Record "Sales Header";var xRec : Record "Sales Header";CurrFieldNo : Integer);
    var
        BillToAddress : Record "DXCBillToAddress";
    begin
       

        if Rec."Bill-to Address Code" <> xRec."Bill-to Address Code" then begin

          if BillToAddress.GET(Rec."Bill-to Customer No.",Rec."Bill-to Address Code") then begin

            Rec."Bill-to Name" := BillToAddress.Name;
            Rec."Bill-to Name 2" := BillToAddress."Name 2";
            Rec."Bill-to Address" := BillToAddress.Address;
            Rec."Bill-to Address 2" := BillToAddress."Address 2";
            Rec."Bill-to City" := BillToAddress.City;
            Rec."Bill-to Contact" := BillToAddress.Contact;
            Rec."Bill-to Post Code" := BillToAddress."Post Code";
            Rec."Bill-to County" := BillToAddress.County;
            Rec."Bill-to Country/Region Code" := BillToAddress."Country/Region Code";

          end else begin
            Rec."Bill-to Name" := '';
            Rec."Bill-to Name 2" := '';
            Rec."Bill-to Address" := '';
            Rec."Bill-to Address 2" := '';
            Rec."Bill-to City" := '';
            Rec."Bill-to Contact" := '';
            Rec."Bill-to Post Code" := '';
            Rec."Bill-to County" := '';
            Rec."Bill-to Country/Region Code" := '';
          end;

        end;
        
    end;
}