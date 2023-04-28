// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// UpdateSeasonReader is a Reader for the UpdateSeason structure.
type UpdateSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSeasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateSeasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewUpdateSeasonUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSeasonOK creates a UpdateSeasonOK with default headers values
func NewUpdateSeasonOK() *UpdateSeasonOK {
	return &UpdateSeasonOK{}
}

/*UpdateSeasonOK handles this case with default header values.

  successful operation
*/
type UpdateSeasonOK struct {
	Payload *seasonpassclientmodels.SeasonInfo
}

func (o *UpdateSeasonOK) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] updateSeasonOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSeasonOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateSeasonOK) GetPayload() *seasonpassclientmodels.SeasonInfo {
	return o.Payload
}

func (o *UpdateSeasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.SeasonInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSeasonBadRequest creates a UpdateSeasonBadRequest with default headers values
func NewUpdateSeasonBadRequest() *UpdateSeasonBadRequest {
	return &UpdateSeasonBadRequest{}
}

/*UpdateSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr><tr><td>49121</td><td>Default language [{language}] required in localizations</td></tr><tr><td>49122</td><td>Invalid time range</td></tr></table>
*/
type UpdateSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateSeasonBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] updateSeasonBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSeasonBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSeasonNotFound creates a UpdateSeasonNotFound with default headers values
func NewUpdateSeasonNotFound() *UpdateSeasonNotFound {
	return &UpdateSeasonNotFound{}
}

/*UpdateSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr><tr><td>30141</td><td>Store [{storeId}] does not exist in namespace [{namespace}]</td></tr><tr><td>49141</td><td>Tier item does not exist in the store of namespace [{namespace}]</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type UpdateSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateSeasonNotFound) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] updateSeasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateSeasonNotFound) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSeasonConflict creates a UpdateSeasonConflict with default headers values
func NewUpdateSeasonConflict() *UpdateSeasonConflict {
	return &UpdateSeasonConflict{}
}

/*UpdateSeasonConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr></table>
*/
type UpdateSeasonConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *UpdateSeasonConflict) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] updateSeasonConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateSeasonConflict) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateSeasonConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdateSeasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSeasonUnprocessableEntity creates a UpdateSeasonUnprocessableEntity with default headers values
func NewUpdateSeasonUnprocessableEntity() *UpdateSeasonUnprocessableEntity {
	return &UpdateSeasonUnprocessableEntity{}
}

/*UpdateSeasonUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type UpdateSeasonUnprocessableEntity struct {
	Payload *seasonpassclientmodels.ValidationErrorEntity
}

func (o *UpdateSeasonUnprocessableEntity) Error() string {
	return fmt.Sprintf("[PATCH /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] updateSeasonUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *UpdateSeasonUnprocessableEntity) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *UpdateSeasonUnprocessableEntity) GetPayload() *seasonpassclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *UpdateSeasonUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
