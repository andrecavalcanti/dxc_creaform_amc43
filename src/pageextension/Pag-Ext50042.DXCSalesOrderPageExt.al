pageextension 50042 "DXCSalesOrderPageExt" extends "Sales Order" //MyTargetPageId
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