// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelUpdateProfileUpdateStrategyConfigRequest Model update profile update strategy config request
//
// swagger:model Model update profile update strategy config request.
type ModelUpdateProfileUpdateStrategyConfigRequest struct {

	// only work when type is limited
	Config *AccountcommonProfileUpdateConfig `json:"config,omitempty"`

	// allow value [initial_only, limited, unlimited]
	Type string `json:"type,omitempty"`
}

// Validate validates this Model update profile update strategy config request
func (m *ModelUpdateProfileUpdateStrategyConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateProfileUpdateStrategyConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateProfileUpdateStrategyConfigRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateProfileUpdateStrategyConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
