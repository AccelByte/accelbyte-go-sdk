// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPlayerRecordSizeResponse Models player record size response
//
// swagger:model Models player record size response.
type ModelsPlayerRecordSizeResponse struct {

	// Player record current size
	// Required: true
	// Format: int64
	CurrentSize *int64 `json:"current_size"`

	// Player record identifier
	// Required: true
	Key *string `json:"key"`

	// Namespace of the game
	// Required: true
	Namespace *string `json:"namespace"`

	// Player record remaining size
	// Required: true
	// Format: int64
	RemainingSize *int64 `json:"remaining_size"`

	// User ID who owns the record
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models player record size response
func (m *ModelsPlayerRecordSizeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainingSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPlayerRecordSizeResponse) validateCurrentSize(formats strfmt.Registry) error {

	if err := validate.Required("current_size", "body", m.CurrentSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordSizeResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordSizeResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordSizeResponse) validateRemainingSize(formats strfmt.Registry) error {

	if err := validate.Required("remaining_size", "body", m.RemainingSize); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayerRecordSizeResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerRecordSizeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerRecordSizeResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerRecordSizeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
