pageextension 50041 "DXCSalesQuotePageExt" extends "Sales Quote" //MyTargetPageId
{
    layout
    {
        addbefore("Bill-to Name")
        {            
            field("Bill-to Address Code";"Bill-to Address Code")
            {
            }
        }
    }
    
    actions
    {
    }
}