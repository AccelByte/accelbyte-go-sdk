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

// DeleteRewardConditionRequest Delete reward condition request
//
// swagger:model Delete reward condition request.
type DeleteRewardConditionRequest struct {

	// conditionname
	ConditionName string `json:"conditionName,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Delete reward condition request
func (m *DeleteRewardConditionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DeleteRewardConditionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DeleteRewardConditionRequest) UnmarshalBinary(b []byte) error {
	var res DeleteRewardConditionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
