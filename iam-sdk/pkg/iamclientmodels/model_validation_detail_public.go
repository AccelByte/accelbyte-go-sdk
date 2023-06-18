// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelValidationDetailPublic Model validation detail public
//
// swagger:model Model validation detail public.
type ModelValidationDetailPublic struct {

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

	// if this config has valid value, will prefer to use and ignore other validation
	AvatarConfig *AccountcommonAvatarConfig `json:"avatarConfig,omitempty"`

	// blockedword
	// Required: true
	BlockedWord []string `json:"blockedWord"`

	// description
	// Required: true
	Description *AccountcommonInputValidationDescription `json:"description"`

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

// Validate validates this Model validation detail public
func (m *ModelValidationDetailPublic) Validate(formats strfmt.Registry) error {
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

func (m *ModelValidationDetailPublic) validateAllowAllSpecialCharacters(formats strfmt.Registry) error {

	if err := validate.Required("allowAllSpecialCharacters", "body", m.AllowAllSpecialCharacters); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateAllowDigit(formats strfmt.Registry) error {

	if err := validate.Required("allowDigit", "body", m.AllowDigit); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateAllowLetter(formats strfmt.Registry) error {

	if err := validate.Required("allowLetter", "body", m.AllowLetter); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateAllowSpace(formats strfmt.Registry) error {

	if err := validate.Required("allowSpace", "body", m.AllowSpace); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateAllowUnicode(formats strfmt.Registry) error {

	if err := validate.Required("allowUnicode", "body", m.AllowUnicode); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateBlockedWord(formats strfmt.Registry) error {

	if err := validate.Required("blockedWord", "body", m.BlockedWord); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	if m.Description != nil {
		if err := m.Description.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("description")
			}
			return err
		}
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateIsCustomRegex(formats strfmt.Registry) error {

	if err := validate.Required("isCustomRegex", "body", m.IsCustomRegex); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateLetterCase(formats strfmt.Registry) error {

	if err := validate.Required("letterCase", "body", m.LetterCase); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateMaxLength(formats strfmt.Registry) error {

	if err := validate.Required("maxLength", "body", m.MaxLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateMaxRepeatingAlphaNum(formats strfmt.Registry) error {

	if err := validate.Required("maxRepeatingAlphaNum", "body", m.MaxRepeatingAlphaNum); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateMaxRepeatingSpecialCharacter(formats strfmt.Registry) error {

	if err := validate.Required("maxRepeatingSpecialCharacter", "body", m.MaxRepeatingSpecialCharacter); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateMinCharType(formats strfmt.Registry) error {

	if err := validate.Required("minCharType", "body", m.MinCharType); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateMinLength(formats strfmt.Registry) error {

	if err := validate.Required("minLength", "body", m.MinLength); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateRegex(formats strfmt.Registry) error {

	if err := validate.Required("regex", "body", m.Regex); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateSpecialCharacterLocation(formats strfmt.Registry) error {

	if err := validate.Required("specialCharacterLocation", "body", m.SpecialCharacterLocation); err != nil {
		return err
	}

	return nil
}

func (m *ModelValidationDetailPublic) validateSpecialCharacters(formats strfmt.Registry) error {

	if err := validate.Required("specialCharacters", "body", m.SpecialCharacters); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelValidationDetailPublic) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelValidationDetailPublic) UnmarshalBinary(b []byte) error {
	var res ModelValidationDetailPublic
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
