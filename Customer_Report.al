report 50100 Customerreport
{
    CaptionML=ENU='Customer Report';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'Customer Report.rdl';

    dataset
    {
        dataitem(CustomerData;Customer)
        {
            column(COMPANYNAME;COMPANYNAME)
            {}
            column(No_;"No.")
            {}
            column(Name;Name)
            {}
            column(Address;Address)
            {}
            column(City;City)
            {}
            column(County;County)
            {}
            
        }

    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(General)
                {
                   
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        myInt: Integer;
}