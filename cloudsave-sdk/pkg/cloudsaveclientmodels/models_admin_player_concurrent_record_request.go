// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminPlayerConcurrentRecordRequest Models admin player concurrent record request
//
// swagger:model Models admin player concurrent record request.
type ModelsAdminPlayerConcurrentRecordRequest struct {

	// Precondition for concurrent request, updatedAt should be the same as record's updatedAt
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// Admin player record data, should be in valid json format
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models admin player concurrent record request
func (m *ModelsAdminPlayerConcurrentRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminPlayerConcurrentRecordRequest) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminPlayerConcurrentRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminPlayerConcurrentRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminPlayerConcurrentRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
