// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUserResponse Apimodels user response
//
// swagger:model Apimodels user response.
type ApimodelsUserResponse struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`

	// status
	// Required: true
	Status *string `json:"status"`

	// statusv2
	// Required: true
	StatusV2 *string `json:"statusV2"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Apimodels user response
func (m *ApimodelsUserResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusV2(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUserResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validateStatusV2(formats strfmt.Registry) error {

	if err := validate.Required("statusV2", "body", m.StatusV2); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUserResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUserResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsUserResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
