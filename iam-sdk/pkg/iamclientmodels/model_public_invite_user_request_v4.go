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

// ModelPublicInviteUserRequestV4 Model public invite user request V4
//
// swagger:model Model public invite user request V4.
type ModelPublicInviteUserRequestV4 struct {

	// additionaldata
	AdditionalData string `json:"additionalData,omitempty"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// namespacedisplayname
	// Required: true
	NamespaceDisplayName *string `json:"namespaceDisplayName"`
}

// Validate validates this Model public invite user request V4
func (m *ModelPublicInviteUserRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmailAddress(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespaceDisplayName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPublicInviteUserRequestV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicInviteUserRequestV4) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicInviteUserRequestV4) validateNamespaceDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("namespaceDisplayName", "body", m.NamespaceDisplayName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicInviteUserRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicInviteUserRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelPublicInviteUserRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
