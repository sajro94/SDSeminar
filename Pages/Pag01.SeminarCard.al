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
                action("Ledger Entries")
                {
                    Caption = 'Ledger Entries';
                    Image = WarrantyLedger;
                    RunObject = page "CSD Seminar Ledger Entries";
                    RunPageLink = "Seminar No." = field("No.");
                    Promoted = True;
                    PromotedCategory = Process;
                    ShortcutKey = "Ctrl+F7";
                }

                action("Co&mment")
                {
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ApplicationArea = All;
                    Caption = 'Show Comments';
                    RunObject = page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name" = const(Seminar), "No." = field("No.");
                }

                action("&Registrations")
                {
                    Caption = '&Registrations';
                    RunObject = Page "CSD Seminar Registration List";
                    RunPageLink = "Seminar No." = field("No.");
                    Image = Timesheet;
                    Promoted = True;
                    PromotedCategory = Process;
                }
            }
        }
    }

}