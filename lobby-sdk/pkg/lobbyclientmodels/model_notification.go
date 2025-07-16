// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelNotification Model notification
//
// swagger:model Model notification.
type ModelNotification struct {

	// from
	From string `json:"from,omitempty"`

	// payload
	Payload string `json:"payload,omitempty"`

	// sentatms
	// Format: int64
	SentAtMs int64 `json:"sentAtMs,omitempty"`

	// to
	To string `json:"to,omitempty"`

	// topic
	Topic string `json:"topic,omitempty"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Model notification
func (m *ModelNotification) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNotification) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotification) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotification) UnmarshalBinary(b []byte) error {
	var res ModelNotification
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
