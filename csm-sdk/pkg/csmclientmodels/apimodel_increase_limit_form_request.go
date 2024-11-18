// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelIncreaseLimitFormRequest Apimodel increase limit form request
//
// swagger:model Apimodel increase limit form request.
type ApimodelIncreaseLimitFormRequest struct {

	// clientemail
	// Required: true
	ClientEmail *string `json:"clientEmail"`

	// preferredlimitreplica
	// Format: int32
	PreferredLimitReplica int32 `json:"preferredLimitReplica,omitempty"`

	// requestreason
	// Required: true
	RequestReason *string `json:"requestReason"`
}

// Validate validates this Apimodel increase limit form request
func (m *ApimodelIncreaseLimitFormRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientEmail(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelIncreaseLimitFormRequest) validateClientEmail(formats strfmt.Registry) error {

	if err := validate.Required("clientEmail", "body", m.ClientEmail); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIncreaseLimitFormRequest) validateRequestReason(formats strfmt.Registry) error {

	if err := validate.Required("requestReason", "body", m.RequestReason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelIncreaseLimitFormRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelIncreaseLimitFormRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelIncreaseLimitFormRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
