// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsBulkSaveItemResp Apimodels bulk save item resp
//
// swagger:model Apimodels bulk save item resp.
type ApimodelsBulkSaveItemResp struct {

	// errordetails
	ErrorDetails *ApimodelsBulkSaveItemError `json:"errorDetails,omitempty"`

	// item
	Item *ApimodelsItemResp `json:"item,omitempty"`

	// success
	// Required: true
	Success *bool `json:"success"`
}

// Validate validates this Apimodels bulk save item resp
func (m *ApimodelsBulkSaveItemResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSuccess(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsBulkSaveItemResp) validateSuccess(formats strfmt.Registry) error {

	if err := validate.Required("success", "body", m.Success); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsBulkSaveItemResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsBulkSaveItemResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsBulkSaveItemResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
