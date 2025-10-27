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

// ApimodelNoSQLResourceResponse Apimodel no SQL resource response
//
// swagger:model Apimodel no SQL resource response.
type ApimodelNoSQLResourceResponse struct {

	// configuration
	Configuration *NosqlresourceNoSQLResourceConfiguration `json:"configuration,omitempty"`

	// hostnames
	Hostnames string `json:"hostnames,omitempty"`

	// lastrotatedat
	LastRotatedAt string `json:"lastRotatedAt,omitempty"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// region
	Region string `json:"region,omitempty"`

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

	// studioname
	// Required: true
	StudioName *string `json:"studioName"`
}

// Validate validates this Apimodel no SQL resource response
func (m *ApimodelNoSQLResourceResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformName(formats); err != nil {
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
	if err := m.validateStudioName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelNoSQLResourceResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLResourceResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLResourceResponse) validateResourceName(formats strfmt.Registry) error {

	if err := validate.Required("resourceName", "body", m.ResourceName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLResourceResponse) validateResourceType(formats strfmt.Registry) error {

	if err := validate.Required("resourceType", "body", m.ResourceType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLResourceResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLResourceResponse) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelNoSQLResourceResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelNoSQLResourceResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelNoSQLResourceResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
