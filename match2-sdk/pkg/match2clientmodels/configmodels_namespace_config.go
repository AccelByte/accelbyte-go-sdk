// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ConfigmodelsNamespaceConfig Configmodels namespace config
//
// swagger:model Configmodels namespace config.
type ConfigmodelsNamespaceConfig struct {

	// crossplatformnocurrentplatform
	CrossPlatformNoCurrentPlatform bool `json:"crossPlatformNoCurrentPlatform"`

	// extraplatforms
	ExtraPlatforms []string `json:"extraPlatforms,omitempty"`

	// matchanycommon
	MatchAnyCommon bool `json:"matchAnyCommon"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platformgroup
	PlatformGroup map[string][]string `json:"platformGroup,omitempty"`
}

// Validate validates this Configmodels namespace config
func (m *ConfigmodelsNamespaceConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ConfigmodelsNamespaceConfig) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ConfigmodelsNamespaceConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ConfigmodelsNamespaceConfig) UnmarshalBinary(b []byte) error {
	var res ConfigmodelsNamespaceConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
