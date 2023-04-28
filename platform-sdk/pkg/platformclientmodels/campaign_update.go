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

// CampaignUpdate Campaign update
//
// swagger:model Campaign update.
type CampaignUpdate struct {

	// The description of the campaign, max length is 1024 characters
	Description string `json:"description,omitempty"`

	// Redeemable Items
	Items []*RedeemableItem `json:"items,omitempty"`

	// The maximum redeem count per campaign per user, must equal or greater than -1, -1 means UNLIMITED, default is 1
	// Format: int32
	MaxRedeemCountPerCampaignPerUser int32 `json:"maxRedeemCountPerCampaignPerUser,omitempty"`

	// The maximum redeems count per code, must equal or greater than -1, -1 means UNLIMITED
	// Format: int32
	MaxRedeemCountPerCode int32 `json:"maxRedeemCountPerCode,omitempty"`

	// The maximum redeem count per code per user, must equal or greater than -1, -1 means UNLIMITED
	// Format: int32
	MaxRedeemCountPerCodePerUser int32 `json:"maxRedeemCountPerCodePerUser,omitempty"`

	// Max sale count, -1 means UNLIMITED
	// Format: int32
	MaxSaleCount int32 `json:"maxSaleCount,omitempty"`

	// The name of the campaign, it should starts and ends with alphabets uppercase/lowercase or numeric Allowed separators ',.- and white-space, max length is 48
	// Required: true
	Name *string `json:"name"`

	// redeem end time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z', will delete this value if pass null or not pass this field
	// Format: date-time
	RedeemEnd *strfmt.DateTime `json:"redeemEnd,omitempty"`

	// redeem start time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z', will delete this value if pass null or not pass this field
	// Format: date-time
	RedeemStart *strfmt.DateTime `json:"redeemStart,omitempty"`

	// Redeem Type. Allowed values: ITEM
	// Enum: ['ITEM']
	RedeemType string `json:"redeemType,omitempty"`

	// The status of the campaign
	// Enum: ['ACTIVE', 'INACTIVE']
	Status string `json:"status,omitempty"`

	// The tags of the campaign
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Campaign update
func (m *CampaignUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CampaignUpdate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var campaignUpdateTypeRedeemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignUpdateTypeRedeemTypePropEnum = append(campaignUpdateTypeRedeemTypePropEnum, v)
	}
}

const (

	// CampaignUpdateRedeemTypeITEM captures enum value "ITEM"
	CampaignUpdateRedeemTypeITEM string = "ITEM"
)

// prop value enum
func (m *CampaignUpdate) validateRedeemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignUpdateTypeRedeemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var campaignUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignUpdateTypeStatusPropEnum = append(campaignUpdateTypeStatusPropEnum, v)
	}
}

const (

	// CampaignUpdateStatusACTIVE captures enum value "ACTIVE"
	CampaignUpdateStatusACTIVE string = "ACTIVE"

	// CampaignUpdateStatusINACTIVE captures enum value "INACTIVE"
	CampaignUpdateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *CampaignUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CampaignUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignUpdate) UnmarshalBinary(b []byte) error {
	var res CampaignUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
