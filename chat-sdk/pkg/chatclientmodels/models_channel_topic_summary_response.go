// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsChannelTopicSummaryResponse Models channel topic summary response
//
// swagger:model Models channel topic summary response.
type ModelsChannelTopicSummaryResponse struct {

	// totalchannel
	// Required: true
	// Format: int32
	TotalChannel *int32 `json:"totalChannel"`

	// totalshard
	// Required: true
	// Format: int32
	TotalShard *int32 `json:"totalShard"`
}

// Validate validates this Models channel topic summary response
func (m *ModelsChannelTopicSummaryResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTotalChannel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalShard(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsChannelTopicSummaryResponse) validateTotalChannel(formats strfmt.Registry) error {

	if err := validate.Required("totalChannel", "body", m.TotalChannel); err != nil {
		return err
	}

	return nil
}

func (m *ModelsChannelTopicSummaryResponse) validateTotalShard(formats strfmt.Registry) error {

	if err := validate.Required("totalShard", "body", m.TotalShard); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsChannelTopicSummaryResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsChannelTopicSummaryResponse) UnmarshalBinary(b []byte) error {
	var res ModelsChannelTopicSummaryResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
