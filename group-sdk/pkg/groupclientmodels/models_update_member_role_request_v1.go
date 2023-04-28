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

// ModelsUpdateMemberRoleRequestV1 Models update member role request V1
//
// swagger:model Models update member role request V1.
type ModelsUpdateMemberRoleRequestV1 struct {

	// memberrolename
	// Required: true
	MemberRoleName *string `json:"memberRoleName"`
}

// Validate validates this Models update member role request V1
func (m *ModelsUpdateMemberRoleRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMemberRoleName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateMemberRoleRequestV1) validateMemberRoleName(formats strfmt.Registry) error {

	if err := validate.Required("memberRoleName", "body", m.MemberRoleName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateMemberRoleRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateMemberRoleRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateMemberRoleRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
