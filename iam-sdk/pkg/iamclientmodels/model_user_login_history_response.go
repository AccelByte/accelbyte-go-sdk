// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserLoginHistoryResponse Model user login history response
//
// swagger:model Model user login history response.
type ModelUserLoginHistoryResponse struct {

	// applicationname
	// Required: true
	ApplicationName *string `json:"ApplicationName"`

	// city
	// Required: true
	City *string `json:"City"`

	// country
	// Required: true
	Country *string `json:"Country"`

	// deviceid
	// Required: true
	DeviceID *string `json:"DeviceId"`

	// state
	// Required: true
	State *string `json:"State"`

	// timestamp
	// Required: true
	// Format: int64
	Timestamp *int64 `json:"Timestamp"`

	// devicename
	// Required: true
	DeviceName *string `json:"deviceName"`
}

// Validate validates this Model user login history response
func (m *ModelUserLoginHistoryResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateApplicationName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeviceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeviceName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserLoginHistoryResponse) validateApplicationName(formats strfmt.Registry) error {

	if err := validate.Required("ApplicationName", "body", m.ApplicationName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateCity(formats strfmt.Registry) error {

	if err := validate.Required("City", "body", m.City); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("Country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateDeviceID(formats strfmt.Registry) error {

	if err := validate.Required("DeviceId", "body", m.DeviceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateState(formats strfmt.Registry) error {

	if err := validate.Required("State", "body", m.State); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("Timestamp", "body", m.Timestamp); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserLoginHistoryResponse) validateDeviceName(formats strfmt.Registry) error {

	if err := validate.Required("deviceName", "body", m.DeviceName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserLoginHistoryResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserLoginHistoryResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserLoginHistoryResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
