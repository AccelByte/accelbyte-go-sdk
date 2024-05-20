// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminDeletePlatformAccountClosureClientReader is a Reader for the AdminDeletePlatformAccountClosureClient structure.
type AdminDeletePlatformAccountClosureClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeletePlatformAccountClosureClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminDeletePlatformAccountClosureClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeletePlatformAccountClosureClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeletePlatformAccountClosureClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeletePlatformAccountClosureClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminDeletePlatformAccountClosureClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeletePlatformAccountClosureClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeletePlatformAccountClosureClientNoContent creates a AdminDeletePlatformAccountClosureClientNoContent with default headers values
func NewAdminDeletePlatformAccountClosureClientNoContent() *AdminDeletePlatformAccountClosureClientNoContent {
	return &AdminDeletePlatformAccountClosureClientNoContent{}
}

/*AdminDeletePlatformAccountClosureClientNoContent handles this case with default header values.

  No Content
*/
type AdminDeletePlatformAccountClosureClientNoContent struct {
}

func (o *AdminDeletePlatformAccountClosureClientNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientNoContent ", 204)
}

func (o *AdminDeletePlatformAccountClosureClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminDeletePlatformAccountClosureClientBadRequest creates a AdminDeletePlatformAccountClosureClientBadRequest with default headers values
func NewAdminDeletePlatformAccountClosureClientBadRequest() *AdminDeletePlatformAccountClosureClientBadRequest {
	return &AdminDeletePlatformAccountClosureClientBadRequest{}
}

/*AdminDeletePlatformAccountClosureClientBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeletePlatformAccountClosureClientBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminDeletePlatformAccountClosureClientBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeletePlatformAccountClosureClientBadRequest) ToJSONString() string {
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

func (o *AdminDeletePlatformAccountClosureClientBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformAccountClosureClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlatformAccountClosureClientUnauthorized creates a AdminDeletePlatformAccountClosureClientUnauthorized with default headers values
func NewAdminDeletePlatformAccountClosureClientUnauthorized() *AdminDeletePlatformAccountClosureClientUnauthorized {
	return &AdminDeletePlatformAccountClosureClientUnauthorized{}
}

/*AdminDeletePlatformAccountClosureClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeletePlatformAccountClosureClientUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminDeletePlatformAccountClosureClientUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeletePlatformAccountClosureClientUnauthorized) ToJSONString() string {
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

func (o *AdminDeletePlatformAccountClosureClientUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformAccountClosureClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlatformAccountClosureClientForbidden creates a AdminDeletePlatformAccountClosureClientForbidden with default headers values
func NewAdminDeletePlatformAccountClosureClientForbidden() *AdminDeletePlatformAccountClosureClientForbidden {
	return &AdminDeletePlatformAccountClosureClientForbidden{}
}

/*AdminDeletePlatformAccountClosureClientForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeletePlatformAccountClosureClientForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminDeletePlatformAccountClosureClientForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeletePlatformAccountClosureClientForbidden) ToJSONString() string {
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

func (o *AdminDeletePlatformAccountClosureClientForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformAccountClosureClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlatformAccountClosureClientNotFound creates a AdminDeletePlatformAccountClosureClientNotFound with default headers values
func NewAdminDeletePlatformAccountClosureClientNotFound() *AdminDeletePlatformAccountClosureClientNotFound {
	return &AdminDeletePlatformAccountClosureClientNotFound{}
}

/*AdminDeletePlatformAccountClosureClientNotFound handles this case with default header values.

  Not Found
*/
type AdminDeletePlatformAccountClosureClientNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminDeletePlatformAccountClosureClientNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminDeletePlatformAccountClosureClientNotFound) ToJSONString() string {
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

func (o *AdminDeletePlatformAccountClosureClientNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformAccountClosureClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeletePlatformAccountClosureClientInternalServerError creates a AdminDeletePlatformAccountClosureClientInternalServerError with default headers values
func NewAdminDeletePlatformAccountClosureClientInternalServerError() *AdminDeletePlatformAccountClosureClientInternalServerError {
	return &AdminDeletePlatformAccountClosureClientInternalServerError{}
}

/*AdminDeletePlatformAccountClosureClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeletePlatformAccountClosureClientInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminDeletePlatformAccountClosureClientInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminDeletePlatformAccountClosureClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeletePlatformAccountClosureClientInternalServerError) ToJSONString() string {
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

func (o *AdminDeletePlatformAccountClosureClientInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeletePlatformAccountClosureClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
