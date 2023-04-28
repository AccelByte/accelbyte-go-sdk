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

// ModelsAdminConcurrentRecordRequest Models admin concurrent record request
//
// swagger:model Models admin concurrent record request.
type ModelsAdminConcurrentRecordRequest struct {

	// set_by
	// Required: true
	SetBy *string `json:"set_by"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// value
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models admin concurrent record request
func (m *ModelsAdminConcurrentRecordRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSetBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminConcurrentRecordRequest) validateSetBy(formats strfmt.Registry) error {

	if err := validate.Required("set_by", "body", m.SetBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAdminConcurrentRecordRequest) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminConcurrentRecordRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminConcurrentRecordRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminConcurrentRecordRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
