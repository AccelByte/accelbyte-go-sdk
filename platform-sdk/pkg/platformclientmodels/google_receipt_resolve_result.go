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

// GoogleReceiptResolveResult Google receipt resolve result
//
// swagger:model Google receipt resolve result.
type GoogleReceiptResolveResult struct {

	// if client side need consume this receipt's product by invoke Google Billing client's consumeAsync
	NeedConsume bool `json:"needConsume"`
}

// Validate validates this Google receipt resolve result
func (m *GoogleReceiptResolveResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GoogleReceiptResolveResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GoogleReceiptResolveResult) UnmarshalBinary(b []byte) error {
	var res GoogleReceiptResolveResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
