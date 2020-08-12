table 50104 "CSD Seminar Comment Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Table Name"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Seminar","Seminar Registration","Posted Seminar Registration";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
        }

        field(20; "Document Line No."; Integer)
        {

        }

        field(30; "No."; Code[20])
        {

        }

        field(40; "Line No."; Integer)
        {

        }

        field(50; "Date"; Date)
        {

        }
        Field(60; "Code"; Code[10])
        {

        }
        Field(70; Comment; Text[80])
        {

        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")
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