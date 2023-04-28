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

// ModelUserActiveBanResponse Model user active ban response
//
// swagger:model Model user active ban response.
type ModelUserActiveBanResponse struct {

	// ban
	// Required: true
	Ban *string `json:"Ban"`

	// banid
	// Required: true
	BanID *string `json:"BanId"`

	// enddate
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"EndDate"`
}

// Validate validates this Model user active ban response
func (m *ModelUserActiveBanResponse) Validate(formats strfmt.Registry) error {
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

func (m *ModelUserActiveBanResponse) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("Ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserActiveBanResponse) validateBanID(formats strfmt.Registry) error {

	if err := validate.Required("BanId", "body", m.BanID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserActiveBanResponse) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("EndDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("EndDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserActiveBanResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserActiveBanResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserActiveBanResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
