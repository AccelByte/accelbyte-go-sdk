// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMatchAttributes Models match attributes
//
// swagger:model Models match attributes.
type ModelsMatchAttributes struct {

	// first_ticket_created_at
	// Required: true
	// Format: int64
	FirstTicketCreatedAt *int64 `json:"first_ticket_created_at"`
}

// Validate validates this Models match attributes
func (m *ModelsMatchAttributes) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFirstTicketCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMatchAttributes) validateFirstTicketCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("first_ticket_created_at", "body", m.FirstTicketCreatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchAttributes) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchAttributes) UnmarshalBinary(b []byte) error {
	var res ModelsMatchAttributes
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
