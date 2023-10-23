// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsChainingOperationResp Apimodels chaining operation resp
//
// swagger:model Apimodels chaining operation resp.
type ApimodelsChainingOperationResp struct {

	// errordetails
	ErrorDetails *ApimodelsErrorResponse `json:"errorDetails,omitempty"`

	// message
	// Required: true
	Message *string `json:"message"`

	// replayed
	Replayed bool `json:"replayed"`

	// requestid
	RequestID string `json:"requestId,omitempty"`
}

// Validate validates this Apimodels chaining operation resp
func (m *ApimodelsChainingOperationResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsChainingOperationResp) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsChainingOperationResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsChainingOperationResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsChainingOperationResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
