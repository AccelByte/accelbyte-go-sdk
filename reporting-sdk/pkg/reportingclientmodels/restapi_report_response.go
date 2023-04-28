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

// RestapiReportResponse Restapi report response
//
// swagger:model Restapi report response.
type RestapiReportResponse struct {

	// additionalinfo
	// Required: true
	AdditionalInfo interface{} `json:"additionalInfo"`

	// category
	// Enum: ['CHAT', 'EXTENSION', 'UGC', 'USER']
	// Required: true
	Category *string `json:"category"`

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// extensioncategory
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// objectid
	// Required: true
	ObjectID *string `json:"objectId"`

	// objecttype
	// Required: true
	ObjectType *string `json:"objectType"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// reporterid
	// Required: true
	ReporterID *string `json:"reporterId"`

	// ticketid
	// Required: true
	TicketID *string `json:"ticketId"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Restapi report response
func (m *RestapiReportResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateObjectID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateObjectType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReporterID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

var restapiReportResponseTypeCategoryPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHAT", "EXTENSION", "UGC", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiReportResponseTypeCategoryPropEnum = append(restapiReportResponseTypeCategoryPropEnum, v)
	}
}

const (

	// RestapiReportResponseCategoryCHAT captures enum value "CHAT"
	RestapiReportResponseCategoryCHAT string = "CHAT"

	// RestapiReportResponseCategoryEXTENSION captures enum value "EXTENSION"
	RestapiReportResponseCategoryEXTENSION string = "EXTENSION"

	// RestapiReportResponseCategoryUGC captures enum value "UGC"
	RestapiReportResponseCategoryUGC string = "UGC"

	// RestapiReportResponseCategoryUSER captures enum value "USER"
	RestapiReportResponseCategoryUSER string = "USER"
)

// prop value enum
func (m *RestapiReportResponse) validateCategoryEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiReportResponseTypeCategoryPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiReportResponse) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	// value enum
	if err := m.validateCategoryEnum("category", "body", *m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateObjectID(formats strfmt.Registry) error {

	if err := validate.Required("objectId", "body", m.ObjectID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateObjectType(formats strfmt.Registry) error {

	if err := validate.Required("objectType", "body", m.ObjectType); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateReporterID(formats strfmt.Registry) error {

	if err := validate.Required("reporterId", "body", m.ReporterID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketId", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiReportResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiReportResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiReportResponse) UnmarshalBinary(b []byte) error {
	var res RestapiReportResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
