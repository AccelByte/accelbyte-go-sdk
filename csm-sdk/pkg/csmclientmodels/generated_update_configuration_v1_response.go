// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GeneratedUpdateConfigurationV1Response Generated update configuration V1 response
//
// swagger:model Generated update configuration V1 response.
type GeneratedUpdateConfigurationV1Response struct {

	// applymask
	ApplyMask bool `json:"applyMask"`

	// configid
	ConfigID string `json:"configId,omitempty"`

	// configname
	ConfigName string `json:"configName,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// source
	Source string `json:"source,omitempty"`

	// value
	Value string `json:"value,omitempty"`
}

// Validate validates this Generated update configuration V1 response
func (m *GeneratedUpdateConfigurationV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedUpdateConfigurationV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedUpdateConfigurationV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedUpdateConfigurationV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
