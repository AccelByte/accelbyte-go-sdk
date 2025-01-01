// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// DTOPlatformAccountClosureClientRequest Dto platform account closure client request
//
// swagger:model Dto platform account closure client request.
type DTOPlatformAccountClosureClientRequest struct {

	// required for xbox
	BpCert string `json:"bpCert,omitempty"`

	// required for xbox
	BpCertFileName string `json:"bpCertFileName,omitempty"`

	// required for psn
	ClientID string `json:"clientId,omitempty"`

	// required for xbox
	Password string `json:"password,omitempty"`

	// required for steam
	PublisherKey string `json:"publisherKey,omitempty"`

	// required for xbox
	SandboxID string `json:"sandboxId,omitempty"`

	// required for psn
	Secret string `json:"secret,omitempty"`
}

// Validate validates this Dto platform account closure client request
func (m *DTOPlatformAccountClosureClientRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOPlatformAccountClosureClientRequest) UnmarshalBinary(b []byte) error {
	var res DTOPlatformAccountClosureClientRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
