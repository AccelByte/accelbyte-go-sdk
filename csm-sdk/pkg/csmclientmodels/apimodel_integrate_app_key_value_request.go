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

// ApimodelIntegrateAppKeyValueRequest Apimodel integrate app key value request
//
// swagger:model Apimodel integrate app key value request.
type ApimodelIntegrateAppKeyValueRequest struct {

	// acknowledgements
	// Required: true
	Acknowledgements *ApimodelKeyValueCredentialAcknowledgements `json:"acknowledgements"`

	// password
	// Required: true
	Password *string `json:"password"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// username
	// Required: true
	Username *string `json:"username"`
}

// Validate validates this Apimodel integrate app key value request
func (m *ApimodelIntegrateAppKeyValueRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcknowledgements(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePassword(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsername(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelIntegrateAppKeyValueRequest) validateAcknowledgements(formats strfmt.Registry) error {

	if err := validate.Required("acknowledgements", "body", m.Acknowledgements); err != nil {
		return err
	}

	if m.Acknowledgements != nil {
		if err := m.Acknowledgements.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("acknowledgements")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueRequest) validatePassword(formats strfmt.Registry) error {

	if err := validate.Required("password", "body", m.Password); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueRequest) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueRequest) validateUsername(formats strfmt.Registry) error {

	if err := validate.Required("username", "body", m.Username); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelIntegrateAppKeyValueRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelIntegrateAppKeyValueRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelIntegrateAppKeyValueRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
