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

// ApimodelsDeleteBulkGameSessionRequest Apimodels delete bulk game session request
//
// swagger:model Apimodels delete bulk game session request.
type ApimodelsDeleteBulkGameSessionRequest struct {

	// ids
	// Required: true
	Ids []string `json:"ids"`
}

// Validate validates this Apimodels delete bulk game session request
func (m *ApimodelsDeleteBulkGameSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsDeleteBulkGameSessionRequest) validateIds(formats strfmt.Registry) error {

	if err := validate.Required("ids", "body", m.Ids); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsDeleteBulkGameSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsDeleteBulkGameSessionRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsDeleteBulkGameSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
