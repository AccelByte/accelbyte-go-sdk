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

// UpdateTemplateLocalizationV1AdminReader is a Reader for the UpdateTemplateLocalizationV1Admin structure.
type UpdateTemplateLocalizationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateTemplateLocalizationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUpdateTemplateLocalizationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateTemplateLocalizationV1AdminBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateTemplateLocalizationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewUpdateTemplateLocalizationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateTemplateLocalizationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateTemplateLocalizationV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateTemplateLocalizationV1AdminNoContent creates a UpdateTemplateLocalizationV1AdminNoContent with default headers values
func NewUpdateTemplateLocalizationV1AdminNoContent() *UpdateTemplateLocalizationV1AdminNoContent {
	return &UpdateTemplateLocalizationV1AdminNoContent{}
}

/*UpdateTemplateLocalizationV1AdminNoContent handles this case with default header values.

  No Content
*/
type UpdateTemplateLocalizationV1AdminNoContent struct {
}

func (o *UpdateTemplateLocalizationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminNoContent ", 204)
}

func (o *UpdateTemplateLocalizationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUpdateTemplateLocalizationV1AdminBadRequest creates a UpdateTemplateLocalizationV1AdminBadRequest with default headers values
func NewUpdateTemplateLocalizationV1AdminBadRequest() *UpdateTemplateLocalizationV1AdminBadRequest {
	return &UpdateTemplateLocalizationV1AdminBadRequest{}
}

/*UpdateTemplateLocalizationV1AdminBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateTemplateLocalizationV1AdminBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UpdateTemplateLocalizationV1AdminBadRequest) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateTemplateLocalizationV1AdminBadRequest) ToJSONString() string {
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

func (o *UpdateTemplateLocalizationV1AdminBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UpdateTemplateLocalizationV1AdminBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTemplateLocalizationV1AdminUnauthorized creates a UpdateTemplateLocalizationV1AdminUnauthorized with default headers values
func NewUpdateTemplateLocalizationV1AdminUnauthorized() *UpdateTemplateLocalizationV1AdminUnauthorized {
	return &UpdateTemplateLocalizationV1AdminUnauthorized{}
}

/*UpdateTemplateLocalizationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateTemplateLocalizationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UpdateTemplateLocalizationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateTemplateLocalizationV1AdminUnauthorized) ToJSONString() string {
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

func (o *UpdateTemplateLocalizationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UpdateTemplateLocalizationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTemplateLocalizationV1AdminForbidden creates a UpdateTemplateLocalizationV1AdminForbidden with default headers values
func NewUpdateTemplateLocalizationV1AdminForbidden() *UpdateTemplateLocalizationV1AdminForbidden {
	return &UpdateTemplateLocalizationV1AdminForbidden{}
}

/*UpdateTemplateLocalizationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type UpdateTemplateLocalizationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UpdateTemplateLocalizationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *UpdateTemplateLocalizationV1AdminForbidden) ToJSONString() string {
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

func (o *UpdateTemplateLocalizationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UpdateTemplateLocalizationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTemplateLocalizationV1AdminNotFound creates a UpdateTemplateLocalizationV1AdminNotFound with default headers values
func NewUpdateTemplateLocalizationV1AdminNotFound() *UpdateTemplateLocalizationV1AdminNotFound {
	return &UpdateTemplateLocalizationV1AdminNotFound{}
}

/*UpdateTemplateLocalizationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type UpdateTemplateLocalizationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UpdateTemplateLocalizationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateTemplateLocalizationV1AdminNotFound) ToJSONString() string {
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

func (o *UpdateTemplateLocalizationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UpdateTemplateLocalizationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateTemplateLocalizationV1AdminInternalServerError creates a UpdateTemplateLocalizationV1AdminInternalServerError with default headers values
func NewUpdateTemplateLocalizationV1AdminInternalServerError() *UpdateTemplateLocalizationV1AdminInternalServerError {
	return &UpdateTemplateLocalizationV1AdminInternalServerError{}
}

/*UpdateTemplateLocalizationV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateTemplateLocalizationV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *UpdateTemplateLocalizationV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] updateTemplateLocalizationV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateTemplateLocalizationV1AdminInternalServerError) ToJSONString() string {
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

func (o *UpdateTemplateLocalizationV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *UpdateTemplateLocalizationV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
