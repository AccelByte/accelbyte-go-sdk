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

// ApimodelDeleteNoSQLResourceResponse Apimodel delete no SQL resource response
//
// swagger:model Apimodel delete no SQL resource response.
type ApimodelDeleteNoSQLResourceResponse struct {

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// resourcename
	// Required: true
	ResourceName *string `json:"resourceName"`

	// resourcetype
	// Required: true
	ResourceType *string `json:"resourceType"`

	// studioname
	// Required: true
	StudioName *string `json:"studioName"`
}

// Validate validates this Apimodel delete no SQL resource response
func (m *ApimodelDeleteNoSQLResourceResponse) Validate(formats strfmt.Registry) error {
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
	if err := m.validateStudioName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelDeleteNoSQLResourceResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelDeleteNoSQLResourceResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelDeleteNoSQLResourceResponse) validateResourceName(formats strfmt.Registry) error {

	if err := validate.Required("resourceName", "body", m.ResourceName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelDeleteNoSQLResourceResponse) validateResourceType(formats strfmt.Registry) error {

	if err := validate.Required("resourceType", "body", m.ResourceType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelDeleteNoSQLResourceResponse) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelDeleteNoSQLResourceResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelDeleteNoSQLResourceResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelDeleteNoSQLResourceResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
