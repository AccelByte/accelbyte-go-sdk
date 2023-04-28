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

// PlayStationDLCSyncRequest Play station DLC sync request
//
// swagger:model Play station DLC sync request.
type PlayStationDLCSyncRequest struct {

	// service label
	// Format: int32
	ServiceLabel int32 `json:"serviceLabel,omitempty"`
}

// Validate validates this Play station DLC sync request
func (m *PlayStationDLCSyncRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationDLCSyncRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationDLCSyncRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationDLCSyncRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
