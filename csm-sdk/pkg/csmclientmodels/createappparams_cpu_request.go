// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CreateappparamsCPURequest Createappparams CPU request
//
// swagger:model Createappparams CPU request.
type CreateappparamsCPURequest struct {

	// requestcpu
	// Required: true
	// Format: int32
	RequestCPU *int32 `json:"requestCPU"`
}

// Validate validates this Createappparams CPU request
func (m *CreateappparamsCPURequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRequestCPU(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CreateappparamsCPURequest) validateRequestCPU(formats strfmt.Registry) error {

	if err := validate.Required("requestCPU", "body", m.RequestCPU); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CreateappparamsCPURequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateappparamsCPURequest) UnmarshalBinary(b []byte) error {
	var res CreateappparamsCPURequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
