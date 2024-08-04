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

// FulfillmentStateInfo Fulfillment state info
//
// swagger:model Fulfillment state info.
type FulfillmentStateInfo struct {

	// failedlist
	FailedList []*FulfillItemResult `json:"failedList,omitempty"`

	// successlist
	SuccessList []*FulfillItemResult `json:"successList,omitempty"`
}

// Validate validates this Fulfillment state info
func (m *FulfillmentStateInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentStateInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentStateInfo) UnmarshalBinary(b []byte) error {
	var res FulfillmentStateInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
