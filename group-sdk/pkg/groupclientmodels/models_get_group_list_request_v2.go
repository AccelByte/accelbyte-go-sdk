// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetGroupListRequestV2 Models get group list request V2
//
// swagger:model Models get group list request V2.
type ModelsGetGroupListRequestV2 struct {

	// groupids
	// Required: true
	GroupIDs []string `json:"groupIDs"`
}

// Validate validates this Models get group list request V2
func (m *ModelsGetGroupListRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetGroupListRequestV2) validateGroupIDs(formats strfmt.Registry) error {

	if err := validate.Required("groupIDs", "body", m.GroupIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetGroupListRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetGroupListRequestV2) UnmarshalBinary(b []byte) error {
	var res ModelsGetGroupListRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
