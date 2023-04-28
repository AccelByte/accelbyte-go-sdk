// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelBulkUnbanCreateRequestV3 Model bulk unban create request V3
//
// swagger:model Model bulk unban create request V3.
type ModelBulkUnbanCreateRequestV3 struct {

	// bans
	Bans []*ModelUserUnbanCreateRequestV3 `json:"bans,omitempty"`
}

// Validate validates this Model bulk unban create request V3
func (m *ModelBulkUnbanCreateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkUnbanCreateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkUnbanCreateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelBulkUnbanCreateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
