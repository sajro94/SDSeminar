table 50141 "My Seminar"
{
    DataClassification = ToBeClassified;
    Caption = 'My Seminars';

    fields
    {
        field(10; "User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User;
            Caption = 'User ID';
        }

        field(20; "Seminar No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "CSD Seminar";
            Caption = 'Seminar No.';
        }
    }

    keys
    {
        key(PK; "User ID", "Seminar No.")
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