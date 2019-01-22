tableextension 50030 "DXCSalesInvHeaderExt" extends "Sales Invoice Header" //MyTargetTableId
{
    fields
    {
        field(50007;"Bill-to Address Code";Code[10])
        {            
            TableRelation = "DXCBillToAddress".Code WHERE ("Customer No."=FIELD("Bill-to Customer No."));
        }
    }
    
}