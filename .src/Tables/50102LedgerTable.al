table 50102 "Retailer Stock Ledger Entry"
{
    DataClassification = ToBeClassified;
    Caption = 'Retailer Stock Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Posting Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Document Type"; option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = " ","Sales Invoice","Credit Memo","SellOut";
        }
        field(4; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Customer No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Item Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Variant; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Item Category"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Location; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(12; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Unit of Measure"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(14; Amount; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "VAT Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Amount Incl Tax"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Serial No."; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(18; Open; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
    trigger OnDelete()
    begin
        Error('Cannot delete Retailer Stock Ledger Entry records.');
    end;
}
