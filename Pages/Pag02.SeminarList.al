page 50102 "CSD Seminar List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "CSD Seminar";
    CardPageId = "CSD Seminar Card";

    layout
    {
        area(Content)
        {
            repeater(Seminar)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                }

                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                }

                field("Seminar Price"; "Seminar Price")
                {
                    ApplicationArea = All;
                }

                field("Minimum Participants"; "Minimum Participants")
                {
                    ApplicationArea = All;
                }

                field("Maximum Participants"; "Maximum Participants")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action("Com&ment")
            {
                RunObject = Page "CSD Seminar Comment LISt";
                RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                Image = Comment;
                Promoted = true;
                PromotedIsBig = true;
                PromotedOnly = true;
            }
        }
    }
}