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

// FulfillmentScriptInfo Fulfillment script info
//
// swagger:model Fulfillment script info.
type FulfillmentScriptInfo struct {

	// javascript script for grant days, expression expected to return integer, -1 means unlimited. It only execute while there's no endDate specified while do fulfillment
	GrantDays string `json:"grantDays,omitempty"`

	// id
	ID string `json:"id,omitempty"`
}

// Validate validates this Fulfillment script info
func (m *FulfillmentScriptInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentScriptInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentScriptInfo) UnmarshalBinary(b []byte) error {
	var res FulfillmentScriptInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
