// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsXRayMatchPoolResult Apimodels X ray match pool result
//
// swagger:model Apimodels X ray match pool result.
type ApimodelsXRayMatchPoolResult struct {

	// podname
	// Required: true
	PodName *string `json:"podName"`
}

// Validate validates this Apimodels X ray match pool result
func (m *ApimodelsXRayMatchPoolResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayMatchPoolResult) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayMatchPoolResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayMatchPoolResult) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayMatchPoolResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
