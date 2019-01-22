page 50001 "DXCBillToAddress"
{    

    PageType = Card;
    SourceTable = "DXCBillToAddress";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Code";Code)
                {
                }
                field(Name;Name)
                {
                }
                field("Name 2";"Name 2")
                {
                    Visible = false;
                }
                field(Address;Address)
                {
                }
                field("Address 2";"Address 2")
                {
                }
                field(City;City)
                {
                }
                field(County;County)
                {
                    Caption = 'State / ZIP Code';
                }
                field(Contact;Contact)
                {
                }
                field("Country/Region Code";"Country/Region Code")
                {
                }
                field("Last Date Modified";"Last Date Modified")
                {
                }
                field("Post Code";"Post Code")
                {
                    Caption = 'ZIP Code';
                }
                field(Default;Default)
                {
                }
            }
            group(Communication)
            {
                Caption = 'Communication';
                field("Phone No.";"Phone No.")
                {
                }
                field("Telex No.";"Telex No.")
                {
                }
                field("E-Mail";"E-Mail")
                {
                }
                field("Home Page";"Home Page")
                {
                }
            }
        }
    }

    actions
    {
    }
}

