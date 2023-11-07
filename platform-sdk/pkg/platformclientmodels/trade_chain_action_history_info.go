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

// TradeChainActionHistoryInfo Trade chain action history info
//
// swagger:model Trade chain action history info.
type TradeChainActionHistoryInfo struct {

	// chained actions
	Actions []*Action `json:"actions,omitempty"`

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// status of the whole chained actions
	// Enum: ['FAILED', 'INIT', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// failed reason
	StatusReason string `json:"statusReason,omitempty"`

	// transaction Id provided by submitter
	TransactionID string `json:"transactionId,omitempty"`

	// type defined by submitted
	Type string `json:"type,omitempty"`

	// user Ids involved
	UserIds []string `json:"userIds,omitempty"`
}

// Validate validates this Trade chain action history info
func (m *TradeChainActionHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var tradeChainActionHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "INIT", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		tradeChainActionHistoryInfoTypeStatusPropEnum = append(tradeChainActionHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// TradeChainActionHistoryInfoStatusFAILED captures enum value "FAILED"
	TradeChainActionHistoryInfoStatusFAILED string = "FAILED"

	// TradeChainActionHistoryInfoStatusINIT captures enum value "INIT"
	TradeChainActionHistoryInfoStatusINIT string = "INIT"

	// TradeChainActionHistoryInfoStatusSUCCESS captures enum value "SUCCESS"
	TradeChainActionHistoryInfoStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *TradeChainActionHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, tradeChainActionHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TradeChainActionHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TradeChainActionHistoryInfo) UnmarshalBinary(b []byte) error {
	var res TradeChainActionHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
