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

// DeleteTemplateLocalizationV1AdminReader is a Reader for the DeleteTemplateLocalizationV1Admin structure.
type DeleteTemplateLocalizationV1AdminReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTemplateLocalizationV1AdminReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTemplateLocalizationV1AdminNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteTemplateLocalizationV1AdminUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteTemplateLocalizationV1AdminForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTemplateLocalizationV1AdminNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteTemplateLocalizationV1AdminInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTemplateLocalizationV1AdminNoContent creates a DeleteTemplateLocalizationV1AdminNoContent with default headers values
func NewDeleteTemplateLocalizationV1AdminNoContent() *DeleteTemplateLocalizationV1AdminNoContent {
	return &DeleteTemplateLocalizationV1AdminNoContent{}
}

/*DeleteTemplateLocalizationV1AdminNoContent handles this case with default header values.

  No Content
*/
type DeleteTemplateLocalizationV1AdminNoContent struct {
}

func (o *DeleteTemplateLocalizationV1AdminNoContent) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationV1AdminNoContent ", 204)
}

func (o *DeleteTemplateLocalizationV1AdminNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTemplateLocalizationV1AdminUnauthorized creates a DeleteTemplateLocalizationV1AdminUnauthorized with default headers values
func NewDeleteTemplateLocalizationV1AdminUnauthorized() *DeleteTemplateLocalizationV1AdminUnauthorized {
	return &DeleteTemplateLocalizationV1AdminUnauthorized{}
}

/*DeleteTemplateLocalizationV1AdminUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteTemplateLocalizationV1AdminUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteTemplateLocalizationV1AdminUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationV1AdminUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationV1AdminUnauthorized) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationV1AdminUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteTemplateLocalizationV1AdminUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationV1AdminForbidden creates a DeleteTemplateLocalizationV1AdminForbidden with default headers values
func NewDeleteTemplateLocalizationV1AdminForbidden() *DeleteTemplateLocalizationV1AdminForbidden {
	return &DeleteTemplateLocalizationV1AdminForbidden{}
}

/*DeleteTemplateLocalizationV1AdminForbidden handles this case with default header values.

  Forbidden
*/
type DeleteTemplateLocalizationV1AdminForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteTemplateLocalizationV1AdminForbidden) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationV1AdminForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationV1AdminForbidden) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationV1AdminForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteTemplateLocalizationV1AdminForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationV1AdminNotFound creates a DeleteTemplateLocalizationV1AdminNotFound with default headers values
func NewDeleteTemplateLocalizationV1AdminNotFound() *DeleteTemplateLocalizationV1AdminNotFound {
	return &DeleteTemplateLocalizationV1AdminNotFound{}
}

/*DeleteTemplateLocalizationV1AdminNotFound handles this case with default header values.

  Not Found
*/
type DeleteTemplateLocalizationV1AdminNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteTemplateLocalizationV1AdminNotFound) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationV1AdminNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationV1AdminNotFound) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationV1AdminNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteTemplateLocalizationV1AdminNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationV1AdminInternalServerError creates a DeleteTemplateLocalizationV1AdminInternalServerError with default headers values
func NewDeleteTemplateLocalizationV1AdminInternalServerError() *DeleteTemplateLocalizationV1AdminInternalServerError {
	return &DeleteTemplateLocalizationV1AdminInternalServerError{}
}

/*DeleteTemplateLocalizationV1AdminInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteTemplateLocalizationV1AdminInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseV1
}

func (o *DeleteTemplateLocalizationV1AdminInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /lobby/v1/admin/notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationV1AdminInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationV1AdminInternalServerError) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationV1AdminInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseV1 {
	return o.Payload
}

func (o *DeleteTemplateLocalizationV1AdminInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
