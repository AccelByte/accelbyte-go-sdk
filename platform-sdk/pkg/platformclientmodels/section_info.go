// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// SectionInfo Section info
//
// swagger:model Section info.
type SectionInfo struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// only exists when rotation type is FIX_PERIOD or CUSTOM
	// Format: date-time
	CurrentRotationExpireAt *strfmt.DateTime `json:"currentRotationExpireAt,omitempty"`

	// current rotation item infos
	CurrentRotationItems []*ItemInfo `json:"currentRotationItems,omitempty"`

	// description info
	Description string `json:"description,omitempty"`

	// display order
	// Format: int32
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// end date
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate"`

	// customized section properties
	Ext interface{} `json:"ext,omitempty"`

	// localext
	LocalExt interface{} `json:"localExt,omitempty"`

	// long description info
	LongDescription string `json:"longDescription,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// id
	// Required: true
	SectionID *string `json:"sectionId"`

	// start date
	// Required: true
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate"`

	// title info
	// Required: true
	Title *string `json:"title"`

	// updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// view id
	// Required: true
	ViewID *string `json:"viewId"`
}

// Validate validates this Section info
func (m *SectionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSectionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateViewID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SectionInfo) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateSectionID(formats strfmt.Registry) error {

	if err := validate.Required("sectionId", "body", m.SectionID); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateStartDate(formats strfmt.Registry) error {

	if err := validate.Required("startDate", "body", strfmt.DateTime(m.StartDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SectionInfo) validateViewID(formats strfmt.Registry) error {

	if err := validate.Required("viewId", "body", m.ViewID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SectionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SectionInfo) UnmarshalBinary(b []byte) error {
	var res SectionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
