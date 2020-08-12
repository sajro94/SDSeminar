tableextension 50100 "CSD Extension" extends Resource
//CSD14.0.0.1 2020.01.01 D. E. Veloper FHP
{

    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }

        modify(Type)
        {
            OptionCaption = 'Instructor,Room';
        }
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            OptionCaption = 'Internal,External';
            OptionMembers = "Internal","External";
            DataClassification = ToBeClassified;
        }

        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }

        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
            DataClassification = ToBeClassified;
        }

    }

    var
        myInt: Integer;
}