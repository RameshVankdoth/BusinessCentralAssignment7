table 50101 "Students"
{
    DataClassification = ToBeClassified;
    Caption = 'Student Table Data';


    fields
    {
        field(1; ID; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
            // trigger OnValidate()
            // begin
            //     if Rec.Name <> '' then 

            // end;
        }
        field(3; "Last Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Father Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Mother Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(6; Gender; Enum Gender)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Date Of Birth"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Age; Integer)
        {
            DataClassification = ToBeClassified;
            InitValue = 18;
            MinValue = 18;
            MaxValue = 25;
        }
        field(9; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Post Code"; Code[20])
        {
            DataClassification = ToBeClassified;

            // TableRelation = "Post Code";

            trigger OnLookup()
            var
                data: Record "Post Code"; //It needs 2 primary keys
            begin
                data.Get(Rec."Post Code");
                // City := data.City;
                // State := 'No State in table';
                Country := data."Country/Region Code";
            end;
        }
        field(11; City; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(12; State; Text[100])
        {
            DataClassification = ToBeClassified;

        }
        field(13; Country; Text[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(14; Landmark; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(15; School; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(16; College; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "SSC Board"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "HSC Board"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(19; "SSC %"; Decimal)
        {
            DataClassification = ToBeClassified;
            BlankZero = true;
            MinValue = 0;
            MaxValue = 100;
            trigger OnValidate()
            begin
                if Rec."SSC Board" = '' then
                    Error('Please add SSC Board first.');
            end;
        }
        field(20; "HSC %"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 2;
            MinValue = 0;
            MaxValue = 100;
            trigger OnValidate()
            begin
                if Rec."HSC Board" = '' then
                    Error('Please add HSC Board first.');
            end;
        }
        field(21; Stream; Enum Stream)
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Admission Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Admission Year"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(24; Picture; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(25; Password; Text[100])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = Masked;
        }
        field(26; "Created By"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Created At"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
        field(28; "Modified By"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Modified At"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        // dt: datetime;
        cb: Text[100];
    begin
        //Since the date is different data type i was not able to show it
        // dt := Rec."Created At";
        // Message(dt);
        Message(Rec."Created By");
    end;

    trigger OnModify()
    begin
        // Message(Rec."Modified At"); same way cannot show need to use format
        Message('Modified by', Rec."Modified By");
    end;

    trigger OnRename()
    begin
        Error('Renaming student records is not allowed.');
    end;

    trigger OnDelete()
    begin
        if Name <> '' then
            Error('Cannot delete record because Name is entered.');
    end;


}
