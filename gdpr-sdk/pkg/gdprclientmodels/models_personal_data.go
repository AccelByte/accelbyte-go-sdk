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

// ModelsPersonalData Models personal data
//
// swagger:model Models personal data.
type ModelsPersonalData struct {

	// dataexpirationdate
	// Required: true
	// Format: date-time
	DataExpirationDate strfmt.DateTime `json:"DataExpirationDate"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// requestdate
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"RequestDate"`

	// serviceerrors
	// Required: true
	ServiceErrors map[string]string `json:"ServiceErrors"`

	// servicestatuses
	// Required: true
	ServiceStatuses map[string]string `json:"ServiceStatuses"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models personal data
func (m *ModelsPersonalData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDataExpirationDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPersonalData) validateDataExpirationDate(formats strfmt.Registry) error {

	if err := validate.Required("DataExpirationDate", "body", strfmt.DateTime(m.DataExpirationDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("DataExpirationDate", "body", "date-time", m.DataExpirationDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("RequestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("RequestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPersonalData) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPersonalData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPersonalData) UnmarshalBinary(b []byte) error {
	var res ModelsPersonalData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
