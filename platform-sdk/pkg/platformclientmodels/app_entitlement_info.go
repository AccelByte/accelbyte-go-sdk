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

// AppEntitlementInfo App entitlement info
//
// swagger:model App entitlement info.
type AppEntitlementInfo struct {

	// appId for APP type entitlement
	AppID string `json:"appId,omitempty"`

	// appType for APP type entitlement
	// Enum: ['DEMO', 'DLC', 'GAME', 'SOFTWARE']
	AppType string `json:"appType,omitempty"`

	// entitlement end date
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// entitlement granted at
	// Required: true
	// Format: date-time
	GrantedAt strfmt.DateTime `json:"grantedAt"`

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
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// entitlement status
	// Enum: ['ACTIVE', 'CONSUMED', 'INACTIVE', 'REVOKED', 'SOLD']
	// Required: true
	Status *string `json:"status"`

	// item store id, null if published store
	StoreID string `json:"storeId,omitempty"`

	// entitlement owner
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this App entitlement info
func (m *AppEntitlementInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGrantedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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
	if err := json.Unmarshal([]byte(`["DEMO", "DLC", "GAME", "SOFTWARE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appEntitlementInfoTypeAppTypePropEnum = append(appEntitlementInfoTypeAppTypePropEnum, v)
	}
}

const (

	// AppEntitlementInfoAppTypeDEMO captures enum value "DEMO"
	AppEntitlementInfoAppTypeDEMO string = "DEMO"

	// AppEntitlementInfoAppTypeDLC captures enum value "DLC"
	AppEntitlementInfoAppTypeDLC string = "DLC"

	// AppEntitlementInfoAppTypeGAME captures enum value "GAME"
	AppEntitlementInfoAppTypeGAME string = "GAME"

	// AppEntitlementInfoAppTypeSOFTWARE captures enum value "SOFTWARE"
	AppEntitlementInfoAppTypeSOFTWARE string = "SOFTWARE"
)

// prop value enum
func (m *AppEntitlementInfo) validateAppTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appEntitlementInfoTypeAppTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppEntitlementInfo) validateGrantedAt(formats strfmt.Registry) error {

	if err := validate.Required("grantedAt", "body", strfmt.DateTime(m.GrantedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("grantedAt", "body", "date-time", m.GrantedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AppEntitlementInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var appEntitlementInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "CONSUMED", "INACTIVE", "REVOKED", "SOLD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appEntitlementInfoTypeStatusPropEnum = append(appEntitlementInfoTypeStatusPropEnum, v)
	}
}

const (

	// AppEntitlementInfoStatusACTIVE captures enum value "ACTIVE"
	AppEntitlementInfoStatusACTIVE string = "ACTIVE"

	// AppEntitlementInfoStatusCONSUMED captures enum value "CONSUMED"
	AppEntitlementInfoStatusCONSUMED string = "CONSUMED"

	// AppEntitlementInfoStatusINACTIVE captures enum value "INACTIVE"
	AppEntitlementInfoStatusINACTIVE string = "INACTIVE"

	// AppEntitlementInfoStatusREVOKED captures enum value "REVOKED"
	AppEntitlementInfoStatusREVOKED string = "REVOKED"

	// AppEntitlementInfoStatusSOLD captures enum value "SOLD"
	AppEntitlementInfoStatusSOLD string = "SOLD"
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
