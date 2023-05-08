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

// AccountUserResponseV4 Account user response V4
//
// swagger:model Account user response V4.
type AccountUserResponseV4 struct {

	// authtype
	// Required: true
	AuthType *string `json:"authType"`

	// bans
	// Required: true
	Bans []*AccountUserActiveBanResponseV4 `json:"bans"`

	// country
	// Required: true
	Country *string `json:"country"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// dateofbirth
	// Required: true
	// Format: date-time
	DateOfBirth strfmt.DateTime `json:"dateOfBirth"`

	// deletionstatus
	// Required: true
	DeletionStatus *bool `json:"deletionStatus"`

	// displayname
	// Required: true
	DisplayName *string `json:"displayName"`

	// emailaddress
	// Required: true
	EmailAddress *string `json:"emailAddress"`

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

	// newemailaddress
	NewEmailAddress string `json:"newEmailAddress,omitempty"`

	// oldemailaddress
	// Required: true
	OldEmailAddress *string `json:"oldEmailAddress"`

	// permissions
	// Required: true
	Permissions []*AccountUserPermissionsResponseV4 `json:"permissions"`

	// phonenumber
	PhoneNumber string `json:"phoneNumber,omitempty"`

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

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// username
	Username string `json:"username,omitempty"`
}

// Validate validates this Account user response V4
func (m *AccountUserResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAuthType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBans(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCountry(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDateOfBirth(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeletionStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEmailAddress(formats); err != nil {
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
	if err := m.validateOldEmailAddress(formats); err != nil {
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

func (m *AccountUserResponseV4) validateAuthType(formats strfmt.Registry) error {

	if err := validate.Required("authType", "body", m.AuthType); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateBans(formats strfmt.Registry) error {

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

func (m *AccountUserResponseV4) validateCountry(formats strfmt.Registry) error {

	if err := validate.Required("country", "body", m.Country); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateDateOfBirth(formats strfmt.Registry) error {

	if err := validate.Required("dateOfBirth", "body", strfmt.DateTime(m.DateOfBirth)); err != nil {
		return err
	}

	if err := validate.FormatOf("dateOfBirth", "body", "date-time", m.DateOfBirth.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateDeletionStatus(formats strfmt.Registry) error {

	if err := validate.Required("deletionStatus", "body", m.DeletionStatus); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("displayName", "body", m.DisplayName); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("emailAddress", "body", m.EmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateEmailVerified(formats strfmt.Registry) error {

	if err := validate.Required("emailVerified", "body", m.EmailVerified); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateLastDateOfBirthChangedTime(formats strfmt.Registry) error {

	if err := validate.Required("lastDateOfBirthChangedTime", "body", strfmt.DateTime(m.LastDateOfBirthChangedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("lastDateOfBirthChangedTime", "body", "date-time", m.LastDateOfBirthChangedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateLastEnabledChangedTime(formats strfmt.Registry) error {

	if err := validate.Required("lastEnabledChangedTime", "body", strfmt.DateTime(m.LastEnabledChangedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("lastEnabledChangedTime", "body", "date-time", m.LastEnabledChangedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateOldEmailAddress(formats strfmt.Registry) error {

	if err := validate.Required("oldEmailAddress", "body", m.OldEmailAddress); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validatePermissions(formats strfmt.Registry) error {

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

func (m *AccountUserResponseV4) validatePhoneVerified(formats strfmt.Registry) error {

	if err := validate.Required("phoneVerified", "body", m.PhoneVerified); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateRoles(formats strfmt.Registry) error {

	if err := validate.Required("roles", "body", m.Roles); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserResponseV4) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountUserResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountUserResponseV4) UnmarshalBinary(b []byte) error {
	var res AccountUserResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
