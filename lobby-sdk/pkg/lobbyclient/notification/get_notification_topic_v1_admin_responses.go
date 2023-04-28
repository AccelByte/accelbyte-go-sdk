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

// GetNotificationTopicV1AdminReader is a Reader for the GetNotificationTopicV1Admin structure.
type GetNotificationTopicV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetNotificationTopicV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetNotificationTopicV1AdminOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetNotificationTopicV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetNotificationTopicV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetNotificationTopicV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetNotificationTopicV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetNotificationTopicV1AdminOK creates a GetNotificationTopicV1AdminOK with default headers values
func NewGetNotificationTopicV1AdminOK() *GetNotificationTopicV1AdminOK {
	return &GetNotificationTopicV1AdminOK{}
}

/*GetNotificationTopicV1AdminOK handles this case with default header values.

  OK
*/
type GetNotificationTopicV1AdminOK struct {
	Payload *lobbyclientmodels.ModelNotificationTopicResponseV1
}

func (o *GetNotificationTopicV1AdminOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] getNotificationTopicV1AdminOK  %+v", 200, o.ToJSONString())
}

func (o *GetNotificationTopicV1AdminOK) ToJSONString() string {
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

func (o *GetNotificationTopicV1AdminOK) GetPayload() *lobbyclientmodels.ModelNotificationTopicResponseV1 {
	return o.Payload
}

func (o *GetNotificationTopicV1AdminOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelNotificationTopicResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetNotificationTopicV1AdminUnauthorized creates a GetNotificationTopicV1AdminUnauthorized with default headers values
func NewGetNotificationTopicV1AdminUnauthorized() *GetNotificationTopicV1AdminUnauthorized {
	return &GetNotificationTopicV1AdminUnauthorized{}
}

/*GetNotificationTopicV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetNotificationTopicV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetNotificationTopicV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] getNotificationTopicV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetNotificationTopicV1AdminUnauthorized) ToJSONString() string {
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

func (o *GetNotificationTopicV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetNotificationTopicV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetNotificationTopicV1AdminForbidden creates a GetNotificationTopicV1AdminForbidden with default headers values
func NewGetNotificationTopicV1AdminForbidden() *GetNotificationTopicV1AdminForbidden {
	return &GetNotificationTopicV1AdminForbidden{}
}

/*GetNotificationTopicV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type GetNotificationTopicV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetNotificationTopicV1AdminForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] getNotificationTopicV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetNotificationTopicV1AdminForbidden) ToJSONString() string {
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

func (o *GetNotificationTopicV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetNotificationTopicV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetNotificationTopicV1AdminNotFound creates a GetNotificationTopicV1AdminNotFound with default headers values
func NewGetNotificationTopicV1AdminNotFound() *GetNotificationTopicV1AdminNotFound {
	return &GetNotificationTopicV1AdminNotFound{}
}

/*GetNotificationTopicV1AdminNotFound handles this case with default header values.

  Not Found
*/
type GetNotificationTopicV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetNotificationTopicV1AdminNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] getNotificationTopicV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetNotificationTopicV1AdminNotFound) ToJSONString() string {
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

func (o *GetNotificationTopicV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetNotificationTopicV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetNotificationTopicV1AdminInternalServerError creates a GetNotificationTopicV1AdminInternalServerError with default headers values
func NewGetNotificationTopicV1AdminInternalServerError() *GetNotificationTopicV1AdminInternalServerError {
	return &GetNotificationTopicV1AdminInternalServerError{}
}

/*GetNotificationTopicV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetNotificationTopicV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetNotificationTopicV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics/{topicName}][%d] getNotificationTopicV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetNotificationTopicV1AdminInternalServerError) ToJSONString() string {
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

func (o *GetNotificationTopicV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetNotificationTopicV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
