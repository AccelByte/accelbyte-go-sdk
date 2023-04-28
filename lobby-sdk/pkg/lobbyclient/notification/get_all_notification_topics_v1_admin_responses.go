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

// GetAllNotificationTopicsV1AdminReader is a Reader for the GetAllNotificationTopicsV1Admin structure.
type GetAllNotificationTopicsV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllNotificationTopicsV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllNotificationTopicsV1AdminOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllNotificationTopicsV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllNotificationTopicsV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllNotificationTopicsV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllNotificationTopicsV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/notification/namespaces/{namespace}/topics returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllNotificationTopicsV1AdminOK creates a GetAllNotificationTopicsV1AdminOK with default headers values
func NewGetAllNotificationTopicsV1AdminOK() *GetAllNotificationTopicsV1AdminOK {
	return &GetAllNotificationTopicsV1AdminOK{}
}

/*GetAllNotificationTopicsV1AdminOK handles this case with default header values.

  OK
*/
type GetAllNotificationTopicsV1AdminOK struct {
	Payload *lobbyclientmodels.ModelGetAllNotificationTopicsResponse
}

func (o *GetAllNotificationTopicsV1AdminOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] getAllNotificationTopicsV1AdminOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllNotificationTopicsV1AdminOK) ToJSONString() string {
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

func (o *GetAllNotificationTopicsV1AdminOK) GetPayload() *lobbyclientmodels.ModelGetAllNotificationTopicsResponse {
	return o.Payload
}

func (o *GetAllNotificationTopicsV1AdminOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.ModelGetAllNotificationTopicsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllNotificationTopicsV1AdminUnauthorized creates a GetAllNotificationTopicsV1AdminUnauthorized with default headers values
func NewGetAllNotificationTopicsV1AdminUnauthorized() *GetAllNotificationTopicsV1AdminUnauthorized {
	return &GetAllNotificationTopicsV1AdminUnauthorized{}
}

/*GetAllNotificationTopicsV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllNotificationTopicsV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTopicsV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] getAllNotificationTopicsV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllNotificationTopicsV1AdminUnauthorized) ToJSONString() string {
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

func (o *GetAllNotificationTopicsV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTopicsV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllNotificationTopicsV1AdminForbidden creates a GetAllNotificationTopicsV1AdminForbidden with default headers values
func NewGetAllNotificationTopicsV1AdminForbidden() *GetAllNotificationTopicsV1AdminForbidden {
	return &GetAllNotificationTopicsV1AdminForbidden{}
}

/*GetAllNotificationTopicsV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type GetAllNotificationTopicsV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTopicsV1AdminForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] getAllNotificationTopicsV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllNotificationTopicsV1AdminForbidden) ToJSONString() string {
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

func (o *GetAllNotificationTopicsV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTopicsV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllNotificationTopicsV1AdminNotFound creates a GetAllNotificationTopicsV1AdminNotFound with default headers values
func NewGetAllNotificationTopicsV1AdminNotFound() *GetAllNotificationTopicsV1AdminNotFound {
	return &GetAllNotificationTopicsV1AdminNotFound{}
}

/*GetAllNotificationTopicsV1AdminNotFound handles this case with default header values.

  Not Found
*/
type GetAllNotificationTopicsV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTopicsV1AdminNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] getAllNotificationTopicsV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllNotificationTopicsV1AdminNotFound) ToJSONString() string {
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

func (o *GetAllNotificationTopicsV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTopicsV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetAllNotificationTopicsV1AdminInternalServerError creates a GetAllNotificationTopicsV1AdminInternalServerError with default headers values
func NewGetAllNotificationTopicsV1AdminInternalServerError() *GetAllNotificationTopicsV1AdminInternalServerError {
	return &GetAllNotificationTopicsV1AdminInternalServerError{}
}

/*GetAllNotificationTopicsV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllNotificationTopicsV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTopicsV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/topics][%d] getAllNotificationTopicsV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllNotificationTopicsV1AdminInternalServerError) ToJSONString() string {
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

func (o *GetAllNotificationTopicsV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTopicsV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
