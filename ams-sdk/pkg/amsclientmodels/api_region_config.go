// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIRegionConfig Api region config
//
// swagger:model Api region config.
type APIRegionConfig struct {

	// buffersize
	// Required: true
	// Format: int32
	BufferSize *int32 `json:"bufferSize"`

	// dynamicbuffer
	// Required: true
	DynamicBuffer *bool `json:"dynamicBuffer"`

	// maxservercount
	// Required: true
	// Format: int32
	MaxServerCount *int32 `json:"maxServerCount"`

	// minservercount
	// Required: true
	// Format: int32
	MinServerCount *int32 `json:"minServerCount"`

	// region
	// Required: true
	Region *string `json:"region"`
}

// Validate validates this Api region config
func (m *APIRegionConfig) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBufferSize(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDynamicBuffer(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxServerCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinServerCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIRegionConfig) validateBufferSize(formats strfmt.Registry) error {

	if err := validate.Required("bufferSize", "body", m.BufferSize); err != nil {
		return err
	}

	return nil
}

func (m *APIRegionConfig) validateDynamicBuffer(formats strfmt.Registry) error {

	if err := validate.Required("dynamicBuffer", "body", m.DynamicBuffer); err != nil {
		return err
	}

	return nil
}

func (m *APIRegionConfig) validateMaxServerCount(formats strfmt.Registry) error {

	if err := validate.Required("maxServerCount", "body", m.MaxServerCount); err != nil {
		return err
	}

	return nil
}

func (m *APIRegionConfig) validateMinServerCount(formats strfmt.Registry) error {

	if err := validate.Required("minServerCount", "body", m.MinServerCount); err != nil {
		return err
	}

	return nil
}

func (m *APIRegionConfig) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIRegionConfig) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIRegionConfig) UnmarshalBinary(b []byte) error {
	var res APIRegionConfig
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
