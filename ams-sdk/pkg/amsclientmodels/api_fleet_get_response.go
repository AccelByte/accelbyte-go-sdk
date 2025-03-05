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

// APIFleetGetResponse Api fleet get response
//
// swagger:model Api fleet get response.
type APIFleetGetResponse struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// claimkeys
	// Required: true
	ClaimKeys []string `json:"claimKeys"`

	// dshostconfiguration
	// Required: true
	DsHostConfiguration *APIDSHostConfiguration `json:"dsHostConfiguration"`

	// fallbackfleet
	// Required: true
	FallbackFleet *string `json:"fallbackFleet"`

	// id
	// Required: true
	ID *string `json:"id"`

	// imagedeploymentprofile
	// Required: true
	ImageDeploymentProfile *APIImageDeploymentProfile `json:"imageDeploymentProfile"`

	// islocal
	// Required: true
	IsLocal *bool `json:"isLocal"`

	// name
	// Required: true
	Name *string `json:"name"`

	// ondemand
	// Required: true
	OnDemand *bool `json:"onDemand"`

	// primaryfleet
	// Required: true
	PrimaryFleet *string `json:"primaryFleet"`

	// regions
	// Required: true
	Regions []*APIRegionConfig `json:"regions"`

	// samplingrules
	// Required: true
	SamplingRules *APIFleetArtifactsSampleRules `json:"samplingRules"`
}

// Validate validates this Api fleet get response
func (m *APIFleetGetResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateClaimKeys(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDsHostConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFallbackFleet(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageDeploymentProfile(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsLocal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOnDemand(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePrimaryFleet(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSamplingRules(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetGetResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateClaimKeys(formats strfmt.Registry) error {

	if err := validate.Required("claimKeys", "body", m.ClaimKeys); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateDsHostConfiguration(formats strfmt.Registry) error {

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

func (m *APIFleetGetResponse) validateFallbackFleet(formats strfmt.Registry) error {

	if err := validate.Required("fallbackFleet", "body", m.FallbackFleet); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateImageDeploymentProfile(formats strfmt.Registry) error {

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

func (m *APIFleetGetResponse) validateIsLocal(formats strfmt.Registry) error {

	if err := validate.Required("isLocal", "body", m.IsLocal); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateOnDemand(formats strfmt.Registry) error {

	if err := validate.Required("onDemand", "body", m.OnDemand); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validatePrimaryFleet(formats strfmt.Registry) error {

	if err := validate.Required("primaryFleet", "body", m.PrimaryFleet); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetGetResponse) validateRegions(formats strfmt.Registry) error {

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

func (m *APIFleetGetResponse) validateSamplingRules(formats strfmt.Registry) error {

	if err := validate.Required("samplingRules", "body", m.SamplingRules); err != nil {
		return err
	}

	if m.SamplingRules != nil {
		if err := m.SamplingRules.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("samplingRules")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetGetResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetGetResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetGetResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
