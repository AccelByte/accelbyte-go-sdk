// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// InvoiceSummary Invoice summary
//
// swagger:model Invoice summary.
type InvoiceSummary struct {

	// invoice currency summary
	// Required: true
	InvoiceCurrencySummary []*InvoiceCurrencySummary `json:"invoiceCurrencySummary"`

	// total sales volume
	// Required: true
	// Format: int64
	TotalSalesVolume *int64 `json:"totalSalesVolume"`
}

// Validate validates this Invoice summary
func (m *InvoiceSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInvoiceCurrencySummary(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalSalesVolume(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *InvoiceSummary) validateInvoiceCurrencySummary(formats strfmt.Registry) error {

	if err := validate.Required("invoiceCurrencySummary", "body", m.InvoiceCurrencySummary); err != nil {
		return err
	}

	for i := 0; i < len(m.InvoiceCurrencySummary); i++ {
		if swag.IsZero(m.InvoiceCurrencySummary[i]) { // not required
			continue
		}

		if m.InvoiceCurrencySummary[i] != nil {
			if err := m.InvoiceCurrencySummary[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("invoiceCurrencySummary" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *InvoiceSummary) validateTotalSalesVolume(formats strfmt.Registry) error {

	if err := validate.Required("totalSalesVolume", "body", m.TotalSalesVolume); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *InvoiceSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *InvoiceSummary) UnmarshalBinary(b []byte) error {
	var res InvoiceSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
