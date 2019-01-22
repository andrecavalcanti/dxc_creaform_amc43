page 50004 "DXCBillToAddressList"
{
    
    CardPageID = "DXCBillToAddress";
    DataCaptionFields = "Customer No.";
    Editable = false;
    PageType = List;
    SourceTable = "DXCBillToAddress";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Code";Code)
                {
                }
                field(Name;Name)
                {
                }
                field("Name 2";"Name 2")
                {
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
                field(Contact;Contact)
                {
                }
                field("Phone No.";"Phone No.")
                {
                }
                field("Telex No.";"Telex No.")
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
                }
                field(County;County)
                {
                }
                field("E-Mail";"E-Mail")
                {
                }
                field("Home Page";"Home Page")
                {
                }
                field(Default;Default)
                {
                }
            }
        }
    }

    actions
    {
    }
}

