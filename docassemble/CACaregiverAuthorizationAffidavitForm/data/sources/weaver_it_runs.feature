Feature: caregiver_authorization_affidavit_form_finalwithfields.yml runs to completion

Scenario: caregiver_authorization_affidavit_form_finalwithfields.yml runs to completion
  Given I start the interview at "caregiver_authorization_affidavit_form_finalwithfields.yml"
  And I check all pages for accessibility issues
  And the user gets to "download caregiver_authorization_affidavit_form_finalwithfields" with this data:
    | var | value |
    | users1_address_full | Sample answer |
    | users1_id_number | Sample answer |
    | users1_signature_date | 01/02/2026 |
    | users_is_relative_yes | True |
    | users_advised_parents_yes | True |
    | users_unable_to_contact_parents_yes | True |
    | children[0].name.first | Jane |
    | children[0].name.middle | Sample answer |
    | children[0].name.last | Smith |
    | children[0].name.suffix | Jr. |
    | users[0].name.first | Jane |
    | users[0].name.middle | Sample answer |
    | users[0].name.last | Smith |
    | users[0].name.suffix | Jr. |
    | user_ask_role | Sample answer |
    | users.target_number | 1 |
    | children.target_number | 1 |
    | children[0].birthdate | Sample answer |
    | users[0].birthdate | Sample answer |
    | interview_order_caregiver_authorization_affidavit_form_finalwithfields | True |
    | caregiver_authorization_affidavit_form_finalwithfields_intro | Sample answer |
    | signature_date | Sample answer |
    | caregiver_authorization_affidavit_form_finalwithfields_preview_question | Sample answer |
    | basic_questions_signature_flow | Sample answer |
    | caregiver_authorization_affidavit_form_finalwithfields_download | Sample answer |
    | caregiver_authorization_affidavit_form_finalwithfields_intro | True |
    | caregiver_authorization_affidavit_form_finalwithfields_preview_question | True |
    | users.revisit | True |
    | children.revisit | True |