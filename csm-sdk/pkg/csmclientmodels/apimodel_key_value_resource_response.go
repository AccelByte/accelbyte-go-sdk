// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelKeyValueResourceResponse Apimodel key value resource response
//
// swagger:model Apimodel key value resource response.
type ApimodelKeyValueResourceResponse struct {

	// clustername
	// Required: true
	ClusterName *string `json:"clusterName"`

	// configuration
	// Required: true
	Configuration *DomainKeyValueResourceConfiguration `json:"configuration"`

	// engine
	// Required: true
	Engine *string `json:"engine"`

	// hostnames
	// Required: true
	Hostnames *string `json:"hostnames"`

	// lastrotatedat
	// Required: true
	LastRotatedAt *string `json:"lastRotatedAt"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// region
	// Required: true
	Region *string `json:"region"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// resourcename
	// Required: true
	ResourceName *string `json:"resourceName"`

	// resourcetype
	// Required: true
	ResourceType *string `json:"resourceType"`

	// status
	// Required: true
	Status *string `json:"status"`

	// statusmessage
	// Required: true
	StatusMessage *string `json:"statusMessage"`

	// studioname
	// Required: true
	StudioName *string `json:"studioName"`
}

// Validate validates this Apimodel key value resource response
func (m *ApimodelKeyValueResourceResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClusterName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEngine(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHostnames(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastRotatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStudioName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateClusterName(formats strfmt.Registry) error {

	if err := validate.Required("clusterName", "body", m.ClusterName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("configuration", "body", m.Configuration); err != nil {
		return err
	}

	if m.Configuration != nil {
		if err := m.Configuration.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("configuration")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateEngine(formats strfmt.Registry) error {

	if err := validate.Required("engine", "body", m.Engine); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateHostnames(formats strfmt.Registry) error {

	if err := validate.Required("hostnames", "body", m.Hostnames); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateLastRotatedAt(formats strfmt.Registry) error {

	if err := validate.Required("lastRotatedAt", "body", m.LastRotatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateResourceName(formats strfmt.Registry) error {

	if err := validate.Required("resourceName", "body", m.ResourceName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateResourceType(formats strfmt.Registry) error {

	if err := validate.Required("resourceType", "body", m.ResourceType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateStatusMessage(formats strfmt.Registry) error {

	if err := validate.Required("statusMessage", "body", m.StatusMessage); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelKeyValueResourceResponse) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelKeyValueResourceResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelKeyValueResourceResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelKeyValueResourceResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
