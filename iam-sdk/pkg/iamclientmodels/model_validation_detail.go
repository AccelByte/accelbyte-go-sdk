// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelValidationDetail Model validation detail
//
// swagger:model Model validation detail.
type ModelValidationDetail struct {

	// allowallspecialcharacters
	// Required: true
	AllowAllSpecialCharacters *bool `json:"allowAllSpecialCharacters"`

	// allowdigit
	// Required: true
	AllowDigit *bool `json:"allowDigit"`

	// allowletter
	// Required: true
	AllowLetter *bool `json:"allowLetter"`

	// allowspace
	// Required: true
	AllowSpace *bool `json:"allowSpace"`

	// allowunicode
	// Required: true
	AllowUnicode *bool `json:"allowUnicode"`

	// blockedword
	// Required: true
	BlockedWord []string `json:"blockedWord"`

	// description
	// Required: true
	Description []*AccountcommonInputValidationDescription `json:"description"`

	// iscustomregex
	// Required: true
	IsCustomRegex *bool `json:"isCustomRegex"`

	// lettercase
	// Required: true
	LetterCase *string `json:"letterCase"`

	// maxlength
	// Required: true
	// Format: int32
	MaxLength *int32 `json:"maxLength"`

	// maxrepeatingalphanum
	// Required: true
	// Format: int32
	MaxRepeatingAlphaNum *int32 `json:"maxRepeatingAlphaNum"`

	// maxrepeatingspecialcharacter
	// Required: true
	// Format: int32
	MaxRepeatingSpecialCharacter *int32 `json:"maxRepeatingSpecialCharacter"`

	// minchartype
	// Required: true
	// Format: int32
	MinCharType *int32 `json:"minCharType"`

	// minlength
	// Required: true
	// Format: int32
	MinLength *int32 `json:"minLength"`

	// regex
	// Required: true
	Regex *string `json:"regex"`

	// specialcharacterlocation
	// Required: true
	SpecialCharacterLocation *string `json:"specialCharacterLocation"`

	// specialcharacters
	// Required: true
	SpecialCharacters []string `json:"specialCharacters"`
}

// Validate validates this Model validation detail
func (m *ModelValidationDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAllowAllSpecialCharacters(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllowDigit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllowLetter(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllowSpace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAllowUnicode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBlockedWord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsCustomRegex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLetterCase(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxLength(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxRepeatingAlphaNum(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxRepeatingSpecialCharacter(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinCharType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinLength(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpecialCharacterLocation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSpecialCharacters(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelValidationDetail) validateAllowAllSpecialCharacters(formats strfmt.Registry) error {

	if err := validate.Required("allowAllSpecialCharacters", "body", m.AllowAllSpecialCharacters); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateAllowDigit(formats strfmt.Registry) error {

	if err := validate.Required("allowDigit", "body", m.AllowDigit); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateAllowLetter(formats strfmt.Registry) error {

	if err := validate.Required("allowLetter", "body", m.AllowLetter); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateAllowSpace(formats strfmt.Registry) error {

	if err := validate.Required("allowSpace", "body", m.AllowSpace); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateAllowUnicode(formats strfmt.Registry) error {

	if err := validate.Required("allowUnicode", "body", m.AllowUnicode); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateBlockedWord(formats strfmt.Registry) error {

	if err := validate.Required("blockedWord", "body", m.BlockedWord); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	for i := 0; i < len(m.Description); i++ {
		if swag.IsZero(m.Description[i]) { // not required
			continue
		}

		if m.Description[i] != nil {
			if err := m.Description[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("description" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelValidationDetail) validateIsCustomRegex(formats strfmt.Registry) error {

	if err := validate.Required("isCustomRegex", "body", m.IsCustomRegex); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateLetterCase(formats strfmt.Registry) error {

	if err := validate.Required("letterCase", "body", m.LetterCase); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateMaxLength(formats strfmt.Registry) error {

	if err := validate.Required("maxLength", "body", m.MaxLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateMaxRepeatingAlphaNum(formats strfmt.Registry) error {

	if err := validate.Required("maxRepeatingAlphaNum", "body", m.MaxRepeatingAlphaNum); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateMaxRepeatingSpecialCharacter(formats strfmt.Registry) error {

	if err := validate.Required("maxRepeatingSpecialCharacter", "body", m.MaxRepeatingSpecialCharacter); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateMinCharType(formats strfmt.Registry) error {

	if err := validate.Required("minCharType", "body", m.MinCharType); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateMinLength(formats strfmt.Registry) error {

	if err := validate.Required("minLength", "body", m.MinLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateRegex(formats strfmt.Registry) error {

	if err := validate.Required("regex", "body", m.Regex); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateSpecialCharacterLocation(formats strfmt.Registry) error {

	if err := validate.Required("specialCharacterLocation", "body", m.SpecialCharacterLocation); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetail) validateSpecialCharacters(formats strfmt.Registry) error {

	if err := validate.Required("specialCharacters", "body", m.SpecialCharacters); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelValidationDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelValidationDetail) UnmarshalBinary(b []byte) error {
	var res ModelValidationDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
