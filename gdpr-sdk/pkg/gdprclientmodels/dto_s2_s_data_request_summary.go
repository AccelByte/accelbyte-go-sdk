// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOS2SDataRequestSummary Dto S2S data request summary
//
// swagger:model Dto S2S data request summary.
type DTOS2SDataRequestSummary struct {

	// Failed message if status is Failed
	FailedMessage string `json:"failedMessage,omitempty"`

	// Status of the request
	// Enum: ['Canceled', 'Completed', 'Failed', 'In-Progress', 'Pending']
	// Required: true
	Status *string `json:"status"`

	// Download url if status is Completed
	URL string `json:"url,omitempty"`
}

// Validate validates this Dto S2S data request summary
func (m *DTOS2SDataRequestSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var dtoS2SDataRequestSummaryTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CANCELED", "COMPLETED", "FAILED", "IN-PROGRESS", "PENDING"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dtoS2SDataRequestSummaryTypeStatusPropEnum = append(dtoS2SDataRequestSummaryTypeStatusPropEnum, v)
	}
}

const (

	// DTOS2SDataRequestSummaryStatusCANCELED captures enum value "CANCELED"
	DTOS2SDataRequestSummaryStatusCANCELED string = "CANCELED"

	// DTOS2SDataRequestSummaryStatusCOMPLETED captures enum value "COMPLETED"
	DTOS2SDataRequestSummaryStatusCOMPLETED string = "COMPLETED"

	// DTOS2SDataRequestSummaryStatusFAILED captures enum value "FAILED"
	DTOS2SDataRequestSummaryStatusFAILED string = "FAILED"

	// DTOS2SDataRequestSummaryStatusINPROGRESS captures enum value "IN-PROGRESS"
	DTOS2SDataRequestSummaryStatusINPROGRESS string = "IN-PROGRESS"

	// DTOS2SDataRequestSummaryStatusPENDING captures enum value "PENDING"
	DTOS2SDataRequestSummaryStatusPENDING string = "PENDING"
)

// prop value enum
func (m *DTOS2SDataRequestSummary) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dtoS2SDataRequestSummaryTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DTOS2SDataRequestSummary) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOS2SDataRequestSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOS2SDataRequestSummary) UnmarshalBinary(b []byte) error {
	var res DTOS2SDataRequestSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
