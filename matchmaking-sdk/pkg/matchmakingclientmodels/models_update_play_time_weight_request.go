// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdatePlayTimeWeightRequest Models update play time weight request
//
// swagger:model Models update play time weight request.
type ModelsUpdatePlayTimeWeightRequest struct {

	// playtime
	// Required: true
	// Format: int32
	Playtime *int32 `json:"playtime"`

	// userid
	// Required: true
	UserID *string `json:"userID"`

	// weight
	// Required: true
	// Format: double
	Weight *float64 `json:"weight"`
}

// Validate validates this Models update play time weight request
func (m *ModelsUpdatePlayTimeWeightRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlaytime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWeight(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdatePlayTimeWeightRequest) validatePlaytime(formats strfmt.Registry) error {

	if err := validate.Required("playtime", "body", m.Playtime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdatePlayTimeWeightRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdatePlayTimeWeightRequest) validateWeight(formats strfmt.Registry) error {

	if err := validate.Required("weight", "body", m.Weight); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdatePlayTimeWeightRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdatePlayTimeWeightRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdatePlayTimeWeightRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
