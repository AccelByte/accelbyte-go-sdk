// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// AdminSetProfanityRuleForNamespaceReader is a Reader for the AdminSetProfanityRuleForNamespace structure.
type AdminSetProfanityRuleForNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminSetProfanityRuleForNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminSetProfanityRuleForNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminSetProfanityRuleForNamespaceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminSetProfanityRuleForNamespaceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminSetProfanityRuleForNamespaceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminSetProfanityRuleForNamespaceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminSetProfanityRuleForNamespaceInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminSetProfanityRuleForNamespaceOK creates a AdminSetProfanityRuleForNamespaceOK with default headers values
func NewAdminSetProfanityRuleForNamespaceOK() *AdminSetProfanityRuleForNamespaceOK {
	return &AdminSetProfanityRuleForNamespaceOK{}
}

/*AdminSetProfanityRuleForNamespaceOK handles this case with default header values.

  OK
*/
type AdminSetProfanityRuleForNamespaceOK struct {
}

func (o *AdminSetProfanityRuleForNamespaceOK) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceOK ", 200)
}

func (o *AdminSetProfanityRuleForNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminSetProfanityRuleForNamespaceBadRequest creates a AdminSetProfanityRuleForNamespaceBadRequest with default headers values
func NewAdminSetProfanityRuleForNamespaceBadRequest() *AdminSetProfanityRuleForNamespaceBadRequest {
	return &AdminSetProfanityRuleForNamespaceBadRequest{}
}

/*AdminSetProfanityRuleForNamespaceBadRequest handles this case with default header values.

  Bad Request
*/
type AdminSetProfanityRuleForNamespaceBadRequest struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetProfanityRuleForNamespaceBadRequest) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminSetProfanityRuleForNamespaceBadRequest) ToJSONString() string {
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

func (o *AdminSetProfanityRuleForNamespaceBadRequest) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetProfanityRuleForNamespaceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetProfanityRuleForNamespaceUnauthorized creates a AdminSetProfanityRuleForNamespaceUnauthorized with default headers values
func NewAdminSetProfanityRuleForNamespaceUnauthorized() *AdminSetProfanityRuleForNamespaceUnauthorized {
	return &AdminSetProfanityRuleForNamespaceUnauthorized{}
}

/*AdminSetProfanityRuleForNamespaceUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminSetProfanityRuleForNamespaceUnauthorized struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetProfanityRuleForNamespaceUnauthorized) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminSetProfanityRuleForNamespaceUnauthorized) ToJSONString() string {
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

func (o *AdminSetProfanityRuleForNamespaceUnauthorized) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetProfanityRuleForNamespaceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetProfanityRuleForNamespaceForbidden creates a AdminSetProfanityRuleForNamespaceForbidden with default headers values
func NewAdminSetProfanityRuleForNamespaceForbidden() *AdminSetProfanityRuleForNamespaceForbidden {
	return &AdminSetProfanityRuleForNamespaceForbidden{}
}

/*AdminSetProfanityRuleForNamespaceForbidden handles this case with default header values.

  Forbidden
*/
type AdminSetProfanityRuleForNamespaceForbidden struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetProfanityRuleForNamespaceForbidden) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminSetProfanityRuleForNamespaceForbidden) ToJSONString() string {
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

func (o *AdminSetProfanityRuleForNamespaceForbidden) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetProfanityRuleForNamespaceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetProfanityRuleForNamespaceNotFound creates a AdminSetProfanityRuleForNamespaceNotFound with default headers values
func NewAdminSetProfanityRuleForNamespaceNotFound() *AdminSetProfanityRuleForNamespaceNotFound {
	return &AdminSetProfanityRuleForNamespaceNotFound{}
}

/*AdminSetProfanityRuleForNamespaceNotFound handles this case with default header values.

  Not Found
*/
type AdminSetProfanityRuleForNamespaceNotFound struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetProfanityRuleForNamespaceNotFound) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminSetProfanityRuleForNamespaceNotFound) ToJSONString() string {
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

func (o *AdminSetProfanityRuleForNamespaceNotFound) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetProfanityRuleForNamespaceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminSetProfanityRuleForNamespaceInternalServerError creates a AdminSetProfanityRuleForNamespaceInternalServerError with default headers values
func NewAdminSetProfanityRuleForNamespaceInternalServerError() *AdminSetProfanityRuleForNamespaceInternalServerError {
	return &AdminSetProfanityRuleForNamespaceInternalServerError{}
}

/*AdminSetProfanityRuleForNamespaceInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminSetProfanityRuleForNamespaceInternalServerError struct {
	Payload *lobbyclientmodels.RestapiErrorResponseBody
}

func (o *AdminSetProfanityRuleForNamespaceInternalServerError) Error() string {
	return fmt.Sprintf("[POST /lobby/v1/admin/profanity/namespaces/{namespace}/rule][%d] adminSetProfanityRuleForNamespaceInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminSetProfanityRuleForNamespaceInternalServerError) ToJSONString() string {
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

func (o *AdminSetProfanityRuleForNamespaceInternalServerError) GetPayload() *lobbyclientmodels.RestapiErrorResponseBody {
	return o.Payload
}

func (o *AdminSetProfanityRuleForNamespaceInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
