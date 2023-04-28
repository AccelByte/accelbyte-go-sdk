// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UpdateBasePolicyRequest Update base policy request
//
// swagger:model Update base policy request.
type UpdateBasePolicyRequest struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// affectedcountries
	AffectedCountries []string `json:"affectedCountries,omitempty"`

	// basepolicyname
	BasePolicyName string `json:"basePolicyName,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`
}

// Validate validates this Update base policy request
func (m *UpdateBasePolicyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UpdateBasePolicyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdateBasePolicyRequest) UnmarshalBinary(b []byte) error {
	var res UpdateBasePolicyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
