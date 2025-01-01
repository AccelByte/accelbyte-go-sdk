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

// DTOPlatformAccountClosureClientResponse Dto platform account closure client response
//
// swagger:model Dto platform account closure client response.
type DTOPlatformAccountClosureClientResponse struct {

	// bpcertexpireat
	// Format: int64
	BpCertExpireAt int64 `json:"bpCertExpireAt,omitempty"`

	// bpcertfilename
	BpCertFileName string `json:"bpCertFileName,omitempty"`

	// clientid
	ClientID string `json:"clientId,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform
	// Required: true
	Platform *string `json:"platform"`

	// publisherkey
	PublisherKey string `json:"publisherKey,omitempty"`

	// sandboxid
	SandboxID string `json:"sandboxId,omitempty"`

	// secret
	Secret string `json:"secret,omitempty"`

	// updatedat
	// Required: true
	// Format: int64
	UpdatedAt *int64 `json:"updatedAt"`
}

// Validate validates this Dto platform account closure client response
func (m *DTOPlatformAccountClosureClientResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
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

func (m *DTOPlatformAccountClosureClientResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *DTOPlatformAccountClosureClientResponse) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

func (m *DTOPlatformAccountClosureClientResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientResponse) UnmarshalBinary(b []byte) error {
	var res DTOPlatformAccountClosureClientResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
