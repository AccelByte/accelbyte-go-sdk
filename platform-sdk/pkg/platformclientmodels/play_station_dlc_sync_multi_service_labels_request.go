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

// PlayStationDLCSyncMultiServiceLabelsRequest Play station DLC sync multi service labels request
//
// swagger:model Play station DLC sync multi service labels request.
type PlayStationDLCSyncMultiServiceLabelsRequest struct {

	// service labels
	// Unique: true
	// Format: int32
	ServiceLabels []int32 `json:"serviceLabels"`
}

// Validate validates this Play station DLC sync multi service labels request
func (m *PlayStationDLCSyncMultiServiceLabelsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationDLCSyncMultiServiceLabelsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationDLCSyncMultiServiceLabelsRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationDLCSyncMultiServiceLabelsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
