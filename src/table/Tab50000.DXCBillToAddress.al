table 50000 "DXCBillToAddress"
{
   
    DrillDownPageID = "DXCBillToAddressList";
    LookupPageID = "DXCBillToAddressList";

    fields
    {
        field(10;"Customer No.";Code[20])
        {
        }
        field(20;"Code";Code[10])
        {
        }
        field(30;Name;Text[50])
        {
        }
        field(40;"Name 2";Text[50])
        {
        }
        field(50;Address;Text[50])
        {
        }
        field(60;"Address 2";Text[50])
        {
        }
        field(70;City;Text[30])
        {
            TableRelation = IF ("Country/Region Code"=CONST('')) "Post Code".City
                            ELSE IF ("Country/Region Code"=FILTER(<>'')) "Post Code".City WHERE ("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(80;Contact;Text[50])
        {
        }
        field(90;"Phone No.";Text[30])
        {
        }
        field(100;"Telex No.";Text[30])
        {
        }
        field(110;"Country/Region Code";Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(120;"Last Date Modified";Date)
        {
            Editable = false;
        }
        field(130;"Post Code";Code[20])
        {
            TableRelation = IF ("Country/Region Code"=CONST('')) "Post Code"
                            ELSE IF ("Country/Region Code"=FILTER(<>'')) "Post Code" WHERE ("Country/Region Code"=FIELD("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(140;County;Text[30])
        {
        }
        field(150;"E-Mail";Text[80])
        {
        }
        field(160;"Home Page";Text[80])
        {
        }
        field(170;Default;Boolean)
        {

            trigger OnValidate();
            begin
                BillToAddress.SETFILTER(Code,'<>%1',Code);
                BillToAddress.SETRANGE("Customer No.","Customer No.");
                BillToAddress.SETRANGE(Default,true);
                if BillToAddress.FINDSET(false,false) then
                  BillToAddress.TESTFIELD(Default,false);
            end;
        }
        field(180;"No. Series";Code[10])
        {
        }
    }

    keys
    {
        key(Key1;"Customer No.","Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;"Code",Name)
        {
        }
    }

    trigger OnInsert();
    begin
        if Code = '' then begin
          SalesSetup.GET;
          SalesSetup.TESTFIELD("Bill-to Address Nos.");
          NoSeriesMgt.InitSeries(SalesSetup."Bill-to Address Nos.",xRec."No. Series",0D,Code,"No. Series");
        end;
    end;

    trigger OnModify();
    begin
        "Last Date Modified" := TODAY;
    end;

    trigger OnRename();
    begin
        "Last Date Modified" := TODAY;
    end;

    var
        SalesSetup : Record "Sales & Receivables Setup";
        NoSeriesMgt : Codeunit NoSeriesManagement;
        BillToAddress : Record "DXCBillToAddress";
        PostCode : Record "Post Code";
}

