page 50111 "Students List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = Students;
    Caption = 'Students List';
    ApplicationArea = All;
    CardPageId = "Students Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field("Date Of Birth"; Rec."Date Of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Of Birth field.';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field("Father Name"; Rec."Father Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Father Name field.';
                }
                field("Mother Name"; Rec."Mother Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mother Name field.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(State; Rec.State)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the State field.';
                }
                field(Country; Rec.Country)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Country field.';
                }
                field(Landmark; Rec.Landmark)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Landmark field.';
                }
                field(School; Rec.School)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the School field.';
                }
                field(College; Rec.College)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the College field.';
                }
                field("SSC Board"; Rec."SSC Board")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SSC Board field.';
                }
                field("HSC Board"; Rec."HSC Board")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HSC Board field.';

                }
                field("SSC %"; Rec."SSC %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SSC % field.';

                }
                field("HSC %"; Rec."HSC %")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the HSC % field.';

                }
                field(Stream; Rec.Stream)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Stream field.';
                }
                field("Admission Date"; Rec."Admission Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Admission Date field.';
                }
                field("Admission Year"; Rec."Admission Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Admission Year field.';
                }
                field(Password; Rec.Password)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Password field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created By field.';
                }
                field("Created At"; Rec."Created At")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Created At field.';
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Modified By field.';
                }
                field("Modified At"; Rec."Modified At")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Modified At field.';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ShowCaption = false;
                }
            }
        }
    }
}
