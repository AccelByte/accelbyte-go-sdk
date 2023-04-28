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

// CampaignInfo Campaign info
//
// swagger:model Campaign info.
type CampaignInfo struct {

	// booth name
	// Required: true
	BoothName *string `json:"boothName"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// campaign description
	Description string `json:"description,omitempty"`

	// campaign id
	// Required: true
	ID *string `json:"id"`

	// redeem items
	Items []*RedeemableItem `json:"items,omitempty"`

	// The maximum redeem count of a campaign per user, -1 means UNLIMITED
	// Required: true
	// Format: int32
	MaxRedeemCountPerCampaignPerUser *int32 `json:"maxRedeemCountPerCampaignPerUser"`

	// The maximum redeem count of a code, -1 means UNLIMITED
	// Required: true
	// Format: int32
	MaxRedeemCountPerCode *int32 `json:"maxRedeemCountPerCode"`

	// The maximum redeem count of a code per user, -1 means UNLIMITED
	// Required: true
	// Format: int32
	MaxRedeemCountPerCodePerUser *int32 `json:"maxRedeemCountPerCodePerUser"`

	// The maximum sale count, -1 means UNLIMITED
	// Required: true
	// Format: int32
	MaxSaleCount *int32 `json:"maxSaleCount"`

	// campaign name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// redeem end
	// Format: date-time
	RedeemEnd *strfmt.DateTime `json:"redeemEnd,omitempty"`

	// redeem start
	// Format: date-time
	RedeemStart *strfmt.DateTime `json:"redeemStart,omitempty"`

	// redeem type
	// Enum: ['ITEM']
	// Required: true
	RedeemType *string `json:"redeemType"`

	// campaign status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`

	// campaign tags
	Tags []string `json:"tags,omitempty"`

	// campaign type
	// Enum: ['REDEMPTION']
	// Required: true
	Type *string `json:"type"`

	// update at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Campaign info
func (m *CampaignInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBoothName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxRedeemCountPerCampaignPerUser(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxRedeemCountPerCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxRedeemCountPerCodePerUser(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxSaleCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedeemType(formats); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CampaignInfo) validateBoothName(formats strfmt.Registry) error {

	if err := validate.Required("boothName", "body", m.BoothName); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateMaxRedeemCountPerCampaignPerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCampaignPerUser", "body", m.MaxRedeemCountPerCampaignPerUser); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateMaxRedeemCountPerCode(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCode", "body", m.MaxRedeemCountPerCode); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateMaxRedeemCountPerCodePerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCodePerUser", "body", m.MaxRedeemCountPerCodePerUser); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateMaxSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("maxSaleCount", "body", m.MaxSaleCount); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var campaignInfoTypeRedeemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignInfoTypeRedeemTypePropEnum = append(campaignInfoTypeRedeemTypePropEnum, v)
	}
}

const (

	// CampaignInfoRedeemTypeITEM captures enum value "ITEM"
	CampaignInfoRedeemTypeITEM string = "ITEM"
)

// prop value enum
func (m *CampaignInfo) validateRedeemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignInfoTypeRedeemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignInfo) validateRedeemType(formats strfmt.Registry) error {

	if err := validate.Required("redeemType", "body", m.RedeemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateRedeemTypeEnum("redeemType", "body", *m.RedeemType); err != nil {
		return err
	}

	return nil
}

var campaignInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignInfoTypeStatusPropEnum = append(campaignInfoTypeStatusPropEnum, v)
	}
}

const (

	// CampaignInfoStatusACTIVE captures enum value "ACTIVE"
	CampaignInfoStatusACTIVE string = "ACTIVE"

	// CampaignInfoStatusINACTIVE captures enum value "INACTIVE"
	CampaignInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *CampaignInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var campaignInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REDEMPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignInfoTypeTypePropEnum = append(campaignInfoTypeTypePropEnum, v)
	}
}

const (

	// CampaignInfoTypeREDEMPTION captures enum value "REDEMPTION"
	CampaignInfoTypeREDEMPTION string = "REDEMPTION"
)

// prop value enum
func (m *CampaignInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignInfo) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *CampaignInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CampaignInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignInfo) UnmarshalBinary(b []byte) error {
	var res CampaignInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
