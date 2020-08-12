pageextension 50100 "CSD Resource Card" extends "Resource Card"
// CSD14.0.0.1 - 2020.12.08 - D. E. Veloper FHP
//  Added new fields
// - CSD Resource Type
// - Maximum participants
// Added new FastTab
// Added Code to OnAfterGetRecord trigger
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {
                ApplicationArea = All;
            }

            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {
                ApplicationArea = All;
            }
        }

        addafter("Personal Data")
        {
            group(Room)
            {
                Visible = RoomIsVisible;

                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    var
        [InDataSet]
        RoomIsVisible: Boolean;

    trigger OnAfterGetRecord()
    begin
        RoomIsVisible := Type <> Type::Person;
        CurrPage.Update(false);
    end;
}