// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsChainingOperationReq Apimodels chaining operation req
//
// swagger:model Apimodels chaining operation req.
type ApimodelsChainingOperationReq struct {

	// message
	// Required: true
	Message *string `json:"message"`

	// operations
	// Required: true
	Operations []*ApimodelsOperation `json:"operations"`

	// requestid
	// Required: true
	RequestID *string `json:"requestId"`
}

// Validate validates this Apimodels chaining operation req
func (m *ApimodelsChainingOperationReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperations(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsChainingOperationReq) validateMessage(formats strfmt.Registry) error {

	if err := validate.Required("message", "body", m.Message); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsChainingOperationReq) validateOperations(formats strfmt.Registry) error {

	if err := validate.Required("operations", "body", m.Operations); err != nil {
		return err
	}

	for i := 0; i < len(m.Operations); i++ {
		if swag.IsZero(m.Operations[i]) { // not required
			continue
		}

		if m.Operations[i] != nil {
			if err := m.Operations[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("operations" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsChainingOperationReq) validateRequestID(formats strfmt.Registry) error {

	if err := validate.Required("requestId", "body", m.RequestID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsChainingOperationReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsChainingOperationReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsChainingOperationReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
