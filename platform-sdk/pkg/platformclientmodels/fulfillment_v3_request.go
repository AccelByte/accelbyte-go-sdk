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

// FulfillmentV3Request Fulfillment V3 request
//
// swagger:model Fulfillment V3 request.
type FulfillmentV3Request struct {

	// items
	Items []*FulfillmentV2RequestItem `json:"items,omitempty"`

	// transactionId
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this Fulfillment V3 request
func (m *FulfillmentV3Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentV3Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentV3Request) UnmarshalBinary(b []byte) error {
	var res FulfillmentV3Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
