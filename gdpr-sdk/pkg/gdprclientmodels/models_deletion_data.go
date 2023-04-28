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

// ModelsDeletionData Models deletion data
//
// swagger:model Models deletion data.
type ModelsDeletionData struct {

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// requestdate
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"RequestDate"`

	// status
	// Required: true
	Status *string `json:"Status"`

	// userid
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this Models deletion data
func (m *ModelsDeletionData) Validate(formats strfmt.Registry) error {
	var res []error

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

func (m *ModelsDeletionData) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionData) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("RequestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("RequestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionData) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("Status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDeletionData) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDeletionData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDeletionData) UnmarshalBinary(b []byte) error {
	var res ModelsDeletionData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
