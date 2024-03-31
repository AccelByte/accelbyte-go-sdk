// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsGameSessionDetail Apimodels game session detail
//
// swagger:model Apimodels game session detail.
type ApimodelsGameSessionDetail struct {

	// created_at
	// Required: true
	CreatedAt *string `json:"created_at"`

	// histories
	// Required: true
	Histories []*ApimodelsHistory `json:"histories"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionID"`

	// session_template
	// Required: true
	SessionTemplate *string `json:"session_template"`
}

// Validate validates this Apimodels game session detail
func (m *ApimodelsGameSessionDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHistories(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsGameSessionDetail) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateHistories(formats strfmt.Registry) error {

	if err := validate.Required("histories", "body", m.Histories); err != nil {
		return err
	}

	for i := 0; i < len(m.Histories); i++ {
		if swag.IsZero(m.Histories[i]) { // not required
			continue
		}

		if m.Histories[i] != nil {
			if err := m.Histories[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("histories" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionID", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateSessionTemplate(formats strfmt.Registry) error {

	if err := validate.Required("session_template", "body", m.SessionTemplate); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsGameSessionDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsGameSessionDetail) UnmarshalBinary(b []byte) error {
	var res ApimodelsGameSessionDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
