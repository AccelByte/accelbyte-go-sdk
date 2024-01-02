// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelNativeSession Model native session
//
// swagger:model Model native session.
type ModelNativeSession struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// deletedat
	// Required: true
	// Format: date-time
	DeletedAt strfmt.DateTime `json:"DeletedAt"`

	// pushcontextid
	// Required: true
	PushContextID *string `json:"PushContextID"`

	// id
	// Required: true
	ID *string `json:"id"`

	// members
	// Required: true
	Members []*ModelNativeSessionMember `json:"members"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// nativesessionplatforms
	// Required: true
	NativeSessionPlatforms map[string]string `json:"nativeSessionPlatforms"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`
}

// Validate validates this Model native session
func (m *ModelNativeSession) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeletedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePushContextID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePersistent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNativeSession) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSession) validateDeletedAt(formats strfmt.Registry) error {

	if err := validate.Required("DeletedAt", "body", strfmt.DateTime(m.DeletedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("DeletedAt", "body", "date-time", m.DeletedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSession) validatePushContextID(formats strfmt.Registry) error {

	if err := validate.Required("PushContextID", "body", m.PushContextID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSession) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSession) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("members", "body", m.Members); err != nil {
		return err
	}

	for i := 0; i < len(m.Members); i++ {
		if swag.IsZero(m.Members[i]) { // not required
			continue
		}

		if m.Members[i] != nil {
			if err := m.Members[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelNativeSession) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeSession) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNativeSession) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNativeSession) UnmarshalBinary(b []byte) error {
	var res ModelNativeSession
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
