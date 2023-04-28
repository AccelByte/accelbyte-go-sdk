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

// FulfillmentScriptEvalTestResult Fulfillment script eval test result
//
// swagger:model Fulfillment script eval test result.
type FulfillmentScriptEvalTestResult struct {

	// errorstacktrace
	ErrorStackTrace string `json:"errorStackTrace,omitempty"`

	// result
	Result interface{} `json:"result,omitempty"`
}

// Validate validates this Fulfillment script eval test result
func (m *FulfillmentScriptEvalTestResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentScriptEvalTestResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentScriptEvalTestResult) UnmarshalBinary(b []byte) error {
	var res FulfillmentScriptEvalTestResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
