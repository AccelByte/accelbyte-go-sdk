// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGlobalConfiguration Model global configuration
//
// swagger:model Model global configuration.
type ModelGlobalConfiguration struct {

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

// Validate validates this Model global configuration
func (m *ModelGlobalConfiguration) Validate(formats strfmt.Registry) error {
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

func (m *ModelGlobalConfiguration) validateRegionURLMapping(formats strfmt.Registry) error {

	if err := validate.Required("regionURLMapping", "body", m.RegionURLMapping); err != nil {
		return err
	}

	return nil
}

func (m *ModelGlobalConfiguration) validateTestGameMode(formats strfmt.Registry) error {

	if err := validate.Required("testGameMode", "body", m.TestGameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelGlobalConfiguration) validateTestRegionURLMapping(formats strfmt.Registry) error {

	if err := validate.Required("testRegionURLMapping", "body", m.TestRegionURLMapping); err != nil {
		return err
	}

	return nil
}

func (m *ModelGlobalConfiguration) validateTestTargetUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("testTargetUserIDs", "body", m.TestTargetUserIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelGlobalConfiguration) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGlobalConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGlobalConfiguration) UnmarshalBinary(b []byte) error {
	var res ModelGlobalConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
