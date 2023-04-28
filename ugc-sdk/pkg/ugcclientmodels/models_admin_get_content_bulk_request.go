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

// ModelsAdminGetContentBulkRequest Models admin get content bulk request
//
// swagger:model Models admin get content bulk request.
type ModelsAdminGetContentBulkRequest struct {

	// contentids
	// Required: true
	ContentIds []string `json:"contentIds"`
}

// Validate validates this Models admin get content bulk request
func (m *ModelsAdminGetContentBulkRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminGetContentBulkRequest) validateContentIds(formats strfmt.Registry) error {

	if err := validate.Required("contentIds", "body", m.ContentIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminGetContentBulkRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminGetContentBulkRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminGetContentBulkRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
