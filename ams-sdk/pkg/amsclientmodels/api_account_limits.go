// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// APIAccountLimits Api account limits
//
// swagger:model Api account limits.
type APIAccountLimits struct {

	// allowednodeclasses
	AllowedNodeClasses []string `json:"allowedNodeClasses,omitempty"`

	// allowedregions
	AllowedRegions []string `json:"allowedRegions,omitempty"`

	// fleetcount
	// Format: int32
	FleetCount int32 `json:"fleetCount,omitempty"`

	// fleetvmcount
	// Format: int32
	FleetVMCount int32 `json:"fleetVmCount,omitempty"`

	// imagestoragequotabytes
	// Format: int64
	ImageStorageQuotaBytes int64 `json:"imageStorageQuotaBytes,omitempty"`
}

// Validate validates this Api account limits
func (m *APIAccountLimits) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *APIAccountLimits) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIAccountLimits) UnmarshalBinary(b []byte) error {
	var res APIAccountLimits
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
