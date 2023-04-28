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

// RestapiExtensionCategoryAPIResponse Restapi extension category api response
//
// swagger:model Restapi extension category api response.
type RestapiExtensionCategoryAPIResponse struct {

	// extensioncategory
	// Required: true
	ExtensionCategory *string `json:"extensionCategory"`

	// extensioncategoryname
	// Required: true
	ExtensionCategoryName *string `json:"extensionCategoryName"`

	// servicesource
	// Required: true
	ServiceSource *string `json:"serviceSource"`
}

// Validate validates this Restapi extension category api response
func (m *RestapiExtensionCategoryAPIResponse) Validate(formats strfmt.Registry) error {
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

func (m *RestapiExtensionCategoryAPIResponse) validateExtensionCategory(formats strfmt.Registry) error {

	if err := validate.Required("extensionCategory", "body", m.ExtensionCategory); err != nil {
		return err
	}

	return nil
}

func (m *RestapiExtensionCategoryAPIResponse) validateExtensionCategoryName(formats strfmt.Registry) error {

	if err := validate.Required("extensionCategoryName", "body", m.ExtensionCategoryName); err != nil {
		return err
	}

	return nil
}

func (m *RestapiExtensionCategoryAPIResponse) validateServiceSource(formats strfmt.Registry) error {

	if err := validate.Required("serviceSource", "body", m.ServiceSource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiExtensionCategoryAPIResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiExtensionCategoryAPIResponse) UnmarshalBinary(b []byte) error {
	var res RestapiExtensionCategoryAPIResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
