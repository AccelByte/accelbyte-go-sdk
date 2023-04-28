// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// BulkUserProgressionRequest Bulk user progression request
//
// swagger:model Bulk user progression request.
type BulkUserProgressionRequest struct {

	// userids
	UserIds []string `json:"userIds,omitempty"`
}

// Validate validates this Bulk user progression request
func (m *BulkUserProgressionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkUserProgressionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkUserProgressionRequest) UnmarshalBinary(b []byte) error {
	var res BulkUserProgressionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
