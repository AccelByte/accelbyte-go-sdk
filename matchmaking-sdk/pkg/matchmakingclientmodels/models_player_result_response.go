// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPlayerResultResponse Models player result response
//
// swagger:model Models player result response.
type ModelsPlayerResultResponse struct {

	// current_score
	// Required: true
	CurrentScore []*ModelsResultAttributeResponse `json:"current_score"`

	// user_id
	// Required: true
	UserID *string `json:"user_id"`
}

// Validate validates this Models player result response
func (m *ModelsPlayerResultResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentScore(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPlayerResultResponse) validateCurrentScore(formats strfmt.Registry) error {

	if err := validate.Required("current_score", "body", m.CurrentScore); err != nil {
		return err
	}

	for i := 0; i < len(m.CurrentScore); i++ {
		if swag.IsZero(m.CurrentScore[i]) { // not required
			continue
		}

		if m.CurrentScore[i] != nil {
			if err := m.CurrentScore[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("current_score" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsPlayerResultResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPlayerResultResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPlayerResultResponse) UnmarshalBinary(b []byte) error {
	var res ModelsPlayerResultResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
