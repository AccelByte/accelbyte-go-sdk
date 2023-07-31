// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// XboxAchievement Xbox achievement
//
// swagger:model Xbox achievement.
type XboxAchievement struct {

	// achievement id
	ID string `json:"id,omitempty"`

	// complete percentage
	// Format: int64
	PercentComplete int64 `json:"percentComplete,omitempty"`
}

// Validate validates this Xbox achievement
func (m *XboxAchievement) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XboxAchievement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XboxAchievement) UnmarshalBinary(b []byte) error {
	var res XboxAchievement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
