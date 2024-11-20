// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CreatePolicyRequest Create policy request
//
// swagger:model Create policy request.
type CreatePolicyRequest struct {

	// countries
	// Unique: true
	Countries []string `json:"countries"`

	// countrycode
	CountryCode string `json:"countryCode,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`

	// country type, only accept COUNTRY or COUNTRY_GROUP
	// Enum: ['COUNTRY', 'COUNTRY_GROUP']
	CountryType string `json:"countryType,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// isdefaultselection
	IsDefaultSelection bool `json:"isDefaultSelection"`

	// ismandatory
	IsMandatory bool `json:"isMandatory"`

	// policyname
	PolicyName string `json:"policyName,omitempty"`

	// shouldnotifyonupdate
	ShouldNotifyOnUpdate bool `json:"shouldNotifyOnUpdate"`
}

// Validate validates this Create policy request
func (m *CreatePolicyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var createPolicyRequestTypeCountryTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COUNTRY", "COUNTRY_GROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		createPolicyRequestTypeCountryTypePropEnum = append(createPolicyRequestTypeCountryTypePropEnum, v)
	}
}

const (

	// CreatePolicyRequestCountryTypeCOUNTRY captures enum value "COUNTRY"
	CreatePolicyRequestCountryTypeCOUNTRY string = "COUNTRY"

	// CreatePolicyRequestCountryTypeCOUNTRYGROUP captures enum value "COUNTRY_GROUP"
	CreatePolicyRequestCountryTypeCOUNTRYGROUP string = "COUNTRY_GROUP"
)

// prop value enum
func (m *CreatePolicyRequest) validateCountryTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, createPolicyRequestTypeCountryTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreatePolicyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreatePolicyRequest) UnmarshalBinary(b []byte) error {
	var res CreatePolicyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
