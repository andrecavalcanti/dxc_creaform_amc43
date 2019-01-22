pageextension 50045 "DXCSalesRecSetupPageExt" extends "Sales & Receivables Setup"//MyTargetPageId
{
    layout
    {
        addafter("Direct Debit Mandate Nos.")
        {       field("Bill-to Address Nos.";"Bill-to Address Nos.")
                {
                }
        }
        
    }
    
    actions
    {
    }
}