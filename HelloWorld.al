// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

/*
pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;
}
*/

table 50131 Sachin
{
    Caption = 'Sachin';
    DataPerCompany = true;
    
    fields
    {
        field(1;Id; Integer)
        {
           AutoIncrement = true;
        }
        field(2;Name;Text[50])
        {

        }
    }
    
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}

page 50131 SachinListPage
{
    PageType = ListPart;
    SourceTable = Sachin;
    UsageCategory = Documents;
    AccessByPermission = page SachinListPage = X;
    ApplicationArea = All;
    CardPageId =50132;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Id;Id)
                {
                    Editable = true;
                }
                field(Name;Name)
                {
                    Editable = true;
                }
            }
        }
    }

}
page 50132 SachinCardPage
{
    PageType = CardPart;
    SourceTable = Sachin;
    UsageCategory = Documents;
    AccessByPermission = page SachinCardPage = X;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Id;Id)
                {
                    Editable = true;
                }
                field(Name;Name)
                {
                    Editable = true;
                }
            }
        }
    }
}