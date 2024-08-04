// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ErrorEntity Error entity
//
// swagger:model Error entity.
type ErrorEntity struct {

	// internal server error stack trace in configured environment
	DevStackTrace string `json:"devStackTrace,omitempty"`

	// numeric error code
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"errorCode"`

	// error message
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// message variables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`

	// requiredpermission
	RequiredPermission *Permission `json:"requiredPermission,omitempty"`
}

// Validate validates this Error entity
func (m *ErrorEntity) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrorCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ErrorEntity) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *ErrorEntity) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ErrorEntity) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ErrorEntity) UnmarshalBinary(b []byte) error {
	var res ErrorEntity
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
