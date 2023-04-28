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

// RestapiTicketResponse Restapi ticket response
//
// swagger:model Restapi ticket response.
type RestapiTicketResponse struct {

	// category
	// Enum: ['CHAT', 'EXTENSION', 'UGC', 'USER']
	// Required: true
	Category *string `json:"category"`

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

	// notes
	// Required: true
	Notes *string `json:"notes"`

	// objectid
	// Required: true
	ObjectID *string `json:"objectId"`

	// objecttype
	// Required: true
	ObjectType *string `json:"objectType"`

	// reportscount
	// Required: true
	// Format: int32
	ReportsCount *int32 `json:"reportsCount"`

	// status
	// Enum: ['AUTO_MODERATED', 'CLOSED', 'OPEN', 'UNKNOWN']
	// Required: true
	Status *string `json:"status"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Restapi ticket response
func (m *RestapiTicketResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategory(formats); err != nil {
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
	if err := m.validateNotes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateObjectID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateObjectType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReportsCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

var restapiTicketResponseTypeCategoryPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHAT", "EXTENSION", "UGC", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiTicketResponseTypeCategoryPropEnum = append(restapiTicketResponseTypeCategoryPropEnum, v)
	}
}

const (

	// RestapiTicketResponseCategoryCHAT captures enum value "CHAT"
	RestapiTicketResponseCategoryCHAT string = "CHAT"

	// RestapiTicketResponseCategoryEXTENSION captures enum value "EXTENSION"
	RestapiTicketResponseCategoryEXTENSION string = "EXTENSION"

	// RestapiTicketResponseCategoryUGC captures enum value "UGC"
	RestapiTicketResponseCategoryUGC string = "UGC"

	// RestapiTicketResponseCategoryUSER captures enum value "USER"
	RestapiTicketResponseCategoryUSER string = "USER"
)

// prop value enum
func (m *RestapiTicketResponse) validateCategoryEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiTicketResponseTypeCategoryPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiTicketResponse) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	// value enum
	if err := m.validateCategoryEnum("category", "body", *m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateNotes(formats strfmt.Registry) error {

	if err := validate.Required("notes", "body", m.Notes); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateObjectID(formats strfmt.Registry) error {

	if err := validate.Required("objectId", "body", m.ObjectID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateObjectType(formats strfmt.Registry) error {

	if err := validate.Required("objectType", "body", m.ObjectType); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateReportsCount(formats strfmt.Registry) error {

	if err := validate.Required("reportsCount", "body", m.ReportsCount); err != nil {
		return err
	}

	return nil
}

var restapiTicketResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTO_MODERATED", "CLOSED", "OPEN", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiTicketResponseTypeStatusPropEnum = append(restapiTicketResponseTypeStatusPropEnum, v)
	}
}

const (

	// RestapiTicketResponseStatusAUTOMODERATED captures enum value "AUTO_MODERATED"
	RestapiTicketResponseStatusAUTOMODERATED string = "AUTO_MODERATED"

	// RestapiTicketResponseStatusCLOSED captures enum value "CLOSED"
	RestapiTicketResponseStatusCLOSED string = "CLOSED"

	// RestapiTicketResponseStatusOPEN captures enum value "OPEN"
	RestapiTicketResponseStatusOPEN string = "OPEN"

	// RestapiTicketResponseStatusUNKNOWN captures enum value "UNKNOWN"
	RestapiTicketResponseStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *RestapiTicketResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiTicketResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiTicketResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *RestapiTicketResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiTicketResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiTicketResponse) UnmarshalBinary(b []byte) error {
	var res RestapiTicketResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
