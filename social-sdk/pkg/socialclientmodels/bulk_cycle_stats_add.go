// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// BulkCycleStatsAdd Bulk cycle stats add
//
// swagger:model Bulk cycle stats add.
type BulkCycleStatsAdd struct {

	// statcodes
	// Required: true
	StatCodes []string `json:"statCodes"`
}

// Validate validates this Bulk cycle stats add
func (m *BulkCycleStatsAdd) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCodes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *BulkCycleStatsAdd) validateStatCodes(formats strfmt.Registry) error {

	if err := validate.Required("statCodes", "body", m.StatCodes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *BulkCycleStatsAdd) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkCycleStatsAdd) UnmarshalBinary(b []byte) error {
	var res BulkCycleStatsAdd
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
