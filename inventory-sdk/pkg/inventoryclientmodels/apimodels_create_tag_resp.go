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

// ApimodelsCreateTagResp Apimodels create tag resp
//
// swagger:model Apimodels create tag resp.
type ApimodelsCreateTagResp struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// owner
	// Enum: ['CLIENT', 'SERVER']
	// Required: true
	Owner *string `json:"owner"`
}

// Validate validates this Apimodels create tag resp
func (m *ApimodelsCreateTagResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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

func (m *ApimodelsCreateTagResp) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateTagResp) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateTagResp) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var apimodelsCreateTagRespTypeOwnerPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CLIENT", "SERVER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsCreateTagRespTypeOwnerPropEnum = append(apimodelsCreateTagRespTypeOwnerPropEnum, v)
	}
}

const (

	// ApimodelsCreateTagRespOwnerCLIENT captures enum value "CLIENT"
	ApimodelsCreateTagRespOwnerCLIENT string = "CLIENT"

	// ApimodelsCreateTagRespOwnerSERVER captures enum value "SERVER"
	ApimodelsCreateTagRespOwnerSERVER string = "SERVER"
)

// prop value enum
func (m *ApimodelsCreateTagResp) validateOwnerEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsCreateTagRespTypeOwnerPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsCreateTagResp) validateOwner(formats strfmt.Registry) error {

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
func (m *ApimodelsCreateTagResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateTagResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateTagResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
