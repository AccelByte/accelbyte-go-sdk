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

// CodeInfo Code info
//
// swagger:model Code info.
type CodeInfo struct {

	// order No. that grant this code
	AcquireOrderNo string `json:"acquireOrderNo,omitempty"`

	// user Id who get this code
	AcquireUserID string `json:"acquireUserId,omitempty"`

	// batch name
	BatchName string `json:"batchName,omitempty"`

	// batch No.
	// Required: true
	// Format: int32
	BatchNo *int32 `json:"batchNo"`

	// Campaign short info
	Campaign *CampaignIfc `json:"campaign,omitempty"`

	// campaign id
	// Required: true
	CampaignID *string `json:"campaignId"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// discount config
	DiscountConfig *DiscountConfig `json:"discountConfig,omitempty"`

	// code id
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
	// Enum: ['DISCOUNT', 'ITEM']
	// Required: true
	RedeemType *string `json:"redeemType"`

	// The total count of this code has been redeemed
	// Required: true
	// Format: int32
	RedeemedCount *int32 `json:"redeemedCount"`

	// Redemption remainder, -1 means unlimited
	// Required: true
	// Format: int32
	Remainder *int32 `json:"remainder"`

	// code status
	// Enum: ['ACTIVE', 'INACTIVE']
	// Required: true
	Status *string `json:"status"`

	// campaign type
	// Enum: ['REDEMPTION']
	// Required: true
	Type *string `json:"type"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// code value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Code info
func (m *CodeInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBatchNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCampaignID(formats); err != nil {
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
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedeemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedeemedCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainder(formats); err != nil {
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
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CodeInfo) validateBatchNo(formats strfmt.Registry) error {

	if err := validate.Required("batchNo", "body", m.BatchNo); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateCampaignID(formats strfmt.Registry) error {

	if err := validate.Required("campaignId", "body", m.CampaignID); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateMaxRedeemCountPerCampaignPerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCampaignPerUser", "body", m.MaxRedeemCountPerCampaignPerUser); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateMaxRedeemCountPerCode(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCode", "body", m.MaxRedeemCountPerCode); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateMaxRedeemCountPerCodePerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxRedeemCountPerCodePerUser", "body", m.MaxRedeemCountPerCodePerUser); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var codeInfoTypeRedeemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DISCOUNT", "ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		codeInfoTypeRedeemTypePropEnum = append(codeInfoTypeRedeemTypePropEnum, v)
	}
}

const (

	// CodeInfoRedeemTypeDISCOUNT captures enum value "DISCOUNT"
	CodeInfoRedeemTypeDISCOUNT string = "DISCOUNT"

	// CodeInfoRedeemTypeITEM captures enum value "ITEM"
	CodeInfoRedeemTypeITEM string = "ITEM"
)

// prop value enum
func (m *CodeInfo) validateRedeemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, codeInfoTypeRedeemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CodeInfo) validateRedeemType(formats strfmt.Registry) error {

	if err := validate.Required("redeemType", "body", m.RedeemType); err != nil {
		return err
	}

	// value enum
	if err := m.validateRedeemTypeEnum("redeemType", "body", *m.RedeemType); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateRedeemedCount(formats strfmt.Registry) error {

	if err := validate.Required("redeemedCount", "body", m.RedeemedCount); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateRemainder(formats strfmt.Registry) error {

	if err := validate.Required("remainder", "body", m.Remainder); err != nil {
		return err
	}

	return nil
}

var codeInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE", "INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		codeInfoTypeStatusPropEnum = append(codeInfoTypeStatusPropEnum, v)
	}
}

const (

	// CodeInfoStatusACTIVE captures enum value "ACTIVE"
	CodeInfoStatusACTIVE string = "ACTIVE"

	// CodeInfoStatusINACTIVE captures enum value "INACTIVE"
	CodeInfoStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *CodeInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, codeInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CodeInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var codeInfoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REDEMPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		codeInfoTypeTypePropEnum = append(codeInfoTypeTypePropEnum, v)
	}
}

const (

	// CodeInfoTypeREDEMPTION captures enum value "REDEMPTION"
	CodeInfoTypeREDEMPTION string = "REDEMPTION"
)

// prop value enum
func (m *CodeInfo) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, codeInfoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CodeInfo) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *CodeInfo) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CodeInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CodeInfo) UnmarshalBinary(b []byte) error {
	var res CodeInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
