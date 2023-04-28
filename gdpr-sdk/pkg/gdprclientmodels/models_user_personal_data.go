// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserPersonalData Models user personal data
//
// swagger:model Models user personal data.
type ModelsUserPersonalData struct {

	// dataexpirationdate
	// Required: true
	// Format: date-time
	DataExpirationDate strfmt.DateTime `json:"DataExpirationDate"`

	// requestdate
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"RequestDate"`

	// status
	// Required: true
	Status *string `json:"Status"`
}

// Validate validates this Models user personal data
func (m *ModelsUserPersonalData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDataExpirationDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserPersonalData) validateDataExpirationDate(formats strfmt.Registry) error {

	if err := validate.Required("DataExpirationDate", "body", strfmt.DateTime(m.DataExpirationDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("DataExpirationDate", "body", "date-time", m.DataExpirationDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserPersonalData) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("RequestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("RequestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUserPersonalData) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserPersonalData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserPersonalData) UnmarshalBinary(b []byte) error {
	var res ModelsUserPersonalData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
