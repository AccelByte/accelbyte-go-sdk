// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsUserInfo Models user info
//
// swagger:model Models user info.
type ModelsUserInfo struct {

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// platformname
	PlatformName string `json:"platformName,omitempty"`

	// userid
	UserID string `json:"userID,omitempty"`
}

// Validate validates this Models user info
func (m *ModelsUserInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserInfo) UnmarshalBinary(b []byte) error {
	var res ModelsUserInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
