// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetContentBulkByShareCodesRequest Models get content bulk by share codes request
//
// swagger:model Models get content bulk by share codes request.
type ModelsGetContentBulkByShareCodesRequest struct {

	// sharecodes
	// Required: true
	ShareCodes []string `json:"shareCodes"`
}

// Validate validates this Models get content bulk by share codes request
func (m *ModelsGetContentBulkByShareCodesRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateShareCodes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetContentBulkByShareCodesRequest) validateShareCodes(formats strfmt.Registry) error {

	if err := validate.Required("shareCodes", "body", m.ShareCodes); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetContentBulkByShareCodesRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetContentBulkByShareCodesRequest) UnmarshalBinary(b []byte) error {
	var res ModelsGetContentBulkByShareCodesRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
