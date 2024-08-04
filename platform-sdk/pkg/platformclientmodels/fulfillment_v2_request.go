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

// FulfillmentV2Request Fulfillment V2 request
//
// swagger:model Fulfillment V2 request.
type FulfillmentV2Request struct {

	// items
	Items []*FulfillmentV2RequestItem `json:"items,omitempty"`
}

// Validate validates this Fulfillment V2 request
func (m *FulfillmentV2Request) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentV2Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentV2Request) UnmarshalBinary(b []byte) error {
	var res FulfillmentV2Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
