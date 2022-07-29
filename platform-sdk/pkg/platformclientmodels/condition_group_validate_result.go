// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ConditionGroupValidateResult condition group validate result
//
// swagger:model ConditionGroupValidateResult
type ConditionGroupValidateResult struct {

	// predicate validate details, list of predicate validate results
	PredicateValidateResults []*PredicateValidateResult `json:"predicateValidateResults"`
}

// Validate validates this condition group validate result
func (m *ConditionGroupValidateResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePredicateValidateResults(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ConditionGroupValidateResult) validatePredicateValidateResults(formats strfmt.Registry) error {

	if swag.IsZero(m.PredicateValidateResults) { // not required
		return nil
	}

	for i := 0; i < len(m.PredicateValidateResults); i++ {
		if swag.IsZero(m.PredicateValidateResults[i]) { // not required
			continue
		}

		if m.PredicateValidateResults[i] != nil {
			if err := m.PredicateValidateResults[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("predicateValidateResults" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ConditionGroupValidateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConditionGroupValidateResult) UnmarshalBinary(b []byte) error {
	var res ConditionGroupValidateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
