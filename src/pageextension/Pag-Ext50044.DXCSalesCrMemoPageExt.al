pageextension 50044 "DXCSalesCrMemoPageExt" extends "Sales Credit Memo"//MyTargetPageId
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