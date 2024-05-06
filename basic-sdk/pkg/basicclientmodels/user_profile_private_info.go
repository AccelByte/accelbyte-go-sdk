// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserProfilePrivateInfo User profile private info
//
// swagger:model User profile private info.
type UserProfilePrivateInfo struct {

	// avatarlargeurl
	AvatarLargeURL string `json:"avatarLargeUrl,omitempty"`

	// avatarsmallurl
	AvatarSmallURL string `json:"avatarSmallUrl,omitempty"`

	// avatarurl
	AvatarURL string `json:"avatarUrl,omitempty"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// dateofbirth
	// Format: date
	DateOfBirth *string `json:"dateOfBirth,omitempty"`

	// deprecated
	FirstName string `json:"firstName,omitempty"`

	// language
	Language string `json:"language,omitempty"`

	// deprecated
	LastName string `json:"lastName,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// privatecustomattributes
	PrivateCustomAttributes interface{} `json:"privateCustomAttributes,omitempty"`

	// publicid
	PublicID string `json:"publicId,omitempty"`

	// status
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// timezone
	TimeZone string `json:"timeZone,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`

	// zipcode
	ZipCode string `json:"zipCode,omitempty"`
}

// Validate validates this User profile private info
func (m *UserProfilePrivateInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var userProfilePrivateInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		userProfilePrivateInfoTypeStatusPropEnum = append(userProfilePrivateInfoTypeStatusPropEnum, v)
	}
}

const (

	// UserProfilePrivateInfoStatusACTIVE captures enum value "ACTIVE"
	UserProfilePrivateInfoStatusACTIVE string = "ACTIVE"

	// UserProfilePrivateInfoStatusINACTIVE captures enum value "INACTIVE"
	UserProfilePrivateInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *UserProfilePrivateInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, userProfilePrivateInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserProfilePrivateInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserProfilePrivateInfo) UnmarshalBinary(b []byte) error {
	var res UserProfilePrivateInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
