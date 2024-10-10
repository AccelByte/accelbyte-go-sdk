// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// CreateNotificationTemplateV1AdminReader is a Reader for the CreateNotificationTemplateV1Admin structure.
type CreateNotificationTemplateV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNotificationTemplateV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCreateNotificationTemplateV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNotificationTemplateV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNotificationTemplateV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNotificationTemplateV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateNotificationTemplateV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateNotificationTemplateV1AdminConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/templates returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNotificationTemplateV1AdminNoContent creates a CreateNotificationTemplateV1AdminNoContent with default headers values
func NewCreateNotificationTemplateV1AdminNoContent() *CreateNotificationTemplateV1AdminNoContent {
	return &CreateNotificationTemplateV1AdminNoContent{}
}

/*CreateNotificationTemplateV1AdminNoContent handles this case with default header values.

  No Content
*/
type CreateNotificationTemplateV1AdminNoContent struct {
}

func (o *CreateNotificationTemplateV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminNoContent ", 204)
}

func (o *CreateNotificationTemplateV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateNotificationTemplateV1AdminBadRequest creates a CreateNotificationTemplateV1AdminBadRequest with default headers values
func NewCreateNotificationTemplateV1AdminBadRequest() *CreateNotificationTemplateV1AdminBadRequest {
	return &CreateNotificationTemplateV1AdminBadRequest{}
}

/*CreateNotificationTemplateV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type CreateNotificationTemplateV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTemplateV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNotificationTemplateV1AdminBadRequest) ToJSONString() string {
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

func (o *CreateNotificationTemplateV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTemplateV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNotificationTemplateV1AdminUnauthorized creates a CreateNotificationTemplateV1AdminUnauthorized with default headers values
func NewCreateNotificationTemplateV1AdminUnauthorized() *CreateNotificationTemplateV1AdminUnauthorized {
	return &CreateNotificationTemplateV1AdminUnauthorized{}
}

/*CreateNotificationTemplateV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNotificationTemplateV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTemplateV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNotificationTemplateV1AdminUnauthorized) ToJSONString() string {
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

func (o *CreateNotificationTemplateV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTemplateV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNotificationTemplateV1AdminForbidden creates a CreateNotificationTemplateV1AdminForbidden with default headers values
func NewCreateNotificationTemplateV1AdminForbidden() *CreateNotificationTemplateV1AdminForbidden {
	return &CreateNotificationTemplateV1AdminForbidden{}
}

/*CreateNotificationTemplateV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type CreateNotificationTemplateV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTemplateV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNotificationTemplateV1AdminForbidden) ToJSONString() string {
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

func (o *CreateNotificationTemplateV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTemplateV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNotificationTemplateV1AdminNotFound creates a CreateNotificationTemplateV1AdminNotFound with default headers values
func NewCreateNotificationTemplateV1AdminNotFound() *CreateNotificationTemplateV1AdminNotFound {
	return &CreateNotificationTemplateV1AdminNotFound{}
}

/*CreateNotificationTemplateV1AdminNotFound handles this case with default header values.

  Not Found
*/
type CreateNotificationTemplateV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTemplateV1AdminNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateNotificationTemplateV1AdminNotFound) ToJSONString() string {
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

func (o *CreateNotificationTemplateV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTemplateV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateNotificationTemplateV1AdminConflict creates a CreateNotificationTemplateV1AdminConflict with default headers values
func NewCreateNotificationTemplateV1AdminConflict() *CreateNotificationTemplateV1AdminConflict {
	return &CreateNotificationTemplateV1AdminConflict{}
}

/*CreateNotificationTemplateV1AdminConflict handles this case with default header values.

  Conflict
*/
type CreateNotificationTemplateV1AdminConflict struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTemplateV1AdminConflict) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] createNotificationTemplateV1AdminConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateNotificationTemplateV1AdminConflict) ToJSONString() string {
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

func (o *CreateNotificationTemplateV1AdminConflict) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTemplateV1AdminConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
