// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiExtensionCategoryAPIRequest Restapi extension category api request
//
// swagger:model Restapi extension category api request.
type RestapiExtensionCategoryAPIRequest struct {

	// Report extension category, consist of custom services sub-category (eg. salesItem,challenge,etc)
	// Required: true
	ExtensionCategory *string `json:"extensionCategory"`

	// Report extension category display name)
	// Required: true
	ExtensionCategoryName *string `json:"extensionCategoryName"`

	// Extension category service source (eg. service source 'marketplace' for extension category 'salesItem')
	// Required: true
	ServiceSource *string `json:"serviceSource"`
}

// Validate validates this Restapi extension category api request
func (m *RestapiExtensionCategoryAPIRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExtensionCategory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtensionCategoryName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServiceSource(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiExtensionCategoryAPIRequest) validateExtensionCategory(formats strfmt.Registry) error {

	if err := validate.Required("extensionCategory", "body", m.ExtensionCategory); err != nil {
		return err
	}

	return nil
}

func (m *RestapiExtensionCategoryAPIRequest) validateExtensionCategoryName(formats strfmt.Registry) error {

	if err := validate.Required("extensionCategoryName", "body", m.ExtensionCategoryName); err != nil {
		return err
	}

	return nil
}

func (m *RestapiExtensionCategoryAPIRequest) validateServiceSource(formats strfmt.Registry) error {

	if err := validate.Required("serviceSource", "body", m.ServiceSource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiExtensionCategoryAPIRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiExtensionCategoryAPIRequest) UnmarshalBinary(b []byte) error {
	var res RestapiExtensionCategoryAPIRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
