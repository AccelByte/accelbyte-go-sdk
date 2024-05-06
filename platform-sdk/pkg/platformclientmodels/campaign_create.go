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

// CampaignCreate Campaign create
//
// swagger:model Campaign create.
type CampaignCreate struct {

	// The description of the campaign, max length is 1024 characters
	Description string `json:"description,omitempty"`

	// Discount Config
	DiscountConfig *DiscountConfig `json:"discountConfig,omitempty"`

	// Redeemable items
	Items []*RedeemableItem `json:"items,omitempty"`

	// The maximum redeem count per campaign per user, must equal or greater than -1, -1 means UNLIMITED, default is 1
	// Format: int32
	MaxRedeemCountPerCampaignPerUser int32 `json:"maxRedeemCountPerCampaignPerUser,omitempty"`

	// The maximum redeem count per code, must equal or greater than -1, -1 means UNLIMITED, default is 1
	// Format: int32
	MaxRedeemCountPerCode int32 `json:"maxRedeemCountPerCode,omitempty"`

	// The maximum redeem count per code per user, must equal or greater than -1, -1 means UNLIMITED, default is 1
	// Format: int32
	MaxRedeemCountPerCodePerUser int32 `json:"maxRedeemCountPerCodePerUser,omitempty"`

	// Max sale count, -1 means UNLIMITED
	// Format: int32
	MaxSaleCount int32 `json:"maxSaleCount,omitempty"`

	// The name of the campaign, it should starts and ends with alphabets uppercase/lowercase or numeric Allowed separators ',.- and white-space, max length is 48
	// Required: true
	Name *string `json:"name"`

	// redeem end time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	RedeemEnd *strfmt.DateTime `json:"redeemEnd,omitempty"`

	// redeem start time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	RedeemStart *strfmt.DateTime `json:"redeemStart,omitempty"`

	// Redeem Type. Allowed values: ITEM. ITEM for default
	// Enum: ['DISCOUNT', 'ITEM']
	RedeemType string `json:"redeemType,omitempty"`

	// The status of the campaign, default ACTIVE
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// The tags of the campaign
	Tags []string `json:"tags,omitempty"`

	// Campaign type. Allowed values: REDEMPTION. REDEMPTION for default
	// Enum: ['REDEMPTION']
	Type string `json:"type,omitempty"`
}

// Validate validates this Campaign create
func (m *CampaignCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CampaignCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var campaignCreateTypeRedeemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISCOUNT", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeRedeemTypePropEnum = append(campaignCreateTypeRedeemTypePropEnum, v)
	}
}

const (

	// CampaignCreateRedeemTypeDISCOUNT captures enum value "DISCOUNT"
	CampaignCreateRedeemTypeDISCOUNT string = "DISCOUNT"

	// CampaignCreateRedeemTypeITEM captures enum value "ITEM"
	CampaignCreateRedeemTypeITEM string = "ITEM"
)

// prop value enum
func (m *CampaignCreate) validateRedeemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeRedeemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var campaignCreateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeStatusPropEnum = append(campaignCreateTypeStatusPropEnum, v)
	}
}

const (

	// CampaignCreateStatusACTIVE captures enum value "ACTIVE"
	CampaignCreateStatusACTIVE string = "ACTIVE"

	// CampaignCreateStatusINACTIVE captures enum value "INACTIVE"
	CampaignCreateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *CampaignCreate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

var campaignCreateTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REDEMPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeTypePropEnum = append(campaignCreateTypeTypePropEnum, v)
	}
}

const (

	// CampaignCreateTypeREDEMPTION captures enum value "REDEMPTION"
	CampaignCreateTypeREDEMPTION string = "REDEMPTION"
)

// prop value enum
func (m *CampaignCreate) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CampaignCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignCreate) UnmarshalBinary(b []byte) error {
	var res CampaignCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
