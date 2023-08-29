// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsCreateTagReq Apimodels create tag req
//
// swagger:model Apimodels create tag req.
type ApimodelsCreateTagReq struct {

	// name
	// Required: true
	Name *string `json:"name"`

	// owner
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	Owner *string `json:"owner"`
}

// Validate validates this Apimodels create tag req
func (m *ApimodelsCreateTagReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOwner(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsCreateTagReq) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateTagReqTypeOwnerPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateTagReqTypeOwnerPropEnum = append(apimodelsCreateTagReqTypeOwnerPropEnum, v)
	}
}

const (

	// ApimodelsCreateTagReqOwnerCLIENT captures enum value "CLIENT"
	ApimodelsCreateTagReqOwnerCLIENT string = "CLIENT"

	// ApimodelsCreateTagReqOwnerSERVER captures enum value "SERVER"
	ApimodelsCreateTagReqOwnerSERVER string = "SERVER"
)

// prop value enum
func (m *ApimodelsCreateTagReq) validateOwnerEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateTagReqTypeOwnerPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateTagReq) validateOwner(formats strfmt.Registry) error {

	if err := validate.Required("owner", "body", m.Owner); err != nil {
		return err
	}

	// value enum
	if err := m.validateOwnerEnum("owner", "body", *m.Owner); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateTagReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateTagReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateTagReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
