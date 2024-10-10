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

// AdminGetPlatformAccountClosureClientReader is a Reader for the AdminGetPlatformAccountClosureClient structure.
type AdminGetPlatformAccountClosureClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlatformAccountClosureClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlatformAccountClosureClientOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlatformAccountClosureClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlatformAccountClosureClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlatformAccountClosureClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlatformAccountClosureClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlatformAccountClosureClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlatformAccountClosureClientOK creates a AdminGetPlatformAccountClosureClientOK with default headers values
func NewAdminGetPlatformAccountClosureClientOK() *AdminGetPlatformAccountClosureClientOK {
	return &AdminGetPlatformAccountClosureClientOK{}
}

/*AdminGetPlatformAccountClosureClientOK handles this case with default header values.

  OK
*/
type AdminGetPlatformAccountClosureClientOK struct {
	Payload *gdprclientmodels.DTOPlatformAccountClosureClientResponse
}

func (o *AdminGetPlatformAccountClosureClientOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientOK) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientOK) GetPayload() *gdprclientmodels.DTOPlatformAccountClosureClientResponse {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOPlatformAccountClosureClientResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformAccountClosureClientBadRequest creates a AdminGetPlatformAccountClosureClientBadRequest with default headers values
func NewAdminGetPlatformAccountClosureClientBadRequest() *AdminGetPlatformAccountClosureClientBadRequest {
	return &AdminGetPlatformAccountClosureClientBadRequest{}
}

/*AdminGetPlatformAccountClosureClientBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlatformAccountClosureClientBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientBadRequest) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientUnauthorized creates a AdminGetPlatformAccountClosureClientUnauthorized with default headers values
func NewAdminGetPlatformAccountClosureClientUnauthorized() *AdminGetPlatformAccountClosureClientUnauthorized {
	return &AdminGetPlatformAccountClosureClientUnauthorized{}
}

/*AdminGetPlatformAccountClosureClientUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlatformAccountClosureClientUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientForbidden creates a AdminGetPlatformAccountClosureClientForbidden with default headers values
func NewAdminGetPlatformAccountClosureClientForbidden() *AdminGetPlatformAccountClosureClientForbidden {
	return &AdminGetPlatformAccountClosureClientForbidden{}
}

/*AdminGetPlatformAccountClosureClientForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlatformAccountClosureClientForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientForbidden) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientNotFound creates a AdminGetPlatformAccountClosureClientNotFound with default headers values
func NewAdminGetPlatformAccountClosureClientNotFound() *AdminGetPlatformAccountClosureClientNotFound {
	return &AdminGetPlatformAccountClosureClientNotFound{}
}

/*AdminGetPlatformAccountClosureClientNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlatformAccountClosureClientNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientNotFound) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientInternalServerError creates a AdminGetPlatformAccountClosureClientInternalServerError with default headers values
func NewAdminGetPlatformAccountClosureClientInternalServerError() *AdminGetPlatformAccountClosureClientInternalServerError {
	return &AdminGetPlatformAccountClosureClientInternalServerError{}
}

/*AdminGetPlatformAccountClosureClientInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlatformAccountClosureClientInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/client][%d] adminGetPlatformAccountClosureClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
