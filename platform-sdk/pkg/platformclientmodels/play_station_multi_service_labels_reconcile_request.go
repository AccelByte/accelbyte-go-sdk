// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PlayStationMultiServiceLabelsReconcileRequest play station multi service labels reconcile request
//
// swagger:model PlayStationMultiServiceLabelsReconcileRequest
type PlayStationMultiServiceLabelsReconcileRequest struct {

	// product price currency
	CurrencyCode string `json:"currencyCode,omitempty"`

	// product price
	Price float64 `json:"price,omitempty"`

	// productId
	ProductID string `json:"productId,omitempty"`

	// service labels
	// Unique: true
	ServiceLabels []int32 `json:"serviceLabels"`
}

// Validate validates this play station multi service labels reconcile request
func (m *PlayStationMultiServiceLabelsReconcileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateServiceLabels(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlayStationMultiServiceLabelsReconcileRequest) validateServiceLabels(formats strfmt.Registry) error {

	if swag.IsZero(m.ServiceLabels) { // not required
		return nil
	}

	if err := validate.UniqueItems("serviceLabels", "body", m.ServiceLabels); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationMultiServiceLabelsReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationMultiServiceLabelsReconcileRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationMultiServiceLabelsReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}