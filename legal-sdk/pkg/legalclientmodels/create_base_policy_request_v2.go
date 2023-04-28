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

// CreateBasePolicyRequestV2 Create base policy request V2
//
// swagger:model Create base policy request V2.
type CreateBasePolicyRequestV2 struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// affectedcountries
	// Unique: true
	AffectedCountries []string `json:"affectedCountries"`

	// basepolicyname
	BasePolicyName string `json:"basePolicyName,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// typeid
	TypeID string `json:"typeId,omitempty"`
}

// Validate validates this Create base policy request V2
func (m *CreateBasePolicyRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateBasePolicyRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateBasePolicyRequestV2) UnmarshalBinary(b []byte) error {
	var res CreateBasePolicyRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
