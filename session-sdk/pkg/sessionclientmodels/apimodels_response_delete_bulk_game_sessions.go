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

// ApimodelsResponseDeleteBulkGameSessions Apimodels response delete bulk game sessions
//
// swagger:model Apimodels response delete bulk game sessions.
type ApimodelsResponseDeleteBulkGameSessions struct {

	// error
	// Required: true
	Error *string `json:"error"`

	// id
	// Required: true
	ID *string `json:"id"`
}

// Validate validates this Apimodels response delete bulk game sessions
func (m *ApimodelsResponseDeleteBulkGameSessions) Validate(formats strfmt.Registry) error {
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

func (m *ApimodelsResponseDeleteBulkGameSessions) validateError(formats strfmt.Registry) error {

	if err := validate.Required("error", "body", m.Error); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsResponseDeleteBulkGameSessions) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsResponseDeleteBulkGameSessions) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsResponseDeleteBulkGameSessions) UnmarshalBinary(b []byte) error {
	var res ApimodelsResponseDeleteBulkGameSessions
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
