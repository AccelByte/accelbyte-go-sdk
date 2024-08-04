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

// ApimodelsGlobalConfigurationResponse Apimodels global configuration response
//
// swagger:model Apimodels global configuration response.
type ApimodelsGlobalConfigurationResponse struct {

	// metricexcludednamespaces
	MetricExcludedNamespaces []string `json:"metricExcludedNamespaces,omitempty"`

	// regionretrymapping
	// Required: true
	RegionRetryMapping map[string][]string `json:"regionRetryMapping"`

	// regionurlmapping
	// Required: true
	RegionURLMapping []string `json:"regionURLMapping"`

	// testgamemode
	// Required: true
	TestGameMode *string `json:"testGameMode"`

	// testregionurlmapping
	// Required: true
	TestRegionURLMapping []string `json:"testRegionURLMapping"`

	// testtargetuserids
	// Required: true
	TestTargetUserIDs []string `json:"testTargetUserIDs"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Apimodels global configuration response
func (m *ApimodelsGlobalConfigurationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRegionURLMapping(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTestGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTestRegionURLMapping(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTestTargetUserIDs(formats); err != nil {
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

func (m *ApimodelsGlobalConfigurationResponse) validateRegionURLMapping(formats strfmt.Registry) error {

	if err := validate.Required("regionURLMapping", "body", m.RegionURLMapping); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGlobalConfigurationResponse) validateTestGameMode(formats strfmt.Registry) error {

	if err := validate.Required("testGameMode", "body", m.TestGameMode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGlobalConfigurationResponse) validateTestRegionURLMapping(formats strfmt.Registry) error {

	if err := validate.Required("testRegionURLMapping", "body", m.TestRegionURLMapping); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGlobalConfigurationResponse) validateTestTargetUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("testTargetUserIDs", "body", m.TestTargetUserIDs); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGlobalConfigurationResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsGlobalConfigurationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsGlobalConfigurationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsGlobalConfigurationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
