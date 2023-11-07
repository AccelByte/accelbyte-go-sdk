// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsAdminUpdateContentRequestV2 Models admin update content request V2
//
// swagger:model Models admin update content request V2.
type ModelsAdminUpdateContentRequestV2 struct {

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// name
	Name string `json:"name,omitempty"`

	// sharecode
	ShareCode string `json:"shareCode,omitempty"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// type
	Type string `json:"type,omitempty"`
}

// Validate validates this Models admin update content request V2
func (m *ModelsAdminUpdateContentRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminUpdateContentRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminUpdateContentRequestV2) UnmarshalBinary(b []byte) error {
	var res ModelsAdminUpdateContentRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
