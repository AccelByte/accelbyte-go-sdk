// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GoogleIAPConfigInfo Google IAP config info
//
// swagger:model Google IAP config info.
type GoogleIAPConfigInfo struct {

	// applicationName
	ApplicationName string `json:"applicationName,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// notificationTokenAudience, it's used to verify the aud in the notification jwt token, empty will skip to validate aud
	NotificationTokenAudience string `json:"notificationTokenAudience,omitempty"`

	// notificationTokenEmail, it's used to verify the email in the notification jwt token,empty will skip to validate email
	NotificationTokenEmail string `json:"notificationTokenEmail,omitempty"`

	// p12 file
	P12FileName string `json:"p12FileName,omitempty"`

	// package name
	PackageName string `json:"packageName,omitempty"`

	// serviceAccountId
	ServiceAccountID string `json:"serviceAccountId,omitempty"`
}

// Validate validates this Google IAP config info
func (m *GoogleIAPConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GoogleIAPConfigInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GoogleIAPConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GoogleIAPConfigInfo) UnmarshalBinary(b []byte) error {
	var res GoogleIAPConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
