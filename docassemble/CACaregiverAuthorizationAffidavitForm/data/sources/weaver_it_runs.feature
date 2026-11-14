Feature: California caregiver affidavit reaches a usable packet

Scenario: School-only use does not require caregiver identification
  Given I start the interview at "caregiver_authorization_affidavit_form_finalwithfields.yml"
  And the user gets to "download caregiver_authorization_affidavit_form_finalwithfields" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | al_intro_screen | True |
    | caregiver_authorization_affidavit_form_finalwithfields_intro | True |
    | user_role_type | authorized_caregiver |
    | user_age | True |
    | users[0].name.first | Avery |
    | users[0].name.last | Applicant |
    | users[0].address.address | 123 Test Street |
    | users[0].address.city | Los Angeles |
    | users[0].address.state | CA |
    | users[0].address.zip | 90012 |
    | children[0].name.first | Casey |
    | children[0].name.last | Child |
    | children[0].birthdate | 09/30/2016 |
    | signature_date | 11/14/2026 |
    | caregiver_authorization_affidavit_form_finalwithfields_preview_question | True |
    | caregiver_purpose | school |
    | caregiver_signing_method | paper |

Scenario: Relative caregiver confirms inability to contact and signs electronically
  Given I start the interview at "caregiver_authorization_affidavit_form_finalwithfields.yml"
  And the user gets to "download caregiver_authorization_affidavit_form_finalwithfields" with this data:
    | var | value |
    | acknowledged_information_use | True |
    | al_intro_screen | True |
    | caregiver_authorization_affidavit_form_finalwithfields_intro | True |
    | user_role_type | helper |
    | user_age | True |
    | users[0].name.first | Avery |
    | users[0].name.last | Applicant |
    | users[0].address.address | 123 Test Street |
    | users[0].address.city | Los Angeles |
    | users[0].address.state | CA |
    | users[0].address.zip | 90012 |
    | children[0].name.first | Casey |
    | children[0].name.last | Child |
    | children[0].birthdate | 09/30/2016 |
    | signature_date | 11/14/2026 |
    | caregiver_authorization_affidavit_form_finalwithfields_preview_question | True |
    | caregiver_purpose | medical |
    | users_is_relative_yes | True |
    | users_advised_parents_yes | False |
    | users_unable_to_contact_parents_yes | True |
    | users[0].birthdate | 04/05/1985 |
    | caregiver_id_type | cdl |
    | caregiver_cdl_number | D1234567 |
    | caregiver_signing_method | electronic |
    | caregiver_signing_screen | True |
    | signature_choice | typed_signature |
    | saw_signature_choice | True |
    | users[0].typed_signature | Avery Applicant |
