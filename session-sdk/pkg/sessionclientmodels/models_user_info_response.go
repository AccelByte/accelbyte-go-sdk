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

// ModelsUserInfoResponse Models user info response
//
// swagger:model Models user info response.
type ModelsUserInfoResponse struct {

	// lastplayedtime
	// Format: date-time
	LastPlayedTime *strfmt.DateTime `json:"lastPlayedTime,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// platformname
	PlatformName string `json:"platformName,omitempty"`

	// userid
	UserID string `json:"userID,omitempty"`
}

// Validate validates this Models user info response
func (m *ModelsUserInfoResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserInfoResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserInfoResponse) UnmarshalBinary(b []byte) error {
	var res ModelsUserInfoResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
