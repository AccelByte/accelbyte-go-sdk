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

// IAPConsumeHistoryInfo IAP consume history info
//
// swagger:model IAP consume history info.
type IAPConsumeHistoryInfo struct {

	// clientrequestparameter
	ClientRequestParameter *ClientRequestParameter `json:"clientRequestParameter,omitempty"`

	// consumeitems
	ConsumeItems []*ConsumeItem `json:"consumeItems,omitempty"`

	// iaptype
	// Enum: ['APPLE', 'EPICGAMES', 'GOOGLE', 'OCULUS', 'PLAYSTATION', 'STADIA', 'STEAM', 'TWITCH', 'XBOX']
	IAPType string `json:"iapType,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// requestbody
	RequestBody interface{} `json:"requestBody,omitempty"`

	// requesthistories
	RequestHistories []*RequestHistory `json:"requestHistories,omitempty"`

	// requesturl
	RequestURL string `json:"requestUrl,omitempty"`

	// status
	// Enum: ['FAIL', 'PENDING', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this IAP consume history info
func (m *IAPConsumeHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapConsumeHistoryInfoTypeIAPTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPLE", "EPICGAMES", "GOOGLE", "OCULUS", "PLAYSTATION", "STADIA", "STEAM", "TWITCH", "XBOX"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapConsumeHistoryInfoTypeIAPTypePropEnum = append(iapConsumeHistoryInfoTypeIAPTypePropEnum, v)
	}
}

const (

	// IAPConsumeHistoryInfoIAPTypeAPPLE captures enum value "APPLE"
	IAPConsumeHistoryInfoIAPTypeAPPLE string = "APPLE"

	// IAPConsumeHistoryInfoIAPTypeEPICGAMES captures enum value "EPICGAMES"
	IAPConsumeHistoryInfoIAPTypeEPICGAMES string = "EPICGAMES"

	// IAPConsumeHistoryInfoIAPTypeGOOGLE captures enum value "GOOGLE"
	IAPConsumeHistoryInfoIAPTypeGOOGLE string = "GOOGLE"

	// IAPConsumeHistoryInfoIAPTypeOCULUS captures enum value "OCULUS"
	IAPConsumeHistoryInfoIAPTypeOCULUS string = "OCULUS"

	// IAPConsumeHistoryInfoIAPTypePLAYSTATION captures enum value "PLAYSTATION"
	IAPConsumeHistoryInfoIAPTypePLAYSTATION string = "PLAYSTATION"

	// IAPConsumeHistoryInfoIAPTypeSTADIA captures enum value "STADIA"
	IAPConsumeHistoryInfoIAPTypeSTADIA string = "STADIA"

	// IAPConsumeHistoryInfoIAPTypeSTEAM captures enum value "STEAM"
	IAPConsumeHistoryInfoIAPTypeSTEAM string = "STEAM"

	// IAPConsumeHistoryInfoIAPTypeTWITCH captures enum value "TWITCH"
	IAPConsumeHistoryInfoIAPTypeTWITCH string = "TWITCH"

	// IAPConsumeHistoryInfoIAPTypeXBOX captures enum value "XBOX"
	IAPConsumeHistoryInfoIAPTypeXBOX string = "XBOX"
)

// prop value enum
func (m *IAPConsumeHistoryInfo) validateIAPTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapConsumeHistoryInfoTypeIAPTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

var iapConsumeHistoryInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PENDING", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapConsumeHistoryInfoTypeStatusPropEnum = append(iapConsumeHistoryInfoTypeStatusPropEnum, v)
	}
}

const (

	// IAPConsumeHistoryInfoStatusFAIL captures enum value "FAIL"
	IAPConsumeHistoryInfoStatusFAIL string = "FAIL"

	// IAPConsumeHistoryInfoStatusPENDING captures enum value "PENDING"
	IAPConsumeHistoryInfoStatusPENDING string = "PENDING"

	// IAPConsumeHistoryInfoStatusSUCCESS captures enum value "SUCCESS"
	IAPConsumeHistoryInfoStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *IAPConsumeHistoryInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapConsumeHistoryInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPConsumeHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPConsumeHistoryInfo) UnmarshalBinary(b []byte) error {
	var res IAPConsumeHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
