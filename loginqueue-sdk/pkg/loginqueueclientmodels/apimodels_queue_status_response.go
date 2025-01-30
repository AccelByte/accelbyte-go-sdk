// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package loginqueueclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsQueueStatusResponse Apimodels queue status response
//
// swagger:model Apimodels queue status response.
type ApimodelsQueueStatusResponse struct {

	// isactive
	// Required: true
	IsActive *bool `json:"isActive"`

	// loggedusercount
	// Required: true
	// Format: int32
	LoggedUserCount *int32 `json:"loggedUserCount"`

	// loginrps
	// Required: true
	// Format: int32
	LoginRPS *int32 `json:"loginRPS"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// queuecount
	// Required: true
	// Format: int32
	QueueCount *int32 `json:"queueCount"`
}

// Validate validates this Apimodels queue status response
func (m *ApimodelsQueueStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoggedUserCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginRPS(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQueueCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsQueueStatusResponse) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("isActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsQueueStatusResponse) validateLoggedUserCount(formats strfmt.Registry) error {

	if err := validate.Required("loggedUserCount", "body", m.LoggedUserCount); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsQueueStatusResponse) validateLoginRPS(formats strfmt.Registry) error {

	if err := validate.Required("loginRPS", "body", m.LoginRPS); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsQueueStatusResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsQueueStatusResponse) validateQueueCount(formats strfmt.Registry) error {

	if err := validate.Required("queueCount", "body", m.QueueCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsQueueStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsQueueStatusResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsQueueStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
