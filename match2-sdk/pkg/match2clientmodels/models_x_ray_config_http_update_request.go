// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsXRayConfigHTTPUpdateRequest Models X ray config http update request
//
// swagger:model Models X ray config http update request.
type ModelsXRayConfigHTTPUpdateRequest struct {

	// whitelistedusers
	// Required: true
	WhitelistedUsers []string `json:"whitelistedUsers"`
}

// Validate validates this Models X ray config http update request
func (m *ModelsXRayConfigHTTPUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateWhitelistedUsers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsXRayConfigHTTPUpdateRequest) validateWhitelistedUsers(formats strfmt.Registry) error {

	if err := validate.Required("whitelistedUsers", "body", m.WhitelistedUsers); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsXRayConfigHTTPUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsXRayConfigHTTPUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelsXRayConfigHTTPUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
