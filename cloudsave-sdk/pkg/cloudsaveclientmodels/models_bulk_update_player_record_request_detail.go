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

// ModelsBulkUpdatePlayerRecordRequestDetail Models bulk update player record request detail
//
// swagger:model Models bulk update player record request detail.
type ModelsBulkUpdatePlayerRecordRequestDetail struct {

	// key
	// Required: true
	Key *string `json:"key"`

	// value
	// Required: true
	Value interface{} `json:"value"`
}

// Validate validates this Models bulk update player record request detail
func (m *ModelsBulkUpdatePlayerRecordRequestDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBulkUpdatePlayerRecordRequestDetail) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordRequestDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBulkUpdatePlayerRecordRequestDetail) UnmarshalBinary(b []byte) error {
	var res ModelsBulkUpdatePlayerRecordRequestDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
