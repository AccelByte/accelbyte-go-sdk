// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIPatchNamespaceConfigRequest Api patch namespace config request
//
// swagger:model Api patch namespace config request.
type APIPatchNamespaceConfigRequest struct {

	// crossplatformnocurrentplatform
	CrossPlatformNoCurrentPlatform bool `json:"crossPlatformNoCurrentPlatform"`

	// additional platforms that will be included in the cross_platform attribute alongside the login method
	ExtraPlatforms []string `json:"extraPlatforms,omitempty"`

	// matchanycommon
	MatchAnyCommon bool `json:"matchAnyCommon"`

	// platformgroup
	PlatformGroup map[string][]string `json:"platformGroup,omitempty"`

	// xraymaxwhitelistedusercount
	// Format: int32
	XrayMaxWhitelistedUserCount int32 `json:"xrayMaxWhitelistedUserCount,omitempty"`
}

// Validate validates this Api patch namespace config request
func (m *APIPatchNamespaceConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIPatchNamespaceConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIPatchNamespaceConfigRequest) UnmarshalBinary(b []byte) error {
	var res APIPatchNamespaceConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
