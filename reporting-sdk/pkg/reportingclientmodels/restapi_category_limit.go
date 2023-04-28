// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiCategoryLimit Restapi category limit
//
// swagger:model Restapi category limit.
type RestapiCategoryLimit struct {

	// extensioncategory
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// must between 1 to 2147483647
	// Required: true
	// Format: int32
	MaxReportPerTicket *int32 `json:"maxReportPerTicket"`

	// name
	// Required: true
	Name *string `json:"name"`
}

// Validate validates this Restapi category limit
func (m *RestapiCategoryLimit) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxReportPerTicket(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiCategoryLimit) validateMaxReportPerTicket(formats strfmt.Registry) error {

	if err := validate.Required("maxReportPerTicket", "body", m.MaxReportPerTicket); err != nil {
		return err
	}

	return nil
}

func (m *RestapiCategoryLimit) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiCategoryLimit) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiCategoryLimit) UnmarshalBinary(b []byte) error {
	var res RestapiCategoryLimit
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
