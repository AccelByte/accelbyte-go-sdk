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

// SimpleUserDLCRewardContentsResponse Simple user DLC reward contents response
//
// swagger:model Simple user DLC reward contents response.
type SimpleUserDLCRewardContentsResponse struct {

	// data
	Data []*SimpleUserDLCRewardContent `json:"data,omitempty"`
}

// Validate validates this Simple user DLC reward contents response
func (m *SimpleUserDLCRewardContentsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SimpleUserDLCRewardContentsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SimpleUserDLCRewardContentsResponse) UnmarshalBinary(b []byte) error {
	var res SimpleUserDLCRewardContentsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
