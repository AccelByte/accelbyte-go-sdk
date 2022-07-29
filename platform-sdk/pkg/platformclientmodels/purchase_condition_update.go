// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// PurchaseConditionUpdate A DTO object for creating/updating item purchase condition
//
// swagger:model PurchaseConditionUpdate
type PurchaseConditionUpdate struct {

	// purchase condition
	PurchaseCondition *PurchaseCondition `json:"purchaseCondition,omitempty"`
}

// Validate validates this purchase condition update
func (m *PurchaseConditionUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePurchaseCondition(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PurchaseConditionUpdate) validatePurchaseCondition(formats strfmt.Registry) error {

	if swag.IsZero(m.PurchaseCondition) { // not required
		return nil
	}

	if m.PurchaseCondition != nil {
		if err := m.PurchaseCondition.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("purchaseCondition")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PurchaseConditionUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PurchaseConditionUpdate) UnmarshalBinary(b []byte) error {
	var res PurchaseConditionUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
