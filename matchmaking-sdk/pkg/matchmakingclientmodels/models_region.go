// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsRegion Models region
//
// swagger:model Models region.
type ModelsRegion struct {

	// latency
	// Required: true
	// Format: int32
	Latency *int32 `json:"latency"`

	// region
	// Required: true
	Region *string `json:"region"`
}

// Validate validates this Models region
func (m *ModelsRegion) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLatency(formats); err != nil {
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

func (m *ModelsRegion) validateLatency(formats strfmt.Registry) error {

	if err := validate.Required("latency", "body", m.Latency); err != nil {
		return err
	}

	return nil
}

func (m *ModelsRegion) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRegion) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRegion) UnmarshalBinary(b []byte) error {
	var res ModelsRegion
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
