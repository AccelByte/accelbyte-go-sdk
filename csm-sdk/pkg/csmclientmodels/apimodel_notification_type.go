// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelNotificationType Apimodel notification type
//
// swagger:model Apimodel notification type.
type ApimodelNotificationType struct {

	// subcriptionid
	// Required: true
	SubcriptionID *string `json:"subcriptionID"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodel notification type
func (m *ApimodelNotificationType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSubcriptionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelNotificationType) validateSubcriptionID(formats strfmt.Registry) error {

	if err := validate.Required("subcriptionID", "body", m.SubcriptionID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNotificationType) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelNotificationType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelNotificationType) UnmarshalBinary(b []byte) error {
	var res ApimodelNotificationType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
