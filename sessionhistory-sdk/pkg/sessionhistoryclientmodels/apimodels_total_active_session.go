// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ApimodelsTotalActiveSession Apimodels total active session
//
// swagger:model Apimodels total active session.
type ApimodelsTotalActiveSession struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// value
	// Format: int64
	Value int64 `json:"value,omitempty"`
}

// Validate validates this Apimodels total active session
func (m *ApimodelsTotalActiveSession) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsTotalActiveSession) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsTotalActiveSession) UnmarshalBinary(b []byte) error {
	var res ApimodelsTotalActiveSession
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
