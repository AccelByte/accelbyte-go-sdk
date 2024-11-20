// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsResponseDeleteBulkPartySessions Apimodels response delete bulk party sessions
//
// swagger:model Apimodels response delete bulk party sessions.
type ApimodelsResponseDeleteBulkPartySessions struct {

	// error
	// Required: true
	Error *string `json:"error"`

	// id
	// Required: true
	ID *string `json:"id"`
}

// Validate validates this Apimodels response delete bulk party sessions
func (m *ApimodelsResponseDeleteBulkPartySessions) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateError(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsResponseDeleteBulkPartySessions) validateError(formats strfmt.Registry) error {

	if err := validate.Required("error", "body", m.Error); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsResponseDeleteBulkPartySessions) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsResponseDeleteBulkPartySessions) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsResponseDeleteBulkPartySessions) UnmarshalBinary(b []byte) error {
	var res ApimodelsResponseDeleteBulkPartySessions
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
