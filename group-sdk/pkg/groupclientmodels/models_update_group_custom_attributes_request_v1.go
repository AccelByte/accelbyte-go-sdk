// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package groupclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsUpdateGroupCustomAttributesRequestV1 Models update group custom attributes request V1
//
// swagger:model Models update group custom attributes request V1.
type ModelsUpdateGroupCustomAttributesRequestV1 struct {

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`
}

// Validate validates this Models update group custom attributes request V1
func (m *ModelsUpdateGroupCustomAttributesRequestV1) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateGroupCustomAttributesRequestV1) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateGroupCustomAttributesRequestV1) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateGroupCustomAttributesRequestV1
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
