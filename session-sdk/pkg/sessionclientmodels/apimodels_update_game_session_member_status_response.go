// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateGameSessionMemberStatusResponse Apimodels update game session member status response
//
// swagger:model Apimodels update game session member status response.
type ApimodelsUpdateGameSessionMemberStatusResponse struct {

	// status
	// Required: true
	Status *string `json:"status"`

	// statusv2
	// Required: true
	StatusV2 *string `json:"statusV2"`
}

// Validate validates this Apimodels update game session member status response
func (m *ApimodelsUpdateGameSessionMemberStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusV2(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUpdateGameSessionMemberStatusResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUpdateGameSessionMemberStatusResponse) validateStatusV2(formats strfmt.Registry) error {

	if err := validate.Required("statusV2", "body", m.StatusV2); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionMemberStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionMemberStatusResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateGameSessionMemberStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
