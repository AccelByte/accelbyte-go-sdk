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

// AppEntitlementInfo app entitlement info
//
// swagger:model AppEntitlementInfo
type AppEntitlementInfo struct {

	// appId for APP type entitlement
	AppID string `json:"appId,omitempty"`

	// appType for APP type entitlement
	// Enum: [GAME SOFTWARE DLC DEMO]
	AppType string `json:"appType,omitempty"`

	// entitlement end date
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement granted at
	// Required: true
	// Format: date-time
	GrantedAt *strfmt.DateTime `json:"grantedAt"`

	// item id
	ItemID string `json:"itemId,omitempty"`

	// itemSnapshot
	ItemSnapshot *ItemSnapshot `json:"itemSnapshot,omitempty"`

	// entitlement namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// unique sku no for item
	Sku string `json:"sku,omitempty"`

	// entitlement start date
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate,omitempty"`

	// entitlement status
	// Required: true
	// Enum: [ACTIVE INACTIVE CONSUMED REVOKED]
	Status *string `json:"status"`

	// item store id, null if published store
	StoreID string `json:"storeId,omitempty"`

	// entitlement owner
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this app entitlement info
func (m *AppEntitlementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGrantedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateItemSnapshot(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStartDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
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

var appEntitlementInfoTypeAppTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["GAME","SOFTWARE","DLC","DEMO"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appEntitlementInfoTypeAppTypePropEnum = append(appEntitlementInfoTypeAppTypePropEnum, v)
	}
}

const (

	// AppEntitlementInfoAppTypeGAME captures enum value "GAME"
	AppEntitlementInfoAppTypeGAME string = "GAME"

	// AppEntitlementInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	AppEntitlementInfoAppTypeSOFTWARE string = "SOFTWARE"

	// AppEntitlementInfoAppTypeDLC captures enum value "DLC"
	AppEntitlementInfoAppTypeDLC string = "DLC"

	// AppEntitlementInfoAppTypeDEMO captures enum value "DEMO"
	AppEntitlementInfoAppTypeDEMO string = "DEMO"
)

// prop value enum
func (m *AppEntitlementInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appEntitlementInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppEntitlementInfo) validateAppType(formats strfmt.Registry) error {

	if swag.IsZero(m.AppType) { // not required
		return nil
	}

	// value enum
	if err := m.validateAppTypeEnum("appType", "body", m.AppType); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateEndDate(formats strfmt.Registry) error {

	if swag.IsZero(m.EndDate) { // not required
		return nil
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateGrantedAt(formats strfmt.Registry) error {

	if err := validate.Required("grantedAt", "body", m.GrantedAt); err != nil {
		return err
	}

	if err := validate.FormatOf("grantedAt", "body", "date-time", m.GrantedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateItemSnapshot(formats strfmt.Registry) error {

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

func (m *AppEntitlementInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateStartDate(formats strfmt.Registry) error {

	if swag.IsZero(m.StartDate) { // not required
		return nil
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

var appEntitlementInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE","CONSUMED","REVOKED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appEntitlementInfoTypeStatusPropEnum = append(appEntitlementInfoTypeStatusPropEnum, v)
	}
}

const (

	// AppEntitlementInfoStatusACTIVE captures enum value "ACTIVE"
	AppEntitlementInfoStatusACTIVE string = "ACTIVE"

	// AppEntitlementInfoStatusINACTIVE captures enum value "INACTIVE"
	AppEntitlementInfoStatusINACTIVE string = "INACTIVE"

	// AppEntitlementInfoStatusCONSUMED captures enum value "CONSUMED"
	AppEntitlementInfoStatusCONSUMED string = "CONSUMED"

	// AppEntitlementInfoStatusREVOKED captures enum value "REVOKED"
	AppEntitlementInfoStatusREVOKED string = "REVOKED"
)

// prop value enum
func (m *AppEntitlementInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appEntitlementInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppEntitlementInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AppEntitlementInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppEntitlementInfo) UnmarshalBinary(b []byte) error {
	var res AppEntitlementInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
