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

// ApimodelsPartyDetail Apimodels party detail
//
// swagger:model Apimodels party detail.
type ApimodelsPartyDetail struct {

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// histories
	// Required: true
	Histories []*ApimodelsPartyHistory `json:"histories"`

	// joinability
	// Required: true
	Joinability *string `json:"joinability"`

	// last_data
	// Required: true
	LastData *ModelsParty `json:"last_data"`

	// leader_id
	// Required: true
	LeaderID *string `json:"leader_id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// partysessionid
	// Required: true
	PartySessionID *string `json:"partySessionID"`

	// session_template
	// Required: true
	SessionTemplate *string `json:"session_template"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`
}

// Validate validates this Apimodels party detail
func (m *ApimodelsPartyDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHistories(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinability(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartySessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPartyDetail) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateHistories(formats strfmt.Registry) error {

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

func (m *ApimodelsPartyDetail) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateLastData(formats strfmt.Registry) error {

	if err := validate.Required("last_data", "body", m.LastData); err != nil {
		return err
	}

	if m.LastData != nil {
		if err := m.LastData.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("last_data")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("leader_id", "body", m.LeaderID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validatePartySessionID(formats strfmt.Registry) error {

	if err := validate.Required("partySessionID", "body", m.PartySessionID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateSessionTemplate(formats strfmt.Registry) error {

	if err := validate.Required("session_template", "body", m.SessionTemplate); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPartyDetail) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPartyDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPartyDetail) UnmarshalBinary(b []byte) error {
	var res ApimodelsPartyDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
