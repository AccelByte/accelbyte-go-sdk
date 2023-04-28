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

// RestErrorResponse Rest error response
//
// swagger:model Rest error response.
type RestErrorResponse struct {

	// errorcode
	// Required: true
	// Format: int32
	ErrorCode *int32 `json:"errorCode"`

	// errormessage
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// messagevariables
	MessageVariables map[string]string `json:"messageVariables,omitempty"`
}

// Validate validates this Rest error response
func (m *RestErrorResponse) Validate(formats strfmt.Registry) error {
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

func (m *RestErrorResponse) validateErrorCode(formats strfmt.Registry) error {

	if err := validate.Required("errorCode", "body", m.ErrorCode); err != nil {
		return err
	}

	return nil
}

func (m *RestErrorResponse) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestErrorResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestErrorResponse) UnmarshalBinary(b []byte) error {
	var res RestErrorResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
