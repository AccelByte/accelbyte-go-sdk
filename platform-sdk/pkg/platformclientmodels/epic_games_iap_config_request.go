// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// EpicGamesIAPConfigRequest Epic games IAP config request
//
// swagger:model Epic games IAP config request.
type EpicGamesIAPConfigRequest struct {

	// sandboxId
	// Required: true
	SandboxID *string `json:"sandboxId"`
}

// Validate validates this Epic games IAP config request
func (m *EpicGamesIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSandboxID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *EpicGamesIAPConfigRequest) validateSandboxID(formats strfmt.Registry) error {

	if err := validate.Required("sandboxId", "body", m.SandboxID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EpicGamesIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EpicGamesIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res EpicGamesIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
