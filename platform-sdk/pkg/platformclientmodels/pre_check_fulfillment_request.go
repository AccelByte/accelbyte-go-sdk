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

// PreCheckFulfillmentRequest Pre check fulfillment request
//
// swagger:model Pre check fulfillment request.
type PreCheckFulfillmentRequest struct {

	// itemId
	ItemID string `json:"itemId,omitempty"`

	// itemSku
	ItemSku string `json:"itemSku,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`
}

// Validate validates this Pre check fulfillment request
func (m *PreCheckFulfillmentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PreCheckFulfillmentRequest) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PreCheckFulfillmentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PreCheckFulfillmentRequest) UnmarshalBinary(b []byte) error {
	var res PreCheckFulfillmentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
