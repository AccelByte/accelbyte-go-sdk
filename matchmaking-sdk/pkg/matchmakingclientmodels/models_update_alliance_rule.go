// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsUpdateAllianceRule Models update alliance rule
//
// swagger:model Models update alliance rule.
type ModelsUpdateAllianceRule struct {

	// combination
	Combination *ModelsCombination `json:"combination,omitempty"`

	// maxnumber
	// Format: int32
	MaxNumber int32 `json:"maxNumber,omitempty"`

	// minnumber
	// Format: int32
	MinNumber int32 `json:"minNumber,omitempty"`

	// playermaxnumber
	// Format: int32
	PlayerMaxNumber int32 `json:"playerMaxNumber,omitempty"`

	// playerminnumber
	// Format: int32
	PlayerMinNumber int32 `json:"playerMinNumber,omitempty"`
}

// Validate validates this Models update alliance rule
func (m *ModelsUpdateAllianceRule) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateAllianceRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateAllianceRule) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateAllianceRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
