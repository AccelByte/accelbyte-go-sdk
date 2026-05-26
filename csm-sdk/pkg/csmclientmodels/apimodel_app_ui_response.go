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

// ApimodelAppUIResponse Apimodel app UI response
//
// swagger:model Apimodel app UI response.
type ApimodelAppUIResponse struct {

	// appuiid
	// Required: true
	AppUIID *string `json:"appUiId"`

	// assetbasepath
	// Required: true
	AssetBasePath *string `json:"assetBasePath"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// currentfileversion
	// Required: true
	CurrentFileVersion *string `json:"currentFileVersion"`

	// gamenamespace
	// Required: true
	GameNamespace *string `json:"gameNamespace"`

	// name
	// Required: true
	Name *string `json:"name"`

	// publiciamclient
	PublicIamClient *ApimodelPublicIAMClientResponse `json:"publicIamClient,omitempty"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Apimodel app UI response
func (m *ApimodelAppUIResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppUIID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAssetBasePath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentFileVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
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

func (m *ApimodelAppUIResponse) validateAppUIID(formats strfmt.Registry) error {

	if err := validate.Required("appUiId", "body", m.AppUIID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateAssetBasePath(formats strfmt.Registry) error {

	if err := validate.Required("assetBasePath", "body", m.AssetBasePath); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateCurrentFileVersion(formats strfmt.Registry) error {

	if err := validate.Required("currentFileVersion", "body", m.CurrentFileVersion); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateGameNamespace(formats strfmt.Registry) error {

	if err := validate.Required("gameNamespace", "body", m.GameNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppUIResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAppUIResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAppUIResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelAppUIResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
