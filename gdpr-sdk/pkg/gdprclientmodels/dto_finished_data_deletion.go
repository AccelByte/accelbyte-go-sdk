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

// DTOFinishedDataDeletion Dto finished data deletion
//
// swagger:model Dto finished data deletion.
type DTOFinishedDataDeletion struct {

	// Failed message if status is Failed
	FailedMessage string `json:"failedMessage,omitempty"`

	// Finished deletion date
	// Required: true
	// Format: date-time
	FinishedDate strfmt.DateTime `json:"finishedDate"`

	// Request deletion date
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"requestDate"`

	// Status of request
	// Enum: ['Completed', 'Failed']
	// Required: true
	Status *string `json:"status"`

	// User Id. This userId will be anonymized automatically after 7 days from the **Success** deletion
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Dto finished data deletion
func (m *DTOFinishedDataDeletion) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFinishedDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOFinishedDataDeletion) validateFinishedDate(formats strfmt.Registry) error {

	if err := validate.Required("finishedDate", "body", strfmt.DateTime(m.FinishedDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("finishedDate", "body", "date-time", m.FinishedDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *DTOFinishedDataDeletion) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("requestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("requestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

var dtoFinishedDataDeletionTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COMPLETED", "FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dtoFinishedDataDeletionTypeStatusPropEnum = append(dtoFinishedDataDeletionTypeStatusPropEnum, v)
	}
}

const (

	// DTOFinishedDataDeletionStatusCOMPLETED captures enum value "COMPLETED"
	DTOFinishedDataDeletionStatusCOMPLETED string = "COMPLETED"

	// DTOFinishedDataDeletionStatusFAILED captures enum value "FAILED"
	DTOFinishedDataDeletionStatusFAILED string = "FAILED"
)

// prop value enum
func (m *DTOFinishedDataDeletion) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dtoFinishedDataDeletionTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DTOFinishedDataDeletion) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *DTOFinishedDataDeletion) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOFinishedDataDeletion) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOFinishedDataDeletion) UnmarshalBinary(b []byte) error {
	var res DTOFinishedDataDeletion
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
