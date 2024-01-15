// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCustomFunction Models custom function
//
// swagger:model Models custom function.
type ModelsCustomFunction struct {

	// enable/disable after bulk read game binary record custom validation
	// Required: true
	AfterBulkReadGameBinaryRecord *bool `json:"afterBulkReadGameBinaryRecord"`

	// enable/disable after bulk read game record custom validation
	// Required: true
	AfterBulkReadGameRecord *bool `json:"afterBulkReadGameRecord"`

	// enable/disable after bulk read player binary record custom validation
	// Required: true
	AfterBulkReadPlayerBinaryRecord *bool `json:"afterBulkReadPlayerBinaryRecord"`

	// enable/disable after bulk read player record custom validation
	// Required: true
	AfterBulkReadPlayerRecord *bool `json:"afterBulkReadPlayerRecord"`

	// enable/disable after read game binary record custom validation
	// Required: true
	AfterReadGameBinaryRecord *bool `json:"afterReadGameBinaryRecord"`

	// enable/disable after read game record custom validation
	// Required: true
	AfterReadGameRecord *bool `json:"afterReadGameRecord"`

	// enable/disable after read player binary record custom validation
	// Required: true
	AfterReadPlayerBinaryRecord *bool `json:"afterReadPlayerBinaryRecord"`

	// enable/disable after read player record custom validation
	// Required: true
	AfterReadPlayerRecord *bool `json:"afterReadPlayerRecord"`

	// enable/disable before write admin game record custom validation
	// Required: true
	BeforeWriteAdminGameRecord *bool `json:"beforeWriteAdminGameRecord"`

	// enable/disable before write admin player record custom validation
	// Required: true
	BeforeWriteAdminPlayerRecord *bool `json:"beforeWriteAdminPlayerRecord"`

	// enable/disable before write game binary record custom validation
	// Required: true
	BeforeWriteGameBinaryRecord *bool `json:"beforeWriteGameBinaryRecord"`

	// enable/disable before write game record custom validation
	// Required: true
	BeforeWriteGameRecord *bool `json:"beforeWriteGameRecord"`

	// enable/disable before write player binary record custom validation
	// Required: true
	BeforeWritePlayerBinaryRecord *bool `json:"beforeWritePlayerBinaryRecord"`

	// enable/disable before write player record custom validation
	// Required: true
	BeforeWritePlayerRecord *bool `json:"beforeWritePlayerRecord"`
}

// Validate validates this Models custom function
func (m *ModelsCustomFunction) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAfterBulkReadGameBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterBulkReadGameRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterBulkReadPlayerBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterBulkReadPlayerRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterReadGameBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterReadGameRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterReadPlayerBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAfterReadPlayerRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWriteAdminGameRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWriteAdminPlayerRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWriteGameBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWriteGameRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWritePlayerBinaryRecord(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBeforeWritePlayerRecord(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCustomFunction) validateAfterBulkReadGameBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterBulkReadGameBinaryRecord", "body", m.AfterBulkReadGameBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterBulkReadGameRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterBulkReadGameRecord", "body", m.AfterBulkReadGameRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterBulkReadPlayerBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterBulkReadPlayerBinaryRecord", "body", m.AfterBulkReadPlayerBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterBulkReadPlayerRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterBulkReadPlayerRecord", "body", m.AfterBulkReadPlayerRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterReadGameBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterReadGameBinaryRecord", "body", m.AfterReadGameBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterReadGameRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterReadGameRecord", "body", m.AfterReadGameRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterReadPlayerBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterReadPlayerBinaryRecord", "body", m.AfterReadPlayerBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateAfterReadPlayerRecord(formats strfmt.Registry) error {

	if err := validate.Required("afterReadPlayerRecord", "body", m.AfterReadPlayerRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWriteAdminGameRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWriteAdminGameRecord", "body", m.BeforeWriteAdminGameRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWriteAdminPlayerRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWriteAdminPlayerRecord", "body", m.BeforeWriteAdminPlayerRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWriteGameBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWriteGameBinaryRecord", "body", m.BeforeWriteGameBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWriteGameRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWriteGameRecord", "body", m.BeforeWriteGameRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWritePlayerBinaryRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWritePlayerBinaryRecord", "body", m.BeforeWritePlayerBinaryRecord); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCustomFunction) validateBeforeWritePlayerRecord(formats strfmt.Registry) error {

	if err := validate.Required("beforeWritePlayerRecord", "body", m.BeforeWritePlayerRecord); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCustomFunction) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCustomFunction) UnmarshalBinary(b []byte) error {
	var res ModelsCustomFunction
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
