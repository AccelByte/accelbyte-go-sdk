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

// CampaignBatchNameInfo Campaign batch name info
//
// swagger:model Campaign batch name info.
type CampaignBatchNameInfo struct {

	// batch name
	// Required: true
	BatchName *string `json:"batchName"`

	// list of batch numbers
	// Required: true
	// Format: int32
	BatchNos []int32 `json:"batchNos"`
}

// Validate validates this Campaign batch name info
func (m *CampaignBatchNameInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBatchName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBatchNos(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CampaignBatchNameInfo) validateBatchName(formats strfmt.Registry) error {

	if err := validate.Required("batchName", "body", m.BatchName); err != nil {
		return err
	}

	return nil
}

func (m *CampaignBatchNameInfo) validateBatchNos(formats strfmt.Registry) error {

	if err := validate.Required("batchNos", "body", m.BatchNos); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CampaignBatchNameInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignBatchNameInfo) UnmarshalBinary(b []byte) error {
	var res CampaignBatchNameInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
