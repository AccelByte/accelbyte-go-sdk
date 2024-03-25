// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserBulkUpdateRequestV3 Model user bulk update request V3
//
// swagger:model Model user bulk update request V3.
type ModelUserBulkUpdateRequestV3 struct {

	// skiploginqueue
	// Required: true
	SkipLoginQueue *bool `json:"skipLoginQueue"`
}

// Validate validates this Model user bulk update request V3
func (m *ModelUserBulkUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSkipLoginQueue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserBulkUpdateRequestV3) validateSkipLoginQueue(formats strfmt.Registry) error {

	if err := validate.Required("skipLoginQueue", "body", m.SkipLoginQueue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserBulkUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserBulkUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserBulkUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
