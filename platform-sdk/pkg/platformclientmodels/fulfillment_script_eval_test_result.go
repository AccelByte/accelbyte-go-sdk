// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// FulfillmentScriptEvalTestResult fulfillment script eval test result
//
// swagger:model FulfillmentScriptEvalTestResult
type FulfillmentScriptEvalTestResult struct {

	// error stack trace
	ErrorStackTrace string `json:"errorStackTrace,omitempty"`

	// result
	Result interface{} `json:"result,omitempty"`
}

// Validate validates this fulfillment script eval test result
func (m *FulfillmentScriptEvalTestResult) Validate(formats strfmt.Registry) error {
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