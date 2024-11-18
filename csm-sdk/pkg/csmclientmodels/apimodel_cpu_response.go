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

// ApimodelCPUResponse Apimodel CPU response
//
// swagger:model Apimodel CPU response.
type ApimodelCPUResponse struct {

	// cpulimit
	// Format: int32
	CPULimit int32 `json:"cpuLimit,omitempty"`

	// requestcpu
	// Required: true
	// Format: int32
	RequestCPU *int32 `json:"requestCPU"`
}

// Validate validates this Apimodel CPU response
func (m *ApimodelCPUResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRequestCPU(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCPUResponse) validateRequestCPU(formats strfmt.Registry) error {

	if err := validate.Required("requestCPU", "body", m.RequestCPU); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCPUResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCPUResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelCPUResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
