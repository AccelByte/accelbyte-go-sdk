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

// DeleteTemplateLocalizationReader is a Reader for the DeleteTemplateLocalization structure.
type DeleteTemplateLocalizationReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteTemplateLocalizationReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteTemplateLocalizationNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteTemplateLocalizationBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteTemplateLocalizationUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteTemplateLocalizationForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteTemplateLocalizationNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteTemplateLocalizationNoContent creates a DeleteTemplateLocalizationNoContent with default headers values
func NewDeleteTemplateLocalizationNoContent() *DeleteTemplateLocalizationNoContent {
	return &DeleteTemplateLocalizationNoContent{}
}

/*DeleteTemplateLocalizationNoContent handles this case with default header values.

  No Content
*/
type DeleteTemplateLocalizationNoContent struct {
}

func (o *DeleteTemplateLocalizationNoContent) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationNoContent ", 204)
}

func (o *DeleteTemplateLocalizationNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteTemplateLocalizationBadRequest creates a DeleteTemplateLocalizationBadRequest with default headers values
func NewDeleteTemplateLocalizationBadRequest() *DeleteTemplateLocalizationBadRequest {
	return &DeleteTemplateLocalizationBadRequest{}
}

/*DeleteTemplateLocalizationBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteTemplateLocalizationBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateLocalizationBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationBadRequest) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateLocalizationBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationUnauthorized creates a DeleteTemplateLocalizationUnauthorized with default headers values
func NewDeleteTemplateLocalizationUnauthorized() *DeleteTemplateLocalizationUnauthorized {
	return &DeleteTemplateLocalizationUnauthorized{}
}

/*DeleteTemplateLocalizationUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteTemplateLocalizationUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateLocalizationUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationUnauthorized) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateLocalizationUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationForbidden creates a DeleteTemplateLocalizationForbidden with default headers values
func NewDeleteTemplateLocalizationForbidden() *DeleteTemplateLocalizationForbidden {
	return &DeleteTemplateLocalizationForbidden{}
}

/*DeleteTemplateLocalizationForbidden handles this case with default header values.

  Forbidden
*/
type DeleteTemplateLocalizationForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateLocalizationForbidden) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationForbidden) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateLocalizationForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteTemplateLocalizationNotFound creates a DeleteTemplateLocalizationNotFound with default headers values
func NewDeleteTemplateLocalizationNotFound() *DeleteTemplateLocalizationNotFound {
	return &DeleteTemplateLocalizationNotFound{}
}

/*DeleteTemplateLocalizationNotFound handles this case with default header values.

  Not Found
*/
type DeleteTemplateLocalizationNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *DeleteTemplateLocalizationNotFound) Error() string {
	return fmt.Sprintf("[DELETE /notification/namespaces/{namespace}/templates/{templateSlug}/languages/{templateLanguage}][%d] deleteTemplateLocalizationNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteTemplateLocalizationNotFound) ToJSONString() string {
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

func (o *DeleteTemplateLocalizationNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *DeleteTemplateLocalizationNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
