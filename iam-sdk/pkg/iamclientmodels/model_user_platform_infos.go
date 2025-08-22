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

// ModelUserPlatformInfos Model user platform infos
//
// swagger:model Model user platform infos.
type ModelUserPlatformInfos struct {

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// platforminfos
	// Required: true
	PlatformInfos []*ModelUserPlatformInfo `json:"platformInfos"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user platform infos
func (m *ModelUserPlatformInfos) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformInfos(formats); err != nil {
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

func (m *ModelUserPlatformInfos) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformInfos) validatePlatformInfos(formats strfmt.Registry) error {

	if err := validate.Required("platformInfos", "body", m.PlatformInfos); err != nil {
		return err
	}

	for i := 0; i < len(m.PlatformInfos); i++ {
		if swag.IsZero(m.PlatformInfos[i]) { // not required
			continue
		}

		if m.PlatformInfos[i] != nil {
			if err := m.PlatformInfos[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platformInfos" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelUserPlatformInfos) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPlatformInfos) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPlatformInfos) UnmarshalBinary(b []byte) error {
	var res ModelUserPlatformInfos
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
