// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiReportingLimit Restapi reporting limit
//
// swagger:model Restapi reporting limit.
type RestapiReportingLimit struct {

	// categorylimits
	// Required: true
	CategoryLimits []*RestapiCategoryLimit `json:"categoryLimits"`

	// the unit is nanoseconds, must between 1 to 6000000 seconds
	// Required: true
	// Format: int64
	TimeInterval *int64 `json:"timeInterval"`

	// must between 1 to 2147483647
	// Required: true
	// Format: int32
	UserMaxReportPerTimeInterval *int32 `json:"userMaxReportPerTimeInterval"`
}

// Validate validates this Restapi reporting limit
func (m *RestapiReportingLimit) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryLimits(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimeInterval(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserMaxReportPerTimeInterval(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiReportingLimit) validateCategoryLimits(formats strfmt.Registry) error {

	if err := validate.Required("categoryLimits", "body", m.CategoryLimits); err != nil {
		return err
	}

	for i := 0; i < len(m.CategoryLimits); i++ {
		if swag.IsZero(m.CategoryLimits[i]) { // not required
			continue
		}

		if m.CategoryLimits[i] != nil {
			if err := m.CategoryLimits[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("categoryLimits" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *RestapiReportingLimit) validateTimeInterval(formats strfmt.Registry) error {

	if err := validate.Required("timeInterval", "body", m.TimeInterval); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportingLimit) validateUserMaxReportPerTimeInterval(formats strfmt.Registry) error {

	if err := validate.Required("userMaxReportPerTimeInterval", "body", m.UserMaxReportPerTimeInterval); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiReportingLimit) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiReportingLimit) UnmarshalBinary(b []byte) error {
	var res RestapiReportingLimit
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
