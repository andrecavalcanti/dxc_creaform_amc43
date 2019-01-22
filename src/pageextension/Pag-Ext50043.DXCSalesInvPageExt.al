pageextension 50043 "DXCSalesInvPageExt" extends "Sales Invoice" //MyTargetPageId
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