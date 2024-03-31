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

// ApimodelsMatchLengthDuration Apimodels match length duration
//
// swagger:model Apimodels match length duration.
type ApimodelsMatchLengthDuration struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// value
	// Format: double
	Value float64 `json:"value,omitempty"`
}

// Validate validates this Apimodels match length duration
func (m *ApimodelsMatchLengthDuration) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsMatchLengthDuration) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsMatchLengthDuration) UnmarshalBinary(b []byte) error {
	var res ApimodelsMatchLengthDuration
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
