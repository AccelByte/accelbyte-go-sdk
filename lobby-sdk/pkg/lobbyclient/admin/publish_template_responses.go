// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// PublishTemplateReader is a Reader for the PublishTemplate structure.
type PublishTemplateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublishTemplateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublishTemplateNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublishTemplateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublishTemplateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublishTemplateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublishTemplateNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublishTemplateNoContent creates a PublishTemplateNoContent with default headers values
func NewPublishTemplateNoContent() *PublishTemplateNoContent {
	return &PublishTemplateNoContent{}
}

/*PublishTemplateNoContent handles this case with default header values.

  No Content
*/
type PublishTemplateNoContent struct {
}

func (o *PublishTemplateNoContent) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish][%d] publishTemplateNoContent ", 204)
}

func (o *PublishTemplateNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublishTemplateBadRequest creates a PublishTemplateBadRequest with default headers values
func NewPublishTemplateBadRequest() *PublishTemplateBadRequest {
	return &PublishTemplateBadRequest{}
}

/*PublishTemplateBadRequest handles this case with default header values.

  Bad Request
*/
type PublishTemplateBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublishTemplateBadRequest) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish][%d] publishTemplateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublishTemplateBadRequest) ToJSONString() string {
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

func (o *PublishTemplateBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublishTemplateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishTemplateUnauthorized creates a PublishTemplateUnauthorized with default headers values
func NewPublishTemplateUnauthorized() *PublishTemplateUnauthorized {
	return &PublishTemplateUnauthorized{}
}

/*PublishTemplateUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublishTemplateUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublishTemplateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish][%d] publishTemplateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublishTemplateUnauthorized) ToJSONString() string {
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

func (o *PublishTemplateUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublishTemplateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishTemplateForbidden creates a PublishTemplateForbidden with default headers values
func NewPublishTemplateForbidden() *PublishTemplateForbidden {
	return &PublishTemplateForbidden{}
}

/*PublishTemplateForbidden handles this case with default header values.

  Forbidden
*/
type PublishTemplateForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublishTemplateForbidden) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish][%d] publishTemplateForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublishTemplateForbidden) ToJSONString() string {
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

func (o *PublishTemplateForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublishTemplateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublishTemplateNotFound creates a PublishTemplateNotFound with default headers values
func NewPublishTemplateNotFound() *PublishTemplateNotFound {
	return &PublishTemplateNotFound{}
}

/*PublishTemplateNotFound handles this case with default header values.

  Not Found
*/
type PublishTemplateNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *PublishTemplateNotFound) Error() string {
	return fmt.Sprintf("[POST /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}/publish][%d] publishTemplateNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublishTemplateNotFound) ToJSONString() string {
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

func (o *PublishTemplateNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *PublishTemplateNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(lobbyclientmodels.RestapiErrorResponseBody)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
