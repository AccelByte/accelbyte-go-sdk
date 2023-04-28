// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIMatchFunctionOverride Api match function override
//
// swagger:model Api match function override.
type APIMatchFunctionOverride struct {

	// backfill_matches
	BackfillMatches string `json:"backfill_matches,omitempty"`

	// enrichment
	Enrichment []string `json:"enrichment,omitempty"`

	// make_matches
	MakeMatches string `json:"make_matches,omitempty"`

	// stat_codes
	StatCodes []string `json:"stat_codes,omitempty"`

	// validation
	Validation []string `json:"validation,omitempty"`
}

// Validate validates this Api match function override
func (m *APIMatchFunctionOverride) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIMatchFunctionOverride) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMatchFunctionOverride) UnmarshalBinary(b []byte) error {
	var res APIMatchFunctionOverride
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
