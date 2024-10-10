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

// CreateNotificationTopicV1AdminReader is a Reader for the CreateNotificationTopicV1Admin structure.
type CreateNotificationTopicV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateNotificationTopicV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCreateNotificationTopicV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateNotificationTopicV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateNotificationTopicV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateNotificationTopicV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/notification/namespaces/{namespace}/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateNotificationTopicV1AdminNoContent creates a CreateNotificationTopicV1AdminNoContent with default headers values
func NewCreateNotificationTopicV1AdminNoContent() *CreateNotificationTopicV1AdminNoContent {
	return &CreateNotificationTopicV1AdminNoContent{}
}

/*CreateNotificationTopicV1AdminNoContent handles this case with default header values.

  No Content
*/
type CreateNotificationTopicV1AdminNoContent struct {
}

func (o *CreateNotificationTopicV1AdminNoContent) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] createNotificationTopicV1AdminNoContent ", 204)
}

func (o *CreateNotificationTopicV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateNotificationTopicV1AdminBadRequest creates a CreateNotificationTopicV1AdminBadRequest with default headers values
func NewCreateNotificationTopicV1AdminBadRequest() *CreateNotificationTopicV1AdminBadRequest {
	return &CreateNotificationTopicV1AdminBadRequest{}
}

/*CreateNotificationTopicV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type CreateNotificationTopicV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTopicV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] createNotificationTopicV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateNotificationTopicV1AdminBadRequest) ToJSONString() string {
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

func (o *CreateNotificationTopicV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTopicV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNotificationTopicV1AdminUnauthorized creates a CreateNotificationTopicV1AdminUnauthorized with default headers values
func NewCreateNotificationTopicV1AdminUnauthorized() *CreateNotificationTopicV1AdminUnauthorized {
	return &CreateNotificationTopicV1AdminUnauthorized{}
}

/*CreateNotificationTopicV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateNotificationTopicV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTopicV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] createNotificationTopicV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateNotificationTopicV1AdminUnauthorized) ToJSONString() string {
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

func (o *CreateNotificationTopicV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTopicV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateNotificationTopicV1AdminForbidden creates a CreateNotificationTopicV1AdminForbidden with default headers values
func NewCreateNotificationTopicV1AdminForbidden() *CreateNotificationTopicV1AdminForbidden {
	return &CreateNotificationTopicV1AdminForbidden{}
}

/*CreateNotificationTopicV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type CreateNotificationTopicV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *CreateNotificationTopicV1AdminForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] createNotificationTopicV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateNotificationTopicV1AdminForbidden) ToJSONString() string {
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

func (o *CreateNotificationTopicV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *CreateNotificationTopicV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
