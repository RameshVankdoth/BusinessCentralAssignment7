# Assignment 7 - Student Information System

This project is part of **Assignment 7** and focuses on creating a **Student Information System** with structured data fields, validation rules, and form behaviors.

---

## Tasks Implemented

### Task 1: Create Student Table

A table named `Student` is created with the following fields:

| Field Name       | Data Type    |
|------------------|--------------|
| ID               | Code[20]     |
| Name             | Text         |
| Last Name        | Text         |
| Father Name      | Text         |
| Mother Name      | Text         |
| Gender           | Enum         |
| Date Of Birth    | Date         |
| Age              | Integer      |
| Address          | Text         |
| Post Code        | Code         |
| City             | Text         |
| State            | Text         |
| Country          | Text         |
| Landmark         | Text         |
| School           | Text         |
| College          | Text         |
| SSC Board        | Text         |
| HSC Board        | Text         |
| SSC %            | Decimal      |
| HSC %            | Decimal      |
| Stream           | Enum         |
| Admission Date   | Date         |
| Admission Year   | Integer      |
| Picture          | Blob         |
| Password         | Text         |
| Create By        | Text[50]     |
| Created At       | DateTime     |
| Modified By      | Text[50]     |
| Modified At      | DateTime     |

---

## Functional Requirements & Validations

### Card/List Page
- A list or card view is created to display student records.

### Percentage Field Validation
- **SSC %** cannot be entered if **SSC Board** is blank.
- **HSC %** cannot be entered if **HSC Board** is blank.

###  Post Code Lookup (Half Done)
- On entering **Post Code**, it should auto-fill:
  - **City**
  - **State**
  - **Country**

> **Note:** Needs clarity on how the lookup should work (API or predefined dataset?).

### Audit Fields Auto-Fill
- On **Record Insertion**:
  - `Created By` and `Created At` should auto-populate.
- On **Record Modification**:
  - `Modified By` and `Modified At` should auto-update.

> **Note:** Needs clarification on whether values are system-generated or entered manually.

### Deletion Restriction
- If **Name** is entered, the record **cannot be deleted**.

### Rename Restriction
- Records **cannot be renamed** once created.

---

## Issues & Clarifications Needed

- **Postcode Lookup**: Functionality is partially complete. Need clarity on:
  - Format
  - Source of data (external API or internal DB)

- **Audit Fields**:
  - Should values like `Created By`/`Modified By` come from the logged-in user?

- **Primary Key Issue**:
  - The system is taking a value like "Ramesh" as the primary key.
  - **Expected:** The `ID` field (Code[20]) should be the primary key.

---

## Summary

This assignment demonstrates:
- How to structure a complex data table
- Implement field-level validations
- Enforce record-level restrictions (no delete, no rename)
- Handle metadata for record creation/modification
- Prepare for UI interactions like auto-filling and list display

---

## To-Do

- [!NOTE] Complete Post Code lookup implementation
- [!NOTE] Clarify system-generated vs. manual audit fields
- [!NOTE] Fix primary key misconfiguration (should use `ID`)

---

