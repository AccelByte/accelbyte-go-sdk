// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ItemReturnRequest Item return request
//
// swagger:model Item return request.
type ItemReturnRequest struct {

	// orderNo
	// Required: true
	OrderNo *string `json:"orderNo"`
}

// Validate validates this Item return request
func (m *ItemReturnRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOrderNo(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemReturnRequest) validateOrderNo(formats strfmt.Registry) error {

	if err := validate.Required("orderNo", "body", m.OrderNo); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemReturnRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemReturnRequest) UnmarshalBinary(b []byte) error {
	var res ItemReturnRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
