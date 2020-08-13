page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    InsertAllowed = false;
    DeleteAllowed = false;
    SourceTable = "CSD Seminar Cue";
    Caption = 'Seminer Manager Activities';

    layout
    {
        area(Content)
        {
            cuegroup(Registration)
            {
                field(Planned; Planned)
                {
                    ApplicationArea = All;
                }
                field(Registered; Registered)
                {
                    ApplicationArea = All;
                }

                actions
                {
                    action(NewRegistration)
                    {
                        Caption = 'New Registration';
                        ApplicationArea = All;
                        RunObject = Page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }

            }

            cuegroup("For Posting")
            {
                field(Closed; Closed)
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    trigger OnOpenPage()
    begin
        IF Get then
            Exit;
        Init;
        Insert;
    end;
}