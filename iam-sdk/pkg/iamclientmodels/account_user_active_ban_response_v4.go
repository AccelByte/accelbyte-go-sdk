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

// AccountUserActiveBanResponseV4 Account user active ban response V4
//
// swagger:model Account user active ban response V4.
type AccountUserActiveBanResponseV4 struct {

	// ban
	// Required: true
	Ban *string `json:"ban"`

	// banid
	// Required: true
	BanID *string `json:"banId"`

	// enddate
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate"`
}

// Validate validates this Account user active ban response V4
func (m *AccountUserActiveBanResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBanID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountUserActiveBanResponseV4) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserActiveBanResponseV4) validateBanID(formats strfmt.Registry) error {

	if err := validate.Required("banId", "body", m.BanID); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserActiveBanResponseV4) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountUserActiveBanResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountUserActiveBanResponseV4) UnmarshalBinary(b []byte) error {
	var res AccountUserActiveBanResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
