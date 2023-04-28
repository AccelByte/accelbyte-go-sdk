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

// BulkRegionDataChangeRequest Bulk region data change request
//
// swagger:model Bulk region data change request.
type BulkRegionDataChangeRequest struct {

	// changes
	Changes []*RegionDataChange `json:"changes,omitempty"`
}

// Validate validates this Bulk region data change request
func (m *BulkRegionDataChangeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkRegionDataChangeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkRegionDataChangeRequest) UnmarshalBinary(b []byte) error {
	var res BulkRegionDataChangeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
