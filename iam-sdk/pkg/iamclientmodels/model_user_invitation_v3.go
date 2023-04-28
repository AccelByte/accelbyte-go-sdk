// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUserInvitationV3 Model user invitation V3
//
// swagger:model Model user invitation V3.
type ModelUserInvitationV3 struct {

	// email
	// Required: true
	Email *string `json:"email"`

	// expiredat
	// Required: true
	// Format: date-time
	ExpiredAt strfmt.DateTime `json:"expiredAt"`

	// id
	ID string `json:"id,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// namespacedisplayname
	NamespaceDisplayName string `json:"namespaceDisplayName,omitempty"`

	// roles
	// Required: true
	Roles []*AccountcommonNamespaceRole `json:"roles"`
}

// Validate validates this Model user invitation V3
func (m *ModelUserInvitationV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEmail(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExpiredAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoles(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserInvitationV3) validateEmail(formats strfmt.Registry) error {

	if err := validate.Required("email", "body", m.Email); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInvitationV3) validateExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("expiredAt", "body", strfmt.DateTime(m.ExpiredAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("expiredAt", "body", "date-time", m.ExpiredAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserInvitationV3) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	for i := 0; i < len(m.Roles); i++ {
		if swag.IsZero(m.Roles[i]) { // not required
			continue
		}

		if m.Roles[i] != nil {
			if err := m.Roles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("roles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInvitationV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInvitationV3) UnmarshalBinary(b []byte) error {
	var res ModelUserInvitationV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
