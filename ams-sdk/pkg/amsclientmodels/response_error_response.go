// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ResponseErrorResponse Response error response
//
// swagger:model Response error response.
type ResponseErrorResponse struct {

	// errormessage
	// Required: true
	ErrorMessage *string `json:"errorMessage"`

	// traceid
	// Required: true
	TraceID *string `json:"traceId"`
}

// Validate validates this Response error response
func (m *ResponseErrorResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateErrorMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTraceID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ResponseErrorResponse) validateErrorMessage(formats strfmt.Registry) error {

	if err := validate.Required("errorMessage", "body", m.ErrorMessage); err != nil {
		return err
	}

	return nil
}

func (m *ResponseErrorResponse) validateTraceID(formats strfmt.Registry) error {

	if err := validate.Required("traceId", "body", m.TraceID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ResponseErrorResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ResponseErrorResponse) UnmarshalBinary(b []byte) error {
	var res ResponseErrorResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
