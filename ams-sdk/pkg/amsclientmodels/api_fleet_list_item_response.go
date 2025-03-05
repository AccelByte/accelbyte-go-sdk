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

// APIFleetListItemResponse Api fleet list item response
//
// swagger:model Api fleet list item response.
type APIFleetListItemResponse struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// counts
	// Required: true
	Counts []*APIFleetRegionalServerCounts `json:"counts"`

	// fallbackfleet
	// Required: true
	FallbackFleet *string `json:"fallbackFleet"`

	// id
	// Required: true
	ID *string `json:"id"`

	// image
	// Required: true
	Image *string `json:"image"`

	// instanceprovider
	// Required: true
	InstanceProvider *string `json:"instanceProvider"`

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
	Regions []string `json:"regions"`
}

// Validate validates this Api fleet list item response
func (m *APIFleetListItemResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCounts(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFallbackFleet(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInstanceProvider(formats); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIFleetListItemResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateCounts(formats strfmt.Registry) error {

	if err := validate.Required("counts", "body", m.Counts); err != nil {
		return err
	}

	for i := 0; i < len(m.Counts); i++ {
		if swag.IsZero(m.Counts[i]) { // not required
			continue
		}

		if m.Counts[i] != nil {
			if err := m.Counts[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("counts" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIFleetListItemResponse) validateFallbackFleet(formats strfmt.Registry) error {

	if err := validate.Required("fallbackFleet", "body", m.FallbackFleet); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateImage(formats strfmt.Registry) error {

	if err := validate.Required("image", "body", m.Image); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateInstanceProvider(formats strfmt.Registry) error {

	if err := validate.Required("instanceProvider", "body", m.InstanceProvider); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateIsLocal(formats strfmt.Registry) error {

	if err := validate.Required("isLocal", "body", m.IsLocal); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateOnDemand(formats strfmt.Registry) error {

	if err := validate.Required("onDemand", "body", m.OnDemand); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validatePrimaryFleet(formats strfmt.Registry) error {

	if err := validate.Required("primaryFleet", "body", m.PrimaryFleet); err != nil {
		return err
	}

	return nil
}

func (m *APIFleetListItemResponse) validateRegions(formats strfmt.Registry) error {

	if err := validate.Required("regions", "body", m.Regions); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIFleetListItemResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIFleetListItemResponse) UnmarshalBinary(b []byte) error {
	var res APIFleetListItemResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
