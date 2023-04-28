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

// ModelBanUpdateRequest Model ban update request
//
// swagger:model Model ban update request.
type ModelBanUpdateRequest struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// skipnotif
	// Required: true
	SkipNotif *bool `json:"skipNotif"`
}

// Validate validates this Model ban update request
func (m *ModelBanUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSkipNotif(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBanUpdateRequest) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelBanUpdateRequest) validateSkipNotif(formats strfmt.Registry) error {

	if err := validate.Required("skipNotif", "body", m.SkipNotif); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBanUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBanUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelBanUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
