// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FulfillmentError Fulfillment error
//
// swagger:model Fulfillment error.
type FulfillmentError struct {

	// error code
	// Format: int32
	Code int32 `json:"code,omitempty"`

	// http status
	// Format: int32
	HTTPStatus int32 `json:"httpStatus,omitempty"`

	// error message
	Message string `json:"message,omitempty"`
}

// Validate validates this Fulfillment error
func (m *FulfillmentError) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentError) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentError) UnmarshalBinary(b []byte) error {
	var res FulfillmentError
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
