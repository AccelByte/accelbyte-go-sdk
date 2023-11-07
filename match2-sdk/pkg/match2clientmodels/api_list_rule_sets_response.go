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

// APIListRuleSetsResponse Api list rule sets response
//
// swagger:model Api list rule sets response.
type APIListRuleSetsResponse struct {

	// data
	Data []*APIMatchRuleSetNameData `json:"data,omitempty"`

	// pagination
	Pagination *ModelsPagination `json:"pagination,omitempty"`
}

// Validate validates this Api list rule sets response
func (m *APIListRuleSetsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIListRuleSetsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIListRuleSetsResponse) UnmarshalBinary(b []byte) error {
	var res APIListRuleSetsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
