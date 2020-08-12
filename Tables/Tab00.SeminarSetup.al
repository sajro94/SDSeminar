table 50100 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Primary key"; Code[10])
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Seminar Nos."; Code[20])
        {
            Caption = 'Seminar Nos.';
            DataClassification = ToBeClassified;
        }

        field(30; "Seminar Registraion Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            DataClassification = ToBeClassified;

        }

        field(40; "Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            DataClassification = ToBeClassified;

        }
    }

    keys
    {
        key(PK; "Primary key")
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