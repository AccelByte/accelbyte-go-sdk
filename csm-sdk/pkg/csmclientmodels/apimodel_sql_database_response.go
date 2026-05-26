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

// ApimodelSQLDatabaseResponse Apimodel SQL database response
//
// swagger:model Apimodel SQL database response.
type ApimodelSQLDatabaseResponse struct {

	// acceptsqlsecurecredentialhandling
	// Required: true
	AcceptSQLSecureCredentialHandling *bool `json:"acceptSQLSecureCredentialHandling"`

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// credentials
	// Required: true
	Credentials *ApimodelSQLDatabaseCredentialResponse `json:"credentials"`

	// dbid
	// Required: true
	DbID *string `json:"dbId"`

	// dbname
	// Required: true
	DbName *string `json:"dbName"`

	// gamenamespace
	// Required: true
	GameNamespace *string `json:"gameNamespace"`

	// hostnames
	// Required: true
	Hostnames *string `json:"hostnames"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// resourcestatus
	// Required: true
	ResourceStatus *string `json:"resourceStatus"`
}

// Validate validates this Apimodel SQL database response
func (m *ApimodelSQLDatabaseResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcceptSQLSecureCredentialHandling(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCredentials(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDbID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDbName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHostnames(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateAcceptSQLSecureCredentialHandling(formats strfmt.Registry) error {

	if err := validate.Required("acceptSQLSecureCredentialHandling", "body", m.AcceptSQLSecureCredentialHandling); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateCredentials(formats strfmt.Registry) error {

	if err := validate.Required("credentials", "body", m.Credentials); err != nil {
		return err
	}

	if m.Credentials != nil {
		if err := m.Credentials.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("credentials")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateDbID(formats strfmt.Registry) error {

	if err := validate.Required("dbId", "body", m.DbID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateDbName(formats strfmt.Registry) error {

	if err := validate.Required("dbName", "body", m.DbName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateGameNamespace(formats strfmt.Registry) error {

	if err := validate.Required("gameNamespace", "body", m.GameNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateHostnames(formats strfmt.Registry) error {

	if err := validate.Required("hostnames", "body", m.Hostnames); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSQLDatabaseResponse) validateResourceStatus(formats strfmt.Registry) error {

	if err := validate.Required("resourceStatus", "body", m.ResourceStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSQLDatabaseResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSQLDatabaseResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelSQLDatabaseResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
