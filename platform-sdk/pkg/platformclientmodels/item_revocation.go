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

// ItemRevocation Item revocation
//
// swagger:model Item revocation.
type ItemRevocation struct {

	// creditrevocations
	CreditRevocations []*CreditRevocation `json:"creditRevocations,omitempty"`

	// customrevocation
	CustomRevocation interface{} `json:"customRevocation,omitempty"`

	// entitlementrevocations
	EntitlementRevocations []*EntitlementRevocation `json:"entitlementRevocations,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemrevocations
	ItemRevocations []*ItemRevocation `json:"itemRevocations,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// itemtype
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// quantity
	// Format: int64
	Quantity int64 `json:"quantity,omitempty"`

	// reason
	Reason string `json:"reason,omitempty"`

	// skipped
	Skipped bool `json:"skipped"`

	// status
	// Enum: ['FAIL', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// strategy
	Strategy string `json:"strategy,omitempty"`
}

// Validate validates this Item revocation
func (m *ItemRevocation) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var itemRevocationTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemRevocationTypeItemTypePropEnum = append(itemRevocationTypeItemTypePropEnum, v)
	}
}

const (

	// ItemRevocationItemTypeAPP captures enum value "APP"
	ItemRevocationItemTypeAPP string = "APP"

	// ItemRevocationItemTypeBUNDLE captures enum value "BUNDLE"
	ItemRevocationItemTypeBUNDLE string = "BUNDLE"

	// ItemRevocationItemTypeCODE captures enum value "CODE"
	ItemRevocationItemTypeCODE string = "CODE"

	// ItemRevocationItemTypeCOINS captures enum value "COINS"
	ItemRevocationItemTypeCOINS string = "COINS"

	// ItemRevocationItemTypeEXTENSION captures enum value "EXTENSION"
	ItemRevocationItemTypeEXTENSION string = "EXTENSION"

	// ItemRevocationItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ItemRevocationItemTypeINGAMEITEM string = "INGAMEITEM"

	// ItemRevocationItemTypeLOOTBOX captures enum value "LOOTBOX"
	ItemRevocationItemTypeLOOTBOX string = "LOOTBOX"

	// ItemRevocationItemTypeMEDIA captures enum value "MEDIA"
	ItemRevocationItemTypeMEDIA string = "MEDIA"

	// ItemRevocationItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ItemRevocationItemTypeOPTIONBOX string = "OPTIONBOX"

	// ItemRevocationItemTypeSEASON captures enum value "SEASON"
	ItemRevocationItemTypeSEASON string = "SEASON"

	// ItemRevocationItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ItemRevocationItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ItemRevocation) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemRevocationTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var itemRevocationTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		itemRevocationTypeStatusPropEnum = append(itemRevocationTypeStatusPropEnum, v)
	}
}

const (

	// ItemRevocationStatusFAIL captures enum value "FAIL"
	ItemRevocationStatusFAIL string = "FAIL"

	// ItemRevocationStatusSUCCESS captures enum value "SUCCESS"
	ItemRevocationStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *ItemRevocation) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, itemRevocationTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemRevocation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemRevocation) UnmarshalBinary(b []byte) error {
	var res ItemRevocation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
