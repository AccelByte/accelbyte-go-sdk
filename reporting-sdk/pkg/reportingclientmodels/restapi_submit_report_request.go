// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiSubmitReportRequest Restapi submit report request
//
// swagger:model Restapi submit report request.
type RestapiSubmitReportRequest struct {

	// Additional info regarding reported user / content, JSON formatted
	AdditionalInfo interface{} `json:"additionalInfo,omitempty"`

	// Report category, must select from pre defined list
	// Enum: ['CHAT', 'EXTENSION', 'UGC', 'USER']
	// Required: true
	Category *string `json:"category"`

	// Additional comment if any, max 280 chars
	Comment string `json:"comment,omitempty"`

	// Report extension category, must select from pre defined list
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// ID of content being reported, uuid4WithoutHyphens. Required for UGC category
	ObjectID string `json:"objectId,omitempty"`

	// Type of content being reported, max 64 chars. Required for UGC category
	ObjectType string `json:"objectType,omitempty"`

	// Reason of report, can select from pre defined list, max 128 chars
	// Required: true
	Reason *string `json:"reason"`

	// User ID being reported, in UUID4 format
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Restapi submit report request
func (m *RestapiSubmitReportRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
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

var restapiSubmitReportRequestTypeCategoryPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHAT", "EXTENSION", "UGC", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiSubmitReportRequestTypeCategoryPropEnum = append(restapiSubmitReportRequestTypeCategoryPropEnum, v)
	}
}

const (

	// RestapiSubmitReportRequestCategoryCHAT captures enum value "CHAT"
	RestapiSubmitReportRequestCategoryCHAT string = "CHAT"

	// RestapiSubmitReportRequestCategoryEXTENSION captures enum value "EXTENSION"
	RestapiSubmitReportRequestCategoryEXTENSION string = "EXTENSION"

	// RestapiSubmitReportRequestCategoryUGC captures enum value "UGC"
	RestapiSubmitReportRequestCategoryUGC string = "UGC"

	// RestapiSubmitReportRequestCategoryUSER captures enum value "USER"
	RestapiSubmitReportRequestCategoryUSER string = "USER"
)

// prop value enum
func (m *RestapiSubmitReportRequest) validateCategoryEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiSubmitReportRequestTypeCategoryPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiSubmitReportRequest) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	// value enum
	if err := m.validateCategoryEnum("category", "body", *m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportRequest) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *RestapiSubmitReportRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiSubmitReportRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiSubmitReportRequest) UnmarshalBinary(b []byte) error {
	var res RestapiSubmitReportRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
