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

// RequestHistory Request history
//
// swagger:model Request history.
type RequestHistory struct {

	// requesttime
	// Format: date-time
	RequestTime *strfmt.DateTime `json:"requestTime,omitempty"`

	// responsebody
	ResponseBody interface{} `json:"responseBody,omitempty"`

	// responsetime
	// Format: date-time
	ResponseTime *strfmt.DateTime `json:"responseTime,omitempty"`

	// status
	// Enum: ['FAIL', 'PENDING', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// statuscode
	// Format: int32
	StatusCode int32 `json:"statusCode,omitempty"`
}

// Validate validates this Request history
func (m *RequestHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var requestHistoryTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "PENDING", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		requestHistoryTypeStatusPropEnum = append(requestHistoryTypeStatusPropEnum, v)
	}
}

const (

	// RequestHistoryStatusFAIL captures enum value "FAIL"
	RequestHistoryStatusFAIL string = "FAIL"

	// RequestHistoryStatusPENDING captures enum value "PENDING"
	RequestHistoryStatusPENDING string = "PENDING"

	// RequestHistoryStatusSUCCESS captures enum value "SUCCESS"
	RequestHistoryStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *RequestHistory) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, requestHistoryTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RequestHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RequestHistory) UnmarshalBinary(b []byte) error {
	var res RequestHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
