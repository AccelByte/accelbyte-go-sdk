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

// GetAllNotificationTemplatesV1AdminReader is a Reader for the GetAllNotificationTemplatesV1Admin structure.
type GetAllNotificationTemplatesV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetAllNotificationTemplatesV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetAllNotificationTemplatesV1AdminOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetAllNotificationTemplatesV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetAllNotificationTemplatesV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetAllNotificationTemplatesV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetAllNotificationTemplatesV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetAllNotificationTemplatesV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /lobby/v1/admin/notification/namespaces/{namespace}/templates returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetAllNotificationTemplatesV1AdminOK creates a GetAllNotificationTemplatesV1AdminOK with default headers values
func NewGetAllNotificationTemplatesV1AdminOK() *GetAllNotificationTemplatesV1AdminOK {
	return &GetAllNotificationTemplatesV1AdminOK{}
}

/*GetAllNotificationTemplatesV1AdminOK handles this case with default header values.

  OK
*/
type GetAllNotificationTemplatesV1AdminOK struct {
	Payload []*lobbyclientmodels.ModelNotificationTemplateResponse
}

func (o *GetAllNotificationTemplatesV1AdminOK) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminOK  %+v", 200, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminOK) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminOK) GetPayload() []*lobbyclientmodels.ModelNotificationTemplateResponse {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetAllNotificationTemplatesV1AdminBadRequest creates a GetAllNotificationTemplatesV1AdminBadRequest with default headers values
func NewGetAllNotificationTemplatesV1AdminBadRequest() *GetAllNotificationTemplatesV1AdminBadRequest {
	return &GetAllNotificationTemplatesV1AdminBadRequest{}
}

/*GetAllNotificationTemplatesV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type GetAllNotificationTemplatesV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTemplatesV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminBadRequest) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllNotificationTemplatesV1AdminUnauthorized creates a GetAllNotificationTemplatesV1AdminUnauthorized with default headers values
func NewGetAllNotificationTemplatesV1AdminUnauthorized() *GetAllNotificationTemplatesV1AdminUnauthorized {
	return &GetAllNotificationTemplatesV1AdminUnauthorized{}
}

/*GetAllNotificationTemplatesV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetAllNotificationTemplatesV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTemplatesV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminUnauthorized) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllNotificationTemplatesV1AdminForbidden creates a GetAllNotificationTemplatesV1AdminForbidden with default headers values
func NewGetAllNotificationTemplatesV1AdminForbidden() *GetAllNotificationTemplatesV1AdminForbidden {
	return &GetAllNotificationTemplatesV1AdminForbidden{}
}

/*GetAllNotificationTemplatesV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type GetAllNotificationTemplatesV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTemplatesV1AdminForbidden) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminForbidden) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllNotificationTemplatesV1AdminNotFound creates a GetAllNotificationTemplatesV1AdminNotFound with default headers values
func NewGetAllNotificationTemplatesV1AdminNotFound() *GetAllNotificationTemplatesV1AdminNotFound {
	return &GetAllNotificationTemplatesV1AdminNotFound{}
}

/*GetAllNotificationTemplatesV1AdminNotFound handles this case with default header values.

  Not Found
*/
type GetAllNotificationTemplatesV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTemplatesV1AdminNotFound) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminNotFound) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetAllNotificationTemplatesV1AdminInternalServerError creates a GetAllNotificationTemplatesV1AdminInternalServerError with default headers values
func NewGetAllNotificationTemplatesV1AdminInternalServerError() *GetAllNotificationTemplatesV1AdminInternalServerError {
	return &GetAllNotificationTemplatesV1AdminInternalServerError{}
}

/*GetAllNotificationTemplatesV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetAllNotificationTemplatesV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *GetAllNotificationTemplatesV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[GET /lobby/v1/admin/notification/namespaces/{namespace}/templates][%d] getAllNotificationTemplatesV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetAllNotificationTemplatesV1AdminInternalServerError) ToJSONString() string {
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

func (o *GetAllNotificationTemplatesV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *GetAllNotificationTemplatesV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
