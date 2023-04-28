// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPartyPUTCustomAttributesRequest Models party PUT custom attributes request
//
// swagger:model Models party PUT custom attributes request.
type ModelsPartyPUTCustomAttributesRequest struct {

	// custom_attribute
	// Required: true
	CustomAttribute interface{} `json:"custom_attribute"`

	// updatedat
	// Required: true
	// Format: int64
	UpdatedAt *int64 `json:"updatedAt"`
}

// Validate validates this Models party PUT custom attributes request
func (m *ModelsPartyPUTCustomAttributesRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPartyPUTCustomAttributesRequest) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPartyPUTCustomAttributesRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPartyPUTCustomAttributesRequest) UnmarshalBinary(b []byte) error {
	var res ModelsPartyPUTCustomAttributesRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
