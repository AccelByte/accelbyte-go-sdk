// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// EpicGamesReconcileRequest Epic games reconcile request
//
// swagger:model Epic games reconcile request.
type EpicGamesReconcileRequest struct {

	// epicGamesJwtToken
	EpicGamesJwtToken string `json:"epicGamesJwtToken,omitempty"`
}

// Validate validates this Epic games reconcile request
func (m *EpicGamesReconcileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EpicGamesReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EpicGamesReconcileRequest) UnmarshalBinary(b []byte) error {
	var res EpicGamesReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
