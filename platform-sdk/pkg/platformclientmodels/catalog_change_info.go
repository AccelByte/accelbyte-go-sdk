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

// CatalogChangeInfo Catalog change info
//
// swagger:model Catalog change info.
type CatalogChangeInfo struct {

	// change action
	// Enum: ['CREATE', 'DELETE', 'UPDATE']
	// Required: true
	Action *string `json:"action"`

	// category path id type Category
	CategoryPath string `json:"categoryPath,omitempty"`

	// change id
	// Required: true
	ChangeID *string `json:"changeId"`

	// created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// a description if this change is not directly caused by user action. eg: bundle item
	Description string `json:"description,omitempty"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// publish time
	// Format: date-time
	PublishedAt *strfmt.DateTime `json:"publishedAt,omitempty"`

	// section id, only exists when change type is section
	SectionID string `json:"sectionId,omitempty"`

	// if it is selected for partial publish
	// Required: true
	Selected *bool `json:"selected"`

	// item sku
	Sku string `json:"sku,omitempty"`

	// change status
	// Enum: ['PUBLISHED', 'UNPUBLISHED']
	// Required: true
	Status *string `json:"status"`

	// store id
	// Required: true
	StoreID *string `json:"storeId"`

	// store title or item's name
	Title string `json:"title,omitempty"`

	// change type
	// Enum: ['CATEGORY', 'ITEM', 'SECTION', 'STORE', 'VIEW']
	Type string `json:"type,omitempty"`

	// updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// view id, only exists when change type is view
	ViewID string `json:"viewId,omitempty"`
}

// Validate validates this Catalog change info
func (m *CatalogChangeInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateChangeID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSelected(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStoreID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var catalogChangeInfoTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CREATE", "DELETE", "UPDATE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogChangeInfoTypeActionPropEnum = append(catalogChangeInfoTypeActionPropEnum, v)
	}
}

const (

	// CatalogChangeInfoActionCREATE captures enum value "CREATE"
	CatalogChangeInfoActionCREATE string = "CREATE"

	// CatalogChangeInfoActionDELETE captures enum value "DELETE"
	CatalogChangeInfoActionDELETE string = "DELETE"

	// CatalogChangeInfoActionUPDATE captures enum value "UPDATE"
	CatalogChangeInfoActionUPDATE string = "UPDATE"
)

// prop value enum
func (m *CatalogChangeInfo) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogChangeInfoTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CatalogChangeInfo) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	// value enum
	if err := m.validateActionEnum("action", "body", *m.Action); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeInfo) validateChangeID(formats strfmt.Registry) error {

	if err := validate.Required("changeId", "body", m.ChangeID); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

var catalogChangeInfoTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogChangeInfoTypeItemTypePropEnum = append(catalogChangeInfoTypeItemTypePropEnum, v)
	}
}

const (

	// CatalogChangeInfoItemTypeAPP captures enum value "APP"
	CatalogChangeInfoItemTypeAPP string = "APP"

	// CatalogChangeInfoItemTypeBUNDLE captures enum value "BUNDLE"
	CatalogChangeInfoItemTypeBUNDLE string = "BUNDLE"

	// CatalogChangeInfoItemTypeCODE captures enum value "CODE"
	CatalogChangeInfoItemTypeCODE string = "CODE"

	// CatalogChangeInfoItemTypeCOINS captures enum value "COINS"
	CatalogChangeInfoItemTypeCOINS string = "COINS"

	// CatalogChangeInfoItemTypeEXTENSION captures enum value "EXTENSION"
	CatalogChangeInfoItemTypeEXTENSION string = "EXTENSION"

	// CatalogChangeInfoItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	CatalogChangeInfoItemTypeINGAMEITEM string = "INGAMEITEM"

	// CatalogChangeInfoItemTypeLOOTBOX captures enum value "LOOTBOX"
	CatalogChangeInfoItemTypeLOOTBOX string = "LOOTBOX"

	// CatalogChangeInfoItemTypeMEDIA captures enum value "MEDIA"
	CatalogChangeInfoItemTypeMEDIA string = "MEDIA"

	// CatalogChangeInfoItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	CatalogChangeInfoItemTypeOPTIONBOX string = "OPTIONBOX"

	// CatalogChangeInfoItemTypeSEASON captures enum value "SEASON"
	CatalogChangeInfoItemTypeSEASON string = "SEASON"

	// CatalogChangeInfoItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	CatalogChangeInfoItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *CatalogChangeInfo) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogChangeInfoTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CatalogChangeInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeInfo) validateSelected(formats strfmt.Registry) error {

	if err := validate.Required("selected", "body", m.Selected); err != nil {
		return err
	}

	return nil
}

var catalogChangeInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PUBLISHED", "UNPUBLISHED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogChangeInfoTypeStatusPropEnum = append(catalogChangeInfoTypeStatusPropEnum, v)
	}
}

const (

	// CatalogChangeInfoStatusPUBLISHED captures enum value "PUBLISHED"
	CatalogChangeInfoStatusPUBLISHED string = "PUBLISHED"

	// CatalogChangeInfoStatusUNPUBLISHED captures enum value "UNPUBLISHED"
	CatalogChangeInfoStatusUNPUBLISHED string = "UNPUBLISHED"
)

// prop value enum
func (m *CatalogChangeInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogChangeInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CatalogChangeInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *CatalogChangeInfo) validateStoreID(formats strfmt.Registry) error {

	if err := validate.Required("storeId", "body", m.StoreID); err != nil {
		return err
	}

	return nil
}

var catalogChangeInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CATEGORY", "ITEM", "SECTION", "STORE", "VIEW"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogChangeInfoTypeTypePropEnum = append(catalogChangeInfoTypeTypePropEnum, v)
	}
}

const (

	// CatalogChangeInfoTypeCATEGORY captures enum value "CATEGORY"
	CatalogChangeInfoTypeCATEGORY string = "CATEGORY"

	// CatalogChangeInfoTypeITEM captures enum value "ITEM"
	CatalogChangeInfoTypeITEM string = "ITEM"

	// CatalogChangeInfoTypeSECTION captures enum value "SECTION"
	CatalogChangeInfoTypeSECTION string = "SECTION"

	// CatalogChangeInfoTypeSTORE captures enum value "STORE"
	CatalogChangeInfoTypeSTORE string = "STORE"

	// CatalogChangeInfoTypeVIEW captures enum value "VIEW"
	CatalogChangeInfoTypeVIEW string = "VIEW"
)

// prop value enum
func (m *CatalogChangeInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogChangeInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CatalogChangeInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CatalogChangeInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogChangeInfo) UnmarshalBinary(b []byte) error {
	var res CatalogChangeInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
