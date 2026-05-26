// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelIntegrationCredentialInfo Apimodel integration credential info
//
// swagger:model Apimodel integration credential info.
type ApimodelIntegrationCredentialInfo struct {

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// owner
	// Required: true
	Owner *string `json:"owner"`

	// recommendedmaxagedays
	// Required: true
	// Format: int32
	RecommendedMaxAgeDays *int32 `json:"recommendedMaxAgeDays"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Apimodel integration credential info
func (m *ApimodelIntegrationCredentialInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOwner(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRecommendedMaxAgeDays(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelIntegrationCredentialInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationCredentialInfo) validateOwner(formats strfmt.Registry) error {

	if err := validate.Required("owner", "body", m.Owner); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationCredentialInfo) validateRecommendedMaxAgeDays(formats strfmt.Registry) error {

	if err := validate.Required("recommendedMaxAgeDays", "body", m.RecommendedMaxAgeDays); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationCredentialInfo) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelIntegrationCredentialInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelIntegrationCredentialInfo) UnmarshalBinary(b []byte) error {
	var res ApimodelIntegrationCredentialInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
