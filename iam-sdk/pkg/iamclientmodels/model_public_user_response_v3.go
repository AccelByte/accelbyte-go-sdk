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

// ModelPublicUserResponseV3 Model public user response V3
//
// swagger:model Model public user response V3.
type ModelPublicUserResponseV3 struct {

	// authtype
	// Required: true
	AuthType *string `json:"authType"`

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// bans
	// Required: true
	Bans []*ModelUserActiveBanResponseV3 `json:"bans"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// deletionstatus
	// Required: true
	DeletionStatus *bool `json:"deletionStatus"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// emailverified
	// Required: true
	EmailVerified *bool `json:"emailVerified"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// lastdateofbirthchangedtime
	// Required: true
	// Format: date-time
	LastDateOfBirthChangedTime strfmt.DateTime `json:"lastDateOfBirthChangedTime"`

	// lastenabledchangedtime
	// Required: true
	// Format: date-time
	LastEnabledChangedTime strfmt.DateTime `json:"lastEnabledChangedTime"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// namespaceroles
	// Required: true
	NamespaceRoles []*AccountcommonNamespaceRole `json:"namespaceRoles"`

	// permissions
	// Required: true
	Permissions []*ModelUserPermissionsResponseV3 `json:"permissions"`

	// phoneverified
	// Required: true
	PhoneVerified *bool `json:"phoneVerified"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`

	// roles
	// Required: true
	Roles []string `json:"roles"`

	// uniquedisplayname
	// Required: true
	UniqueDisplayName *string `json:"uniqueDisplayName"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// username
	UserName string `json:"userName,omitempty"`
}

// Validate validates this Model public user response V3
func (m *ModelPublicUserResponseV3) Validate(formats strfmt.Registry) error {
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
	if err := m.validateLastDateOfBirthChangedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastEnabledChangedTime(formats); err != nil {
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
	if err := m.validateUniqueDisplayName(formats); err != nil {
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

func (m *ModelPublicUserResponseV3) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateBans(formats strfmt.Registry) error {

	if err := validate.Required("bans", "body", m.Bans); err != nil {
		return err
	}

	for i := 0; i < len(m.Bans); i++ {
		if swag.IsZero(m.Bans[i]) { // not required
			continue
		}

		if m.Bans[i] != nil {
			if err := m.Bans[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("bans" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateDeletionStatus(formats strfmt.Registry) error {

	if err := validate.Required("deletionStatus", "body", m.DeletionStatus); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateEmailVerified(formats strfmt.Registry) error {

	if err := validate.Required("emailVerified", "body", m.EmailVerified); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateLastDateOfBirthChangedTime(formats strfmt.Registry) error {

	if err := validate.Required("lastDateOfBirthChangedTime", "body", strfmt.DateTime(m.LastDateOfBirthChangedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("lastDateOfBirthChangedTime", "body", "date-time", m.LastDateOfBirthChangedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateLastEnabledChangedTime(formats strfmt.Registry) error {

	if err := validate.Required("lastEnabledChangedTime", "body", strfmt.DateTime(m.LastEnabledChangedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("lastEnabledChangedTime", "body", "date-time", m.LastEnabledChangedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateNamespaceRoles(formats strfmt.Registry) error {

	if err := validate.Required("namespaceRoles", "body", m.NamespaceRoles); err != nil {
		return err
	}

	for i := 0; i < len(m.NamespaceRoles); i++ {
		if swag.IsZero(m.NamespaceRoles[i]) { // not required
			continue
		}

		if m.NamespaceRoles[i] != nil {
			if err := m.NamespaceRoles[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("namespaceRoles" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponseV3) validatePermissions(formats strfmt.Registry) error {

	if err := validate.Required("permissions", "body", m.Permissions); err != nil {
		return err
	}

	for i := 0; i < len(m.Permissions); i++ {
		if swag.IsZero(m.Permissions[i]) { // not required
			continue
		}

		if m.Permissions[i] != nil {
			if err := m.Permissions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("permissions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelPublicUserResponseV3) validatePhoneVerified(formats strfmt.Registry) error {

	if err := validate.Required("phoneVerified", "body", m.PhoneVerified); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateUniqueDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("uniqueDisplayName", "body", m.UniqueDisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelPublicUserResponseV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPublicUserResponseV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPublicUserResponseV3) UnmarshalBinary(b []byte) error {
	var res ModelPublicUserResponseV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
