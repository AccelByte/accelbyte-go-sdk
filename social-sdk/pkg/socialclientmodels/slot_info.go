// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// SlotInfo Slot info
//
// swagger:model Slot info.
type SlotInfo struct {

	// base64 encoded md5
	Checksum string `json:"checksum,omitempty"`

	// customattribute
	CustomAttribute string `json:"customAttribute,omitempty"`

	// dateaccessed
	// Format: date-time
	DateAccessed *strfmt.DateTime `json:"dateAccessed,omitempty"`

	// datecreated
	// Format: date-time
	DateCreated *strfmt.DateTime `json:"dateCreated,omitempty"`

	// datemodified
	// Format: date-time
	DateModified *strfmt.DateTime `json:"dateModified,omitempty"`

	// label
	Label string `json:"label,omitempty"`

	// mimetype
	MimeType string `json:"mimeType,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// originalname
	OriginalName string `json:"originalName,omitempty"`

	// size
	// Format: int64
	Size int64 `json:"size,omitempty"`

	// slotid
	SlotID string `json:"slotId,omitempty"`

	// storedname
	StoredName string `json:"storedName,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Slot info
func (m *SlotInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SlotInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SlotInfo) UnmarshalBinary(b []byte) error {
	var res SlotInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
