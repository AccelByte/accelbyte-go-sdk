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

// EntitlementInfo Entitlement info
//
// swagger:model Entitlement info.
type EntitlementInfo struct {

	// appId if entitlement is an app
	AppID string `json:"appId,omitempty"`

	// appType if entitlement is an app
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// entitlement class
	// Enum: ['APP', 'CODE', 'ENTITLEMENT', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SUBSCRIPTION']
	// Required: true
	Clazz *string `json:"clazz"`

	// entitlement created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// entitlement end date
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement features
	// Unique: true
	Features []string `json:"features"`

	// entitlement granted at
	// Required: true
	// Format: date-time
	GrantedAt strfmt.DateTime `json:"grantedAt"`

	// grantedCode, the granted code
	GrantedCode string `json:"grantedCode,omitempty"`

	// entitlement id
	// Required: true
	ID *string `json:"id"`

	// itemId of the entitlement
	// Required: true
	ItemID *string `json:"itemId"`

	// itemNamespace for the purchased item
	// Required: true
	ItemNamespace *string `json:"itemNamespace"`

	// itemSnapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// entitlement name
	// Required: true
	Name *string `json:"name"`

	// entitlement namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// sku for purchased item
	Sku string `json:"sku,omitempty"`

	// entitlement source
	// Enum: ['ACHIEVEMENT', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	// Required: true
	Source *string `json:"source"`

	// Whether the CONSUMABLE entitlement is stackable
	Stackable bool `json:"stackable"`

	// entitlement start date
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// entitlement status
	// Enum: ['ACTIVE', 'CONSUMED', 'INACTIVE', 'REVOKED', 'SOLD']
	// Required: true
	Status *string `json:"status"`

	// storeId of the item, published store if omitted
	StoreID string `json:"storeId,omitempty"`

	// entitlement type
	// Enum: ['CONSUMABLE', 'DURABLE']
	// Required: true
	Type *string `json:"type"`

	// entitlement updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// useCount for entitlement
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`

	// userId for this entitlement
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Entitlement info
func (m *EntitlementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClazz(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGrantedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

var entitlementInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeAppTypePropEnum = append(entitlementInfoTypeAppTypePropEnum, v)
	}
}

const (

	// EntitlementInfoAppTypeDEMO captures enum value "DEMO"
	EntitlementInfoAppTypeDEMO string = "DEMO"

	// EntitlementInfoAppTypeDLC captures enum value "DLC"
	EntitlementInfoAppTypeDLC string = "DLC"

	// EntitlementInfoAppTypeGAME captures enum value "GAME"
	EntitlementInfoAppTypeGAME string = "GAME"

	// EntitlementInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	EntitlementInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *EntitlementInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var entitlementInfoTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "CODE", "ENTITLEMENT", "LOOTBOX", "MEDIA", "OPTIONBOX", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeClazzPropEnum = append(entitlementInfoTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementInfoClazzAPP captures enum value "APP"
	EntitlementInfoClazzAPP string = "APP"

	// EntitlementInfoClazzCODE captures enum value "CODE"
	EntitlementInfoClazzCODE string = "CODE"

	// EntitlementInfoClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementInfoClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementInfoClazzLOOTBOX captures enum value "LOOTBOX"
	EntitlementInfoClazzLOOTBOX string = "LOOTBOX"

	// EntitlementInfoClazzMEDIA captures enum value "MEDIA"
	EntitlementInfoClazzMEDIA string = "MEDIA"

	// EntitlementInfoClazzOPTIONBOX captures enum value "OPTIONBOX"
	EntitlementInfoClazzOPTIONBOX string = "OPTIONBOX"

	// EntitlementInfoClazzSUBSCRIPTION captures enum value "SUBSCRIPTION"
	EntitlementInfoClazzSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *EntitlementInfo) validateClazzEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeClazzPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementInfo) validateClazz(formats strfmt.Registry) error {

	if err := validate.Required("clazz", "body", m.Clazz); err != nil {
		return err
	}

	// value enum
	if err := m.validateClazzEnum("clazz", "body", *m.Clazz); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateGrantedAt(formats strfmt.Registry) error {

	if err := validate.Required("grantedAt", "body", strfmt.DateTime(m.GrantedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("grantedAt", "body", "date-time", m.GrantedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateItemNamespace(formats strfmt.Registry) error {

	if err := validate.Required("itemNamespace", "body", m.ItemNamespace); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var entitlementInfoTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeSourcePropEnum = append(entitlementInfoTypeSourcePropEnum, v)
	}
}

const (

	// EntitlementInfoSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	EntitlementInfoSourceACHIEVEMENT string = "ACHIEVEMENT"

	// EntitlementInfoSourceGIFT captures enum value "GIFT"
	EntitlementInfoSourceGIFT string = "GIFT"

	// EntitlementInfoSourceIAP captures enum value "IAP"
	EntitlementInfoSourceIAP string = "IAP"

	// EntitlementInfoSourceOTHER captures enum value "OTHER"
	EntitlementInfoSourceOTHER string = "OTHER"

	// EntitlementInfoSourcePROMOTION captures enum value "PROMOTION"
	EntitlementInfoSourcePROMOTION string = "PROMOTION"

	// EntitlementInfoSourcePURCHASE captures enum value "PURCHASE"
	EntitlementInfoSourcePURCHASE string = "PURCHASE"

	// EntitlementInfoSourceREDEEMCODE captures enum value "REDEEM_CODE"
	EntitlementInfoSourceREDEEMCODE string = "REDEEM_CODE"

	// EntitlementInfoSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	EntitlementInfoSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// EntitlementInfoSourceREWARD captures enum value "REWARD"
	EntitlementInfoSourceREWARD string = "REWARD"
)

// prop value enum
func (m *EntitlementInfo) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementInfo) validateSource(formats strfmt.Registry) error {

	if err := validate.Required("source", "body", m.Source); err != nil {
		return err
	}

	// value enum
	if err := m.validateSourceEnum("source", "body", *m.Source); err != nil {
		return err
	}

	return nil
}

var entitlementInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeStatusPropEnum = append(entitlementInfoTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementInfoStatusACTIVE captures enum value "ACTIVE"
	EntitlementInfoStatusACTIVE string = "ACTIVE"

	// EntitlementInfoStatusCONSUMED captures enum value "CONSUMED"
	EntitlementInfoStatusCONSUMED string = "CONSUMED"

	// EntitlementInfoStatusINACTIVE captures enum value "INACTIVE"
	EntitlementInfoStatusINACTIVE string = "INACTIVE"

	// EntitlementInfoStatusREVOKED captures enum value "REVOKED"
	EntitlementInfoStatusREVOKED string = "REVOKED"

	// EntitlementInfoStatusSOLD captures enum value "SOLD"
	EntitlementInfoStatusSOLD string = "SOLD"
)

// prop value enum
func (m *EntitlementInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var entitlementInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONSUMABLE", "DURABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeTypePropEnum = append(entitlementInfoTypeTypePropEnum, v)
	}
}

const (

	// EntitlementInfoTypeCONSUMABLE captures enum value "CONSUMABLE"
	EntitlementInfoTypeCONSUMABLE string = "CONSUMABLE"

	// EntitlementInfoTypeDURABLE captures enum value "DURABLE"
	EntitlementInfoTypeDURABLE string = "DURABLE"
)

// prop value enum
func (m *EntitlementInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementInfo) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementInfo) UnmarshalBinary(b []byte) error {
	var res EntitlementInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
