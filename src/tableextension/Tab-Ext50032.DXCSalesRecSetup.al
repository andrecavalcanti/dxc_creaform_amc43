tableextension 50032 "DXCSalesRecSetup" extends "Sales & Receivables Setup" //MyTargetTableId
{
    fields
    {
        field(50000;"Bill-to Address Nos.";Code[10])
        {            
            TableRelation = "No. Series";
        }
    }
    
}