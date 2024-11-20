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

// CreateBasePolicyRequestV2 Create base policy request V2
//
// swagger:model Create base policy request V2.
type CreateBasePolicyRequestV2 struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// affectedcountries
	// Unique: true
	AffectedCountries []string `json:"affectedCountries"`

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

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// typeid
	TypeID string `json:"typeId,omitempty"`
}

// Validate validates this Create base policy request V2
func (m *CreateBasePolicyRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var createBasePolicyRequestV2TypeCountryTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COUNTRY", "COUNTRY_GROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		createBasePolicyRequestV2TypeCountryTypePropEnum = append(createBasePolicyRequestV2TypeCountryTypePropEnum, v)
	}
}

const (

	// CreateBasePolicyRequestV2CountryTypeCOUNTRY captures enum value "COUNTRY"
	CreateBasePolicyRequestV2CountryTypeCOUNTRY string = "COUNTRY"

	// CreateBasePolicyRequestV2CountryTypeCOUNTRYGROUP captures enum value "COUNTRY_GROUP"
	CreateBasePolicyRequestV2CountryTypeCOUNTRYGROUP string = "COUNTRY_GROUP"
)

// prop value enum
func (m *CreateBasePolicyRequestV2) validateCountryTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, createBasePolicyRequestV2TypeCountryTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreateBasePolicyRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreateBasePolicyRequestV2) UnmarshalBinary(b []byte) error {
	var res CreateBasePolicyRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
