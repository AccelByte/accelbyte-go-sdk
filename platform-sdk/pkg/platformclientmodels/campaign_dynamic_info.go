// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CampaignDynamicInfo Campaign dynamic info
//
// swagger:model Campaign dynamic info.
type CampaignDynamicInfo struct {

	// The available sale count, -1 means UNLIMITED
	// Required: true
	// Format: int32
	AvailableSaleCount *int32 `json:"availableSaleCount"`

	// The batch number marks the manually code generation
	// Required: true
	// Format: int32
	LastBatchNo *int32 `json:"lastBatchNo"`

	// The total quantity of this campaign has
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// The remainder quantity of codes not been redeemed out
	// Required: true
	// Format: int32
	Remainder *int32 `json:"remainder"`

	// The sale count
	// Required: true
	// Format: int32
	SaleCount *int32 `json:"saleCount"`
}

// Validate validates this Campaign dynamic info
func (m *CampaignDynamicInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableSaleCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastBatchNo(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainder(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSaleCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CampaignDynamicInfo) validateAvailableSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("availableSaleCount", "body", m.AvailableSaleCount); err != nil {
		return err
	}

	return nil
}

func (m *CampaignDynamicInfo) validateLastBatchNo(formats strfmt.Registry) error {

	if err := validate.Required("lastBatchNo", "body", m.LastBatchNo); err != nil {
		return err
	}

	return nil
}

func (m *CampaignDynamicInfo) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

func (m *CampaignDynamicInfo) validateRemainder(formats strfmt.Registry) error {

	if err := validate.Required("remainder", "body", m.Remainder); err != nil {
		return err
	}

	return nil
}

func (m *CampaignDynamicInfo) validateSaleCount(formats strfmt.Registry) error {

	if err := validate.Required("saleCount", "body", m.SaleCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CampaignDynamicInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignDynamicInfo) UnmarshalBinary(b []byte) error {
	var res CampaignDynamicInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
