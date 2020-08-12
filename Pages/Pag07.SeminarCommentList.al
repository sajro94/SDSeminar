page 50107 "CSD Seminar Comment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "CSD Seminar Comment Line";
    Caption = 'Seminar Comment List';
    Editable = False;

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

    var
        myInt: Integer;
}