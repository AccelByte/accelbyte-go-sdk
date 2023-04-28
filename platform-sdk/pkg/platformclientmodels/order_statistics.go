// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// OrderStatistics Order statistics
//
// swagger:model Order statistics.
type OrderStatistics struct {

	// Status count
	// Required: true
	StatusCount map[string]int64 `json:"statusCount"`

	// Total
	// Required: true
	// Format: int64
	Total *int64 `json:"total"`
}

// Validate validates this Order statistics
func (m *OrderStatistics) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTotal(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OrderStatistics) validateTotal(formats strfmt.Registry) error {

	if err := validate.Required("total", "body", m.Total); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OrderStatistics) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OrderStatistics) UnmarshalBinary(b []byte) error {
	var res OrderStatistics
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
