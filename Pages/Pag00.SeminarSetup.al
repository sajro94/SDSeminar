page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "CSD Seminar Setup";
    DeleteAllowed = false;
    InsertAllowed = false;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';

                field("Seminar Nos."; "Seminar Nos.")
                {
                    ApplicationArea = All;

                }

                field("Seminar Registraion Nos."; "Seminar Registraion Nos.")
                {
                    ApplicationArea = All;
                }

                field("Posted Seminar Reg. Nos."; "Posted Seminar Reg. Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        IF not get then begin
            Init;
            Insert;
        end;
    end;
}