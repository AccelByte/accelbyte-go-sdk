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

// CreateBasePolicyRequest Create base policy request
//
// swagger:model Create base policy request.
type CreateBasePolicyRequest struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// affectedcountries
	AffectedCountries []string `json:"affectedCountries,omitempty"`

	// basepolicyname
	BasePolicyName string `json:"basePolicyName,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`

	// country type, only accept COUNTRY or COUNTRY_GROUP
	// Enum: ['COUNTRY', 'COUNTRY_GROUP']
	CountryType string `json:"countryType,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// active status of this policy, it will affect user's eligibility status check
	IsHidden bool `json:"isHidden"`

	// hide the policy from public(e.g. legal website), it will NOT affect user's eligibility status check
	IsHiddenPublic bool `json:"isHiddenPublic"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// typeid
	TypeID string `json:"typeId,omitempty"`
}

// Validate validates this Create base policy request
func (m *CreateBasePolicyRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var createBasePolicyRequestTypeCountryTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COUNTRY", "COUNTRY_GROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		createBasePolicyRequestTypeCountryTypePropEnum = append(createBasePolicyRequestTypeCountryTypePropEnum, v)
	}
}

const (

	// CreateBasePolicyRequestCountryTypeCOUNTRY captures enum value "COUNTRY"
	CreateBasePolicyRequestCountryTypeCOUNTRY string = "COUNTRY"

	// CreateBasePolicyRequestCountryTypeCOUNTRYGROUP captures enum value "COUNTRY_GROUP"
	CreateBasePolicyRequestCountryTypeCOUNTRYGROUP string = "COUNTRY_GROUP"
)

// prop value enum
func (m *CreateBasePolicyRequest) validateCountryTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, createBasePolicyRequestTypeCountryTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateBasePolicyRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateBasePolicyRequest) UnmarshalBinary(b []byte) error {
	var res CreateBasePolicyRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
