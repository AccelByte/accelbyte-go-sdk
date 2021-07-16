// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// EntitlementInfo entitlement info
//
// swagger:model EntitlementInfo
type EntitlementInfo struct {

	// appId if entitlement is an app
	AppID string `json:"appId,omitempty"`

	// appType if entitlement is an app
	// Enum: [GAME SOFTWARE DLC DEMO]
	AppType string `json:"appType,omitempty"`

	// entitlement class
	// Required: true
	// Enum: [APP ENTITLEMENT DISTRIBUTION CODE SUBSCRIPTION]
	Clazz *string `json:"clazz"`

	// entitlement created at
	// Required: true
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt"`

	// distributed quantity for distribution, required if DISTRIBUTION
	DistributedQuantity int32 `json:"distributedQuantity,omitempty"`

	// entitlement end date
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement features
	// Unique: true
	Features []string `json:"features"`

	// entitlement granted at
	// Required: true
	// Format: date-time
	GrantedAt *strfmt.DateTime `json:"grantedAt"`

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

	// itemSnapshot for distribution
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// entitlement name
	// Required: true
	Name *string `json:"name"`

	// entitlement namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// purchased quantity for distribution, required if DISTRIBUTION
	Quantity int32 `json:"quantity,omitempty"`

	// sku for purchased item
	Sku string `json:"sku,omitempty"`

	// entitlement source
	// Required: true
	// Enum: [PURCHASE IAP PROMOTION ACHIEVEMENT REFERRAL_BONUS REDEEM_CODE OTHER]
	Source *string `json:"source"`

	// Whether the CONSUMABLE entitlement is stackable
	Stackable bool `json:"stackable,omitempty"`

	// entitlement start date
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// entitlement status
	// Required: true
	// Enum: [ACTIVE INACTIVE CONSUMED DISTRIBUTED REVOKED]
	Status *string `json:"status"`

	// targetNamespace for distribution
	TargetNamespace string `json:"targetNamespace,omitempty"`

	// entitlement type
	// Required: true
	// Enum: [DURABLE CONSUMABLE]
	Type *string `json:"type"`

	// entitlement updated at
	// Required: true
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt"`

	// useCount for entitlement
	UseCount int32 `json:"useCount,omitempty"`

	// userId for this entitlement
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this entitlement info
func (m *EntitlementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateClazz(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFeatures(formats); err != nil {
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

	if err := m.validateItemSnapshot(formats); err != nil {
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

	if err := m.validateStartDate(formats); err != nil {
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
	if err := json.Unmarshal([]byte(`["GAME","SOFTWARE","DLC","DEMO"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeAppTypePropEnum = append(entitlementInfoTypeAppTypePropEnum, v)
	}
}

const (

	// EntitlementInfoAppTypeGAME captures enum value "GAME"
	EntitlementInfoAppTypeGAME string = "GAME"

	// EntitlementInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	EntitlementInfoAppTypeSOFTWARE string = "SOFTWARE"

	// EntitlementInfoAppTypeDLC captures enum value "DLC"
	EntitlementInfoAppTypeDLC string = "DLC"

	// EntitlementInfoAppTypeDEMO captures enum value "DEMO"
	EntitlementInfoAppTypeDEMO string = "DEMO"
)

// prop value enum
func (m *EntitlementInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementInfo) validateAppType(formats strfmt.Registry) error {

	if swag.IsZero(m.AppType) { // not required
		return nil
	}

	// value enum
	if err := m.validateAppTypeEnum("appType", "body", m.AppType); err != nil {
		return err
	}

	return nil
}

var entitlementInfoTypeClazzPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP","ENTITLEMENT","DISTRIBUTION","CODE","SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeClazzPropEnum = append(entitlementInfoTypeClazzPropEnum, v)
	}
}

const (

	// EntitlementInfoClazzAPP captures enum value "APP"
	EntitlementInfoClazzAPP string = "APP"

	// EntitlementInfoClazzENTITLEMENT captures enum value "ENTITLEMENT"
	EntitlementInfoClazzENTITLEMENT string = "ENTITLEMENT"

	// EntitlementInfoClazzDISTRIBUTION captures enum value "DISTRIBUTION"
	EntitlementInfoClazzDISTRIBUTION string = "DISTRIBUTION"

	// EntitlementInfoClazzCODE captures enum value "CODE"
	EntitlementInfoClazzCODE string = "CODE"

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

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateEndDate(formats strfmt.Registry) error {

	if swag.IsZero(m.EndDate) { // not required
		return nil
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateFeatures(formats strfmt.Registry) error {

	if swag.IsZero(m.Features) { // not required
		return nil
	}

	if err := validate.UniqueItems("features", "body", m.Features); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementInfo) validateGrantedAt(formats strfmt.Registry) error {

	if err := validate.Required("grantedAt", "body", m.GrantedAt); err != nil {
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

func (m *EntitlementInfo) validateItemSnapshot(formats strfmt.Registry) error {

	if swag.IsZero(m.ItemSnapshot) { // not required
		return nil
	}

	if m.ItemSnapshot != nil {
		if err := m.ItemSnapshot.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("itemSnapshot")
			}
			return err
		}
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
	if err := json.Unmarshal([]byte(`["PURCHASE","IAP","PROMOTION","ACHIEVEMENT","REFERRAL_BONUS","REDEEM_CODE","OTHER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeSourcePropEnum = append(entitlementInfoTypeSourcePropEnum, v)
	}
}

const (

	// EntitlementInfoSourcePURCHASE captures enum value "PURCHASE"
	EntitlementInfoSourcePURCHASE string = "PURCHASE"

	// EntitlementInfoSourceIAP captures enum value "IAP"
	EntitlementInfoSourceIAP string = "IAP"

	// EntitlementInfoSourcePROMOTION captures enum value "PROMOTION"
	EntitlementInfoSourcePROMOTION string = "PROMOTION"

	// EntitlementInfoSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	EntitlementInfoSourceACHIEVEMENT string = "ACHIEVEMENT"

	// EntitlementInfoSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	EntitlementInfoSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// EntitlementInfoSourceREDEEMCODE captures enum value "REDEEM_CODE"
	EntitlementInfoSourceREDEEMCODE string = "REDEEM_CODE"

	// EntitlementInfoSourceOTHER captures enum value "OTHER"
	EntitlementInfoSourceOTHER string = "OTHER"
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

func (m *EntitlementInfo) validateStartDate(formats strfmt.Registry) error {

	if swag.IsZero(m.StartDate) { // not required
		return nil
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

var entitlementInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE","CONSUMED","DISTRIBUTED","REVOKED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeStatusPropEnum = append(entitlementInfoTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementInfoStatusACTIVE captures enum value "ACTIVE"
	EntitlementInfoStatusACTIVE string = "ACTIVE"

	// EntitlementInfoStatusINACTIVE captures enum value "INACTIVE"
	EntitlementInfoStatusINACTIVE string = "INACTIVE"

	// EntitlementInfoStatusCONSUMED captures enum value "CONSUMED"
	EntitlementInfoStatusCONSUMED string = "CONSUMED"

	// EntitlementInfoStatusDISTRIBUTED captures enum value "DISTRIBUTED"
	EntitlementInfoStatusDISTRIBUTED string = "DISTRIBUTED"

	// EntitlementInfoStatusREVOKED captures enum value "REVOKED"
	EntitlementInfoStatusREVOKED string = "REVOKED"
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
	if err := json.Unmarshal([]byte(`["DURABLE","CONSUMABLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementInfoTypeTypePropEnum = append(entitlementInfoTypeTypePropEnum, v)
	}
}

const (

	// EntitlementInfoTypeDURABLE captures enum value "DURABLE"
	EntitlementInfoTypeDURABLE string = "DURABLE"

	// EntitlementInfoTypeCONSUMABLE captures enum value "CONSUMABLE"
	EntitlementInfoTypeCONSUMABLE string = "CONSUMABLE"
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

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
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
