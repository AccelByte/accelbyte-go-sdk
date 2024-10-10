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

// ModelsExtendConfiguration Models extend configuration
//
// swagger:model Models extend configuration.
type ModelsExtendConfiguration struct {

	// appname
	AppName string `json:"appName,omitempty"`

	// customurl
	CustomURL string `json:"customURL,omitempty"`

	// functionflag
	// Format: int32
	FunctionFlag *int32 `json:"functionFlag,omitempty"`
}

// Validate validates this Models extend configuration
func (m *ModelsExtendConfiguration) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsExtendConfiguration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsExtendConfiguration) UnmarshalBinary(b []byte) error {
	var res ModelsExtendConfiguration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
