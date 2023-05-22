// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDSHeartbeatRequest Models DS heartbeat request
//
// swagger:model Models DS heartbeat request.
type ModelsDSHeartbeatRequest struct {

	// podname
	// Required: true
	PodName *string `json:"podName"`
}

// Validate validates this Models DS heartbeat request
func (m *ModelsDSHeartbeatRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDSHeartbeatRequest) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDSHeartbeatRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDSHeartbeatRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDSHeartbeatRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
