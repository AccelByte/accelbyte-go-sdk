// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPSNEventResult Models PSN event result
//
// swagger:model Models PSN event result.
type ModelsPSNEventResult struct {

	// errordetail
	ErrorDetail *ModelsErrorDetails `json:"errorDetail,omitempty"`

	// issuccess
	// Required: true
	IsSuccess *bool `json:"isSuccess"`

	// thirdpartyuserid
	// Required: true
	ThirdPartyUserID *string `json:"thirdPartyUserId"`
}

// Validate validates this Models PSN event result
func (m *ModelsPSNEventResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsSuccess(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThirdPartyUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPSNEventResult) validateIsSuccess(formats strfmt.Registry) error {

	if err := validate.Required("isSuccess", "body", m.IsSuccess); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPSNEventResult) validateThirdPartyUserID(formats strfmt.Registry) error {

	if err := validate.Required("thirdPartyUserId", "body", m.ThirdPartyUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPSNEventResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPSNEventResult) UnmarshalBinary(b []byte) error {
	var res ModelsPSNEventResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
