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

// EntitlementGrant Entitlement grant
//
// swagger:model Entitlement grant.
type EntitlementGrant struct {

	// entitlement end date time
	// Format: date-time
	EndDate *strfmt.DateTime `json:"endDate,omitempty"`

	// grantedCode, the granted code
	GrantedCode string `json:"grantedCode,omitempty"`

	// itemId
	// Required: true
	ItemID *string `json:"itemId"`

	// itemNamespace
	// Required: true
	ItemNamespace *string `json:"itemNamespace"`

	// language value from language tag, allowed format: en, en-US.<p>Supported language tag : [RFC5646](https://gist.github.com/msikma/8912e62ed866778ff8cd) and [IETF](https://datahub.io/core/language-codes#resource-ietf-language-tags)</p>
	Language string `json:"language,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// country value from ISO countries
	Region string `json:"region,omitempty"`

	// source
	// Enum: ['ACHIEVEMENT', 'GIFT', 'IAP', 'OTHER', 'PROMOTION', 'PURCHASE', 'REDEEM_CODE', 'REFERRAL_BONUS', 'REWARD']
	Source string `json:"source,omitempty"`

	// entitlement start date time
	// Format: date-time
	StartDate *strfmt.DateTime `json:"startDate,omitempty"`

	// storeId
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Entitlement grant
func (m *EntitlementGrant) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *EntitlementGrant) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementGrant) validateItemNamespace(formats strfmt.Registry) error {

	if err := validate.Required("itemNamespace", "body", m.ItemNamespace); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementGrant) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

var entitlementGrantTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACHIEVEMENT", "GIFT", "IAP", "OTHER", "PROMOTION", "PURCHASE", "REDEEM_CODE", "REFERRAL_BONUS", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementGrantTypeSourcePropEnum = append(entitlementGrantTypeSourcePropEnum, v)
	}
}

const (

	// EntitlementGrantSourceACHIEVEMENT captures enum value "ACHIEVEMENT"
	EntitlementGrantSourceACHIEVEMENT string = "ACHIEVEMENT"

	// EntitlementGrantSourceGIFT captures enum value "GIFT"
	EntitlementGrantSourceGIFT string = "GIFT"

	// EntitlementGrantSourceIAP captures enum value "IAP"
	EntitlementGrantSourceIAP string = "IAP"

	// EntitlementGrantSourceOTHER captures enum value "OTHER"
	EntitlementGrantSourceOTHER string = "OTHER"

	// EntitlementGrantSourcePROMOTION captures enum value "PROMOTION"
	EntitlementGrantSourcePROMOTION string = "PROMOTION"

	// EntitlementGrantSourcePURCHASE captures enum value "PURCHASE"
	EntitlementGrantSourcePURCHASE string = "PURCHASE"

	// EntitlementGrantSourceREDEEMCODE captures enum value "REDEEM_CODE"
	EntitlementGrantSourceREDEEMCODE string = "REDEEM_CODE"

	// EntitlementGrantSourceREFERRALBONUS captures enum value "REFERRAL_BONUS"
	EntitlementGrantSourceREFERRALBONUS string = "REFERRAL_BONUS"

	// EntitlementGrantSourceREWARD captures enum value "REWARD"
	EntitlementGrantSourceREWARD string = "REWARD"
)

// prop value enum
func (m *EntitlementGrant) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementGrantTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementGrant) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementGrant) UnmarshalBinary(b []byte) error {
	var res EntitlementGrant
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
