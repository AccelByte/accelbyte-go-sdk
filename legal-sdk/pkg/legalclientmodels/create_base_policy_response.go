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

// CreateBasePolicyResponse Create base policy response
//
// swagger:model Create base policy response.
type CreateBasePolicyResponse struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// affectedcountries
	AffectedCountries []string `json:"affectedCountries,omitempty"`

	// countrygroupname
	CountryGroupName string `json:"countryGroupName,omitempty"`

	// countrytype
	// Enum: ['COUNTRY', 'COUNTRY_GROUP']
	CountryType string `json:"countryType,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// globalpolicyname
	GlobalPolicyName string `json:"globalPolicyName,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// active status of this policy, it will affect user's eligibility status check
	IsHidden bool `json:"isHidden"`

	// hide the policy from public(e.g. legal website), it will NOT affect user's eligibility status check
	IsHiddenPublic bool `json:"isHiddenPublic"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// policyid
	PolicyID string `json:"policyId,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// typeid
	TypeID string `json:"typeId,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Create base policy response
func (m *CreateBasePolicyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var createBasePolicyResponseTypeCountryTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COUNTRY", "COUNTRY_GROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		createBasePolicyResponseTypeCountryTypePropEnum = append(createBasePolicyResponseTypeCountryTypePropEnum, v)
	}
}

const (

	// CreateBasePolicyResponseCountryTypeCOUNTRY captures enum value "COUNTRY"
	CreateBasePolicyResponseCountryTypeCOUNTRY string = "COUNTRY"

	// CreateBasePolicyResponseCountryTypeCOUNTRYGROUP captures enum value "COUNTRY_GROUP"
	CreateBasePolicyResponseCountryTypeCOUNTRYGROUP string = "COUNTRY_GROUP"
)

// prop value enum
func (m *CreateBasePolicyResponse) validateCountryTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, createBasePolicyResponseTypeCountryTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CreateBasePolicyResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CreateBasePolicyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateBasePolicyResponse) UnmarshalBinary(b []byte) error {
	var res CreateBasePolicyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
