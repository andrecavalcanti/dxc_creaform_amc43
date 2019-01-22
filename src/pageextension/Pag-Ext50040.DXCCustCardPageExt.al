pageextension 50040 "DXCCustCardPageExt" extends "Customer Card" //MyTargetPageId
{
    layout
    {
        
    }
    
    actions
    {
        addafter(ShipToAddresses)
        {
            action("Bill-to Address")
            {
                Caption = 'Bill-to Address';
                Image = Addresses;
                Promoted = true;
                PromotedCategory = Category9;
                PromotedOnly = true;
                RunObject = Page "DXCBillToAddressList";
                RunPageLink = "Customer No."=FIELD("No.");
            }
        }
    }
}