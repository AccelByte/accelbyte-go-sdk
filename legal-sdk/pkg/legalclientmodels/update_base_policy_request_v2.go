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

// UpdateBasePolicyRequestV2 Update base policy request V2
//
// swagger:model Update base policy request V2.
type UpdateBasePolicyRequestV2 struct {

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

	// active status of this policy, it will affect user's eligibility status check
	IsHidden bool `json:"isHidden"`

	// hide the policy from public(e.g. legal website), it will NOT affect user's eligibility status check
	IsHiddenPublic bool `json:"isHiddenPublic"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`
}

// Validate validates this Update base policy request V2
func (m *UpdateBasePolicyRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UpdateBasePolicyRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UpdateBasePolicyRequestV2) UnmarshalBinary(b []byte) error {
	var res UpdateBasePolicyRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
