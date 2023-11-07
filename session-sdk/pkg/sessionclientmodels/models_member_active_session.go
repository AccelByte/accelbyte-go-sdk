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

// ModelsMemberActiveSession Models member active session
//
// swagger:model Models member active session.
type ModelsMemberActiveSession struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// id
	// Required: true
	ID *string `json:"ID"`

	// memberid
	// Required: true
	MemberID *string `json:"MemberID"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// sessionids
	// Required: true
	SessionIDs []string `json:"SessionIDs"`

	// sessiontemplate
	// Required: true
	SessionTemplate *string `json:"SessionTemplate"`

	// total
	// Required: true
	// Format: int32
	Total *int32 `json:"Total"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"UpdatedAt"`
}

// Validate validates this Models member active session
func (m *ModelsMemberActiveSession) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMemberID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionIDs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotal(formats); err != nil {
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

func (m *ModelsMemberActiveSession) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateID(formats strfmt.Registry) error {

	if err := validate.Required("ID", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateMemberID(formats strfmt.Registry) error {

	if err := validate.Required("MemberID", "body", m.MemberID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateSessionIDs(formats strfmt.Registry) error {

	if err := validate.Required("SessionIDs", "body", m.SessionIDs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateSessionTemplate(formats strfmt.Registry) error {

	if err := validate.Required("SessionTemplate", "body", m.SessionTemplate); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateTotal(formats strfmt.Registry) error {

	if err := validate.Required("Total", "body", m.Total); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMemberActiveSession) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("UpdatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("UpdatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMemberActiveSession) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMemberActiveSession) UnmarshalBinary(b []byte) error {
	var res ModelsMemberActiveSession
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
