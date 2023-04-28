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

// ModelPublicUserResponse Model public user response
//
// swagger:model Model public user response.
type ModelPublicUserResponse struct {

	// authtype
	// Required: true
	AuthType *string `json:"AuthType"`

	// bans
	// Required: true
	Bans []*ModelUserActiveBanResponse `json:"Bans"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// deletionstatus
	// Required: true
	DeletionStatus *bool `json:"DeletionStatus"`

	// displayname
	// Required: true
	DisplayName *string `json:"DisplayName"`

	// emailverified
	// Required: true
	EmailVerified *bool `json:"EmailVerified"`

	// enabled
	// Required: true
	Enabled *bool `json:"Enabled"`

	// lastenabledchangedtime
	// Required: true
	// Format: date-time
	LastEnabledChangedTime strfmt.DateTime `json:"LastEnabledChangedTime"`

	// loginid
	// Required: true
	LoginID *string `json:"LoginId"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// namespaceroles
	// Required: true
	NamespaceRoles []*AccountcommonNamespaceRole `json:"NamespaceRoles"`

	// permissions
	// Required: true
	Permissions []*AccountcommonPermission `json:"Permissions"`

	// phoneverified
	// Required: true
	PhoneVerified *bool `json:"PhoneVerified"`

	// platformid
	PlatformID string `json:"PlatformId,omitempty"`

	// platformuserid
	PlatformUserID string `json:"PlatformUserId,omitempty"`

	// roles
	// Required: true
	Roles []string `json:"Roles"`

	// userid
	// Required: true
	UserID *string `json:"UserId"`

	// username
	Username string `json:"Username,omitempty"`

	// xuid
	XUID string `json:"XUID,omitempty"`
}

// Validate validates this Model public user response
func (m *ModelPublicUserResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBans(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeletionStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailVerified(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastEnabledChangedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoginID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespaceRoles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePermissions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePhoneVerified(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRoles(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPublicUserResponse) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("AuthType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateBans(formats strfmt.Registry) error {

	if err := validate.Required("Bans", "body", m.Bans); err != nil {
		return err
	}

	for i := 0; i < len(m.Bans); i++ {
		if swag.IsZero(m.Bans[i]) { // not required
			continue
		}

		if m.Bans[i] != nil {
			if err := m.Bans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Bans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateDeletionStatus(formats strfmt.Registry) error {

	if err := validate.Required("DeletionStatus", "body", m.DeletionStatus); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("DisplayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateEmailVerified(formats strfmt.Registry) error {

	if err := validate.Required("EmailVerified", "body", m.EmailVerified); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("Enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateLastEnabledChangedTime(formats strfmt.Registry) error {

	if err := validate.Required("LastEnabledChangedTime", "body", strfmt.DateTime(m.LastEnabledChangedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("LastEnabledChangedTime", "body", "date-time", m.LastEnabledChangedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateLoginID(formats strfmt.Registry) error {

	if err := validate.Required("LoginId", "body", m.LoginID); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateNamespaceRoles(formats strfmt.Registry) error {

	if err := validate.Required("NamespaceRoles", "body", m.NamespaceRoles); err != nil {
		return err
	}

	for i := 0; i < len(m.NamespaceRoles); i++ {
		if swag.IsZero(m.NamespaceRoles[i]) { // not required
			continue
		}

		if m.NamespaceRoles[i] != nil {
			if err := m.NamespaceRoles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("NamespaceRoles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponse) validatePermissions(formats strfmt.Registry) error {

	if err := validate.Required("Permissions", "body", m.Permissions); err != nil {
		return err
	}

	for i := 0; i < len(m.Permissions); i++ {
		if swag.IsZero(m.Permissions[i]) { // not required
			continue
		}

		if m.Permissions[i] != nil {
			if err := m.Permissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Permissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponse) validatePhoneVerified(formats strfmt.Registry) error {

	if err := validate.Required("PhoneVerified", "body", m.PhoneVerified); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("Roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicUserResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicUserResponse) UnmarshalBinary(b []byte) error {
	var res ModelPublicUserResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
