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
            TableRelation = IF ("Table Name" = const(Seminar)) "CSD Seminar" else
            if ("Table Name" = const("Seminar Registration")) "CSD Seminar Reg. Header";
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

    procedure SetupNewLine()
    var
        SeminarCommentLine: Record "CSD Seminar Comment Line";
    begin
        SeminarCommentLine.SetRange("Table Name", "Table Name");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange("Date", WorkDate());
        IF SeminarCommentLine.IsEmpty then
            Date := WorkDate();
    end;

}