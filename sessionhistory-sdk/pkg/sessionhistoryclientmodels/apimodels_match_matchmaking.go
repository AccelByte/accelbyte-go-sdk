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

// ApimodelsMatchMatchmaking Apimodels match matchmaking
//
// swagger:model Apimodels match matchmaking.
type ApimodelsMatchMatchmaking struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// matchpool
	MatchPool string `json:"matchPool,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// value
	// Format: int64
	Value int64 `json:"value,omitempty"`
}

// Validate validates this Apimodels match matchmaking
func (m *ApimodelsMatchMatchmaking) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsMatchMatchmaking) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsMatchMatchmaking) UnmarshalBinary(b []byte) error {
	var res ApimodelsMatchMatchmaking
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
