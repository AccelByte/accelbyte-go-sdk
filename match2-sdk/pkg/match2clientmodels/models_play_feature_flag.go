// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPlayFeatureFlag Models play feature flag
//
// swagger:model Models play feature flag.
type ModelsPlayFeatureFlag struct {

	// enable_auto_cancel_match_user_disconnect
	// Required: true
	ENABLEAUTOCANCELMATCHUSERDISCONNECT *bool `json:"ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT"`

	// enable_auto_cancel_match_user_leave
	// Required: true
	ENABLEAUTOCANCELMATCHUSERLEAVE *bool `json:"ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE"`
}

// Validate validates this Models play feature flag
func (m *ModelsPlayFeatureFlag) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateENABLEAUTOCANCELMATCHUSERDISCONNECT(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateENABLEAUTOCANCELMATCHUSERLEAVE(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPlayFeatureFlag) validateENABLEAUTOCANCELMATCHUSERDISCONNECT(formats strfmt.Registry) error {

	if err := validate.Required("ENABLE_AUTO_CANCEL_MATCH_USER_DISCONNECT", "body", m.ENABLEAUTOCANCELMATCHUSERDISCONNECT); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPlayFeatureFlag) validateENABLEAUTOCANCELMATCHUSERLEAVE(formats strfmt.Registry) error {

	if err := validate.Required("ENABLE_AUTO_CANCEL_MATCH_USER_LEAVE", "body", m.ENABLEAUTOCANCELMATCHUSERLEAVE); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayFeatureFlag) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayFeatureFlag) UnmarshalBinary(b []byte) error {
	var res ModelsPlayFeatureFlag
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
