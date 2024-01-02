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

// ModelsApproveStagingContentRequest Models approve staging content request
//
// swagger:model Models approve staging content request.
type ModelsApproveStagingContentRequest struct {

	// approved
	// Required: true
	Approved *bool `json:"approved"`

	// note
	Note string `json:"note,omitempty"`
}

// Validate validates this Models approve staging content request
func (m *ModelsApproveStagingContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateApproved(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsApproveStagingContentRequest) validateApproved(formats strfmt.Registry) error {

	if err := validate.Required("approved", "body", m.Approved); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsApproveStagingContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsApproveStagingContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsApproveStagingContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
