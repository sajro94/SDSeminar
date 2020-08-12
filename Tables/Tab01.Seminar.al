table 50101 "CSD Seminar"
{
    DataClassification = ToBeClassified;
    LookupPageId = "CSD Seminar List";
    DrillDownPageId = "CSD Seminar List";

    fields
    {
        field(10; "No."; Code[20])
        {
            caption = 'No.';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                IF NoSeriesManagement.ManualNoAllowed(CSDSeminarSetup."Seminar Nos.") THEN
                    "No. Series" := ''
                ELSE
                    Error('Manual no. not allowed by no. series %1', CSDSeminarSetup."Seminar Nos.");
            end;
        }

        field(20; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                IF Rec.Name = UpperCase(xRec.Name) then
                    "Search Name" := Name;
            end;
        }

        field(30; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DataClassification = ToBeClassified;
        }

        field(40; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
            DataClassification = ToBeClassified;
        }

        field(50; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
            DataClassification = ToBeClassified;
        }

        field(60; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
            DataClassification = ToBeClassified;
        }

        field(70; Blocked; Boolean)
        {
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }

        field(80; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
            DataClassification = ToBeClassified;
        }

        field(90; Comment; Boolean)
        {
            Caption = 'Comment';
            FieldClass = FlowField;
            Editable = false;
            //CalcFormula = exist()
        }

        field(100; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
            DataClassification = ToBeClassified;
        }

        field(110; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                IF GenProductPostingGroup.ValidateVatProdPostingGroup(GenProductPostingGroup,
                "Gen. Prod. Posting Group") THEN
                    "VAT Prod. Posting Group" := GenProductPostingGroup."Def. VAT Prod. Posting Group";
            end;
        }

        field(120; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            DataClassification = ToBeClassified;
        }

        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }

        key(SK; "Search Name")
        {

        }
    }

    var
        CSDSeminarSetup: Record "CSD Seminar Setup";
        //CSDSeminarCommentLine: Record
        GenProductPostingGroup: Record "Gen. Product Posting Group";
        NoSeriesManagement: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        CSDSeminarSetup.get;
        IF "No." = '' then begin
            CSDSeminarSetup.TestField("Seminar Nos.");
            NoSeriesManagement.InitSeries(CSDSeminarSetup."Seminar Nos.", xRec."No. Series", 0D, "No.", "No. Series");
        end;
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := Today;
    end;

    trigger OnDelete()
    begin
        //Delete Comment Lines
    end;

    trigger OnRename()
    begin
        "Last Date Modified" := Today;
    end;

    procedure AssistEdit(): Boolean
    begin
        CSDSeminarSetup.get;
        CSDSeminarSetup.TestField("Seminar Nos.");

        IF NOT NoSeriesManagement.SelectSeries(CSDSeminarSetup."Seminar Nos.", xRec."No. Series", "No. Series") then
            EXIT(false);

        NoSeriesManagement.SetSeries("No. Series");
        Exit(true);
    end;
}