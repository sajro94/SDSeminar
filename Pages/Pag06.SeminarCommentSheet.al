page 50106 "CSD Seminar Comment Sheet"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment Sheet';
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(CommentLines)
            {
                field(Date; Date)
                {
                    ApplicationArea = All;
                }

                field(Code; Code)
                {
                    ApplicationArea = All;
                    Visible = False;
                }

                field(Comment; Comment)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnNewRecord(BelowXRec: Boolean)
    begin
        SetupNewLine();
    end;
}