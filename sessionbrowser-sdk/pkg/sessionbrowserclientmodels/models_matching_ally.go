// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionbrowserclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsMatchingAlly Models matching ally
//
// swagger:model Models matching ally.
type ModelsMatchingAlly struct {

	// matching_parties
	MatchingParties []*ModelsMatchingParty `json:"matching_parties,omitempty"`
}

// Validate validates this Models matching ally
func (m *ModelsMatchingAlly) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMatchingAlly) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMatchingAlly) UnmarshalBinary(b []byte) error {
	var res ModelsMatchingAlly
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
