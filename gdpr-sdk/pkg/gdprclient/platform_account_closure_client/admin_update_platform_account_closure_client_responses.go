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

// AdminUpdatePlatformAccountClosureClientReader is a Reader for the AdminUpdatePlatformAccountClosureClient structure.
type AdminUpdatePlatformAccountClosureClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdatePlatformAccountClosureClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminUpdatePlatformAccountClosureClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdatePlatformAccountClosureClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdatePlatformAccountClosureClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdatePlatformAccountClosureClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdatePlatformAccountClosureClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdatePlatformAccountClosureClientNoContent creates a AdminUpdatePlatformAccountClosureClientNoContent with default headers values
func NewAdminUpdatePlatformAccountClosureClientNoContent() *AdminUpdatePlatformAccountClosureClientNoContent {
	return &AdminUpdatePlatformAccountClosureClientNoContent{}
}

/*AdminUpdatePlatformAccountClosureClientNoContent handles this case with default header values.

  No Content
*/
type AdminUpdatePlatformAccountClosureClientNoContent struct {
}

func (o *AdminUpdatePlatformAccountClosureClientNoContent) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminUpdatePlatformAccountClosureClientNoContent ", 204)
}

func (o *AdminUpdatePlatformAccountClosureClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminUpdatePlatformAccountClosureClientBadRequest creates a AdminUpdatePlatformAccountClosureClientBadRequest with default headers values
func NewAdminUpdatePlatformAccountClosureClientBadRequest() *AdminUpdatePlatformAccountClosureClientBadRequest {
	return &AdminUpdatePlatformAccountClosureClientBadRequest{}
}

/*AdminUpdatePlatformAccountClosureClientBadRequest handles this case with default header values.

  Bad Request
*/
type AdminUpdatePlatformAccountClosureClientBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureClientBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminUpdatePlatformAccountClosureClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureClientBadRequest) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureClientBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePlatformAccountClosureClientUnauthorized creates a AdminUpdatePlatformAccountClosureClientUnauthorized with default headers values
func NewAdminUpdatePlatformAccountClosureClientUnauthorized() *AdminUpdatePlatformAccountClosureClientUnauthorized {
	return &AdminUpdatePlatformAccountClosureClientUnauthorized{}
}

/*AdminUpdatePlatformAccountClosureClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminUpdatePlatformAccountClosureClientUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureClientUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminUpdatePlatformAccountClosureClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureClientUnauthorized) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureClientUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePlatformAccountClosureClientForbidden creates a AdminUpdatePlatformAccountClosureClientForbidden with default headers values
func NewAdminUpdatePlatformAccountClosureClientForbidden() *AdminUpdatePlatformAccountClosureClientForbidden {
	return &AdminUpdatePlatformAccountClosureClientForbidden{}
}

/*AdminUpdatePlatformAccountClosureClientForbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdatePlatformAccountClosureClientForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureClientForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminUpdatePlatformAccountClosureClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureClientForbidden) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureClientForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminUpdatePlatformAccountClosureClientInternalServerError creates a AdminUpdatePlatformAccountClosureClientInternalServerError with default headers values
func NewAdminUpdatePlatformAccountClosureClientInternalServerError() *AdminUpdatePlatformAccountClosureClientInternalServerError {
	return &AdminUpdatePlatformAccountClosureClientInternalServerError{}
}

/*AdminUpdatePlatformAccountClosureClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminUpdatePlatformAccountClosureClientInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminUpdatePlatformAccountClosureClientInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminUpdatePlatformAccountClosureClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdatePlatformAccountClosureClientInternalServerError) ToJSONString() string {
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

func (o *AdminUpdatePlatformAccountClosureClientInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminUpdatePlatformAccountClosureClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
