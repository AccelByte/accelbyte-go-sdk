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

// CatalogDefinitionInfo Catalog definition info
//
// swagger:model Catalog definition info.
type CatalogDefinitionInfo struct {

	// actual field name
	// Required: true
	Field *string `json:"field"`

	// item type, not empty if requesting item and the field is for a specified item type only
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// field name
	// Required: true
	Name *string `json:"name"`

	// whether this is a mandatory field
	// Required: true
	Required *bool `json:"required"`
}

// Validate validates this Catalog definition info
func (m *CatalogDefinitionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateField(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequired(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CatalogDefinitionInfo) validateField(formats strfmt.Registry) error {

	if err := validate.Required("field", "body", m.Field); err != nil {
		return err
	}

	return nil
}

var catalogDefinitionInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogDefinitionInfoTypeItemTypePropEnum = append(catalogDefinitionInfoTypeItemTypePropEnum, v)
	}
}

const (

	// CatalogDefinitionInfoItemTypeAPP captures enum value "APP"
	CatalogDefinitionInfoItemTypeAPP string = "APP"

	// CatalogDefinitionInfoItemTypeBUNDLE captures enum value "BUNDLE"
	CatalogDefinitionInfoItemTypeBUNDLE string = "BUNDLE"

	// CatalogDefinitionInfoItemTypeCODE captures enum value "CODE"
	CatalogDefinitionInfoItemTypeCODE string = "CODE"

	// CatalogDefinitionInfoItemTypeCOINS captures enum value "COINS"
	CatalogDefinitionInfoItemTypeCOINS string = "COINS"

	// CatalogDefinitionInfoItemTypeEXTENSION captures enum value "EXTENSION"
	CatalogDefinitionInfoItemTypeEXTENSION string = "EXTENSION"

	// CatalogDefinitionInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	CatalogDefinitionInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// CatalogDefinitionInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	CatalogDefinitionInfoItemTypeLOOTBOX string = "LOOTBOX"

	// CatalogDefinitionInfoItemTypeMEDIA captures enum value "MEDIA"
	CatalogDefinitionInfoItemTypeMEDIA string = "MEDIA"

	// CatalogDefinitionInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	CatalogDefinitionInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// CatalogDefinitionInfoItemTypeSEASON captures enum value "SEASON"
	CatalogDefinitionInfoItemTypeSEASON string = "SEASON"

	// CatalogDefinitionInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	CatalogDefinitionInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *CatalogDefinitionInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogDefinitionInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CatalogDefinitionInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *CatalogDefinitionInfo) validateRequired(formats strfmt.Registry) error {

	if err := validate.Required("required", "body", m.Required); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CatalogDefinitionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogDefinitionInfo) UnmarshalBinary(b []byte) error {
	var res CatalogDefinitionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
