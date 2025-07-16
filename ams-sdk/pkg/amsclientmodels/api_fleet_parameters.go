// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIFleetParameters Api fleet parameters
//
// swagger:model Api fleet parameters.
type APIFleetParameters struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// claimkeys
	ClaimKeys []string `json:"claimKeys,omitempty"`

	// dshostconfiguration
	// Required: true
	DsHostConfiguration *APIDSHostConfigurationParameters `json:"dsHostConfiguration"`

	// fallbackfleet
	FallbackFleet string `json:"fallbackFleet,omitempty"`

	// Amount of time before an unused on-demand fleet is hibernated, e.g. '1h'
	HibernateAfterPeriod string `json:"hibernateAfterPeriod,omitempty"`

	// imagedeploymentprofile
	// Required: true
	ImageDeploymentProfile *APIImageDeploymentProfile `json:"imageDeploymentProfile"`

	// name
	// Required: true
	Name *string `json:"name"`

	// ondemand
	// Required: true
	OnDemand *bool `json:"onDemand"`

	// regions
	// Required: true
	Regions []*APIRegionConfig `json:"regions"`

	// samplingrules
	SamplingRules *APIFleetArtifactsSampleRules `json:"samplingRules,omitempty"`
}

// Validate validates this Api fleet parameters
func (m *APIFleetParameters) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDsHostConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageDeploymentProfile(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOnDemand(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetParameters) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetParameters) validateDsHostConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("dsHostConfiguration", "body", m.DsHostConfiguration); err != nil {
		return err
	}

	if m.DsHostConfiguration != nil {
		if err := m.DsHostConfiguration.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("dsHostConfiguration")
			}
			return err
		}
	}

	return nil
}

func (m *APIFleetParameters) validateImageDeploymentProfile(formats strfmt.Registry) error {

	if err := validate.Required("imageDeploymentProfile", "body", m.ImageDeploymentProfile); err != nil {
		return err
	}

	if m.ImageDeploymentProfile != nil {
		if err := m.ImageDeploymentProfile.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("imageDeploymentProfile")
			}
			return err
		}
	}

	return nil
}

func (m *APIFleetParameters) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetParameters) validateOnDemand(formats strfmt.Registry) error {

	if err := validate.Required("onDemand", "body", m.OnDemand); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetParameters) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	for i := 0; i < len(m.Regions); i++ {
		if swag.IsZero(m.Regions[i]) { // not required
			continue
		}

		if m.Regions[i] != nil {
			if err := m.Regions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("regions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetParameters) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetParameters) UnmarshalBinary(b []byte) error {
	var res APIFleetParameters
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
