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

// ExtensionFulfillmentSummary Extension fulfillment summary
//
// swagger:model Extension fulfillment summary.
type ExtensionFulfillmentSummary struct {

	// grantedAt
	// Format: date-time
	GrantedAt *strfmt.DateTime `json:"grantedAt,omitempty"`

	// customized item sub type
	ItemClazz string `json:"itemClazz,omitempty"`

	// customized item properties
	ItemExt interface{} `json:"itemExt,omitempty"`

	// itemId
	ItemID string `json:"itemId,omitempty"`

	// item type
	// Enum: ['APP', 'BUNDLE', 'CODE', 'COINS', 'EXTENSION', 'INGAMEITEM', 'LOOTBOX', 'MEDIA', 'OPTIONBOX', 'SEASON', 'SUBSCRIPTION']
	ItemType string `json:"itemType,omitempty"`

	// customized external fulfillment results
	Metadata interface{} `json:"metadata,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// userId
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Extension fulfillment summary
func (m *ExtensionFulfillmentSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var extensionFulfillmentSummaryTypeItemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APP", "BUNDLE", "CODE", "COINS", "EXTENSION", "INGAMEITEM", "LOOTBOX", "MEDIA", "OPTIONBOX", "SEASON", "SUBSCRIPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		extensionFulfillmentSummaryTypeItemTypePropEnum = append(extensionFulfillmentSummaryTypeItemTypePropEnum, v)
	}
}

const (

	// ExtensionFulfillmentSummaryItemTypeAPP captures enum value "APP"
	ExtensionFulfillmentSummaryItemTypeAPP string = "APP"

	// ExtensionFulfillmentSummaryItemTypeBUNDLE captures enum value "BUNDLE"
	ExtensionFulfillmentSummaryItemTypeBUNDLE string = "BUNDLE"

	// ExtensionFulfillmentSummaryItemTypeCODE captures enum value "CODE"
	ExtensionFulfillmentSummaryItemTypeCODE string = "CODE"

	// ExtensionFulfillmentSummaryItemTypeCOINS captures enum value "COINS"
	ExtensionFulfillmentSummaryItemTypeCOINS string = "COINS"

	// ExtensionFulfillmentSummaryItemTypeEXTENSION captures enum value "EXTENSION"
	ExtensionFulfillmentSummaryItemTypeEXTENSION string = "EXTENSION"

	// ExtensionFulfillmentSummaryItemTypeINGAMEITEM captures enum value "INGAMEITEM"
	ExtensionFulfillmentSummaryItemTypeINGAMEITEM string = "INGAMEITEM"

	// ExtensionFulfillmentSummaryItemTypeLOOTBOX captures enum value "LOOTBOX"
	ExtensionFulfillmentSummaryItemTypeLOOTBOX string = "LOOTBOX"

	// ExtensionFulfillmentSummaryItemTypeMEDIA captures enum value "MEDIA"
	ExtensionFulfillmentSummaryItemTypeMEDIA string = "MEDIA"

	// ExtensionFulfillmentSummaryItemTypeOPTIONBOX captures enum value "OPTIONBOX"
	ExtensionFulfillmentSummaryItemTypeOPTIONBOX string = "OPTIONBOX"

	// ExtensionFulfillmentSummaryItemTypeSEASON captures enum value "SEASON"
	ExtensionFulfillmentSummaryItemTypeSEASON string = "SEASON"

	// ExtensionFulfillmentSummaryItemTypeSUBSCRIPTION captures enum value "SUBSCRIPTION"
	ExtensionFulfillmentSummaryItemTypeSUBSCRIPTION string = "SUBSCRIPTION"
)

// prop value enum
func (m *ExtensionFulfillmentSummary) validateItemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, extensionFulfillmentSummaryTypeItemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ExtensionFulfillmentSummary) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ExtensionFulfillmentSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ExtensionFulfillmentSummary) UnmarshalBinary(b []byte) error {
	var res ExtensionFulfillmentSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
