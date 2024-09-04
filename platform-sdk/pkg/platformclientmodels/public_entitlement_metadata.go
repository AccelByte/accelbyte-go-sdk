// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PublicEntitlementMetadata Public entitlement metadata
//
// swagger:model Public entitlement metadata.
type PublicEntitlementMetadata struct {

	// operationsource
	// Enum: ['INVENTORY']
	OperationSource string `json:"operationSource,omitempty"`
}

// Validate validates this Public entitlement metadata
func (m *PublicEntitlementMetadata) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var publicEntitlementMetadataTypeOperationSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INVENTORY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		publicEntitlementMetadataTypeOperationSourcePropEnum = append(publicEntitlementMetadataTypeOperationSourcePropEnum, v)
	}
}

const (

	// PublicEntitlementMetadataOperationSourceINVENTORY captures enum value "INVENTORY"
	PublicEntitlementMetadataOperationSourceINVENTORY string = "INVENTORY"
)

// prop value enum
func (m *PublicEntitlementMetadata) validateOperationSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, publicEntitlementMetadataTypeOperationSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PublicEntitlementMetadata) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PublicEntitlementMetadata) UnmarshalBinary(b []byte) error {
	var res PublicEntitlementMetadata
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
