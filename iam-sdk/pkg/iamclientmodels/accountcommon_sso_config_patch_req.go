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

// AccountcommonSSOConfigPatchReq Accountcommon sso config patch req
//
// swagger:model Accountcommon sso config patch req.
type AccountcommonSSOConfigPatchReq struct {

	// This is optional
	GoogleKey interface{} `json:"googleKey,omitempty"`

	// groupconfigs
	GroupConfigs []*AccountcommonGroupAndRoleMappingForPatch `json:"groupConfigs,omitempty"`
}

// Validate validates this Accountcommon sso config patch req
func (m *AccountcommonSSOConfigPatchReq) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonSSOConfigPatchReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonSSOConfigPatchReq) UnmarshalBinary(b []byte) error {
	var res AccountcommonSSOConfigPatchReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
