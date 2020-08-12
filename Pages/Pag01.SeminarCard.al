page 50101 "CSD Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if Rec.AssistEdit() then
                            CurrPage.Update(true);
                    end;
                }

                field(Name; Name)
                {
                    ApplicationArea = All;
                }

                field("Search Name"; "Search Name")
                {
                    ApplicationArea = All;
                }

                field("Seminar Duration"; "Seminar Duration")
                {
                    ApplicationArea = All;
                }

                field("Minimum Participants"; "Minimum Participants")
                {
                    ApplicationArea = All;
                }

                field("Maximum participants"; "Maximum participants")
                {
                    ApplicationArea = All;
                }

                field(blocked; blocked)
                {
                    ApplicationArea = All;
                }

                field("Last Date Modified"; "Last Date Modified")
                {
                    ApplicationArea = All;
                }
            }

            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }

                field("VAT Prod. Posting Group"; "VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }

                field("Seminar Price"; "Seminar Price")
                {
                    ApplicationArea = All;
                }
            }

        }

        area(FactBoxes)
        {

            systempart("Links"; Links)
            {

            }

            systempart("Notes"; Notes)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mment")
                {
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ApplicationArea = All;
                    Caption = 'Show Comments';
                    trigger OnAction()
                    begin
                        //Code to show Comments
                    end;
                }
            }
        }
    }

    var
        myInt: Integer;
}