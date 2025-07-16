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

// DLCItemConfigHistoryInfo DLC item config history info
//
// swagger:model DLC item config history info.
type DLCItemConfigHistoryInfo struct {

	// autoupdate
	AutoUpdate bool `json:"autoUpdate"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// dlcid
	DLCID string `json:"dlcId,omitempty"`

	// enablerevocation
	EnableRevocation bool `json:"enableRevocation"`

	// id
	ID string `json:"id,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// rewards
	Rewards []*PlatformReward `json:"rewards,omitempty"`

	// rvn
	// Format: int32
	Rvn int32 `json:"rvn,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this DLC item config history info
func (m *DLCItemConfigHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *DLCItemConfigHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DLCItemConfigHistoryInfo) UnmarshalBinary(b []byte) error {
	var res DLCItemConfigHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
