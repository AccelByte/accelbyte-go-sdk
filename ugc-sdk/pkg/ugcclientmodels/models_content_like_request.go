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

// ModelsContentLikeRequest Models content like request
//
// swagger:model Models content like request.
type ModelsContentLikeRequest struct {

	// likestatus
	// Required: true
	LikeStatus *bool `json:"likeStatus"`
}

// Validate validates this Models content like request
func (m *ModelsContentLikeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLikeStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsContentLikeRequest) validateLikeStatus(formats strfmt.Registry) error {

	if err := validate.Required("likeStatus", "body", m.LikeStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentLikeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentLikeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsContentLikeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
