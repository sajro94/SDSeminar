pageextension 50101 "Resource List Ext." extends "Resource List"
{
    layout
    {
        addafter("Type")
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }

            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaximumParicipants;
                ApplicationArea = All;
            }
        }

        modify(Type)
        {
            Visible = ShowType;
        }
    }

    var
        [InDataSet]
        ShowType: Boolean;
        [InDataSet]
        ShowMaximumParicipants: Boolean;

    trigger OnOpenPage()
    begin
        ShowType := GetFilter(Type) = '';
        ShowMaximumParicipants := GetFilter(Type) = format(Type::Machine);
    end;
}