// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelRequestUserPresence Model request user presence
//
// swagger:model Model request user presence.
type ModelRequestUserPresence struct {

	// userids
	UserIDs []string `json:"userIDs,omitempty"`
}

// Validate validates this Model request user presence
func (m *ModelRequestUserPresence) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelRequestUserPresence) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRequestUserPresence) UnmarshalBinary(b []byte) error {
	var res ModelRequestUserPresence
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
