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

// AdminGetPlatformAccountClosureClientsReader is a Reader for the AdminGetPlatformAccountClosureClients structure.
type AdminGetPlatformAccountClosureClientsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetPlatformAccountClosureClientsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetPlatformAccountClosureClientsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetPlatformAccountClosureClientsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetPlatformAccountClosureClientsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetPlatformAccountClosureClientsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetPlatformAccountClosureClientsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetPlatformAccountClosureClientsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetPlatformAccountClosureClientsOK creates a AdminGetPlatformAccountClosureClientsOK with default headers values
func NewAdminGetPlatformAccountClosureClientsOK() *AdminGetPlatformAccountClosureClientsOK {
	return &AdminGetPlatformAccountClosureClientsOK{}
}

/*AdminGetPlatformAccountClosureClientsOK handles this case with default header values.

  OK
*/
type AdminGetPlatformAccountClosureClientsOK struct {
	Payload *gdprclientmodels.DTOPlatformAccountClosureClientsResponse
}

func (o *AdminGetPlatformAccountClosureClientsOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsOK) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsOK) GetPayload() *gdprclientmodels.DTOPlatformAccountClosureClientsResponse {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOPlatformAccountClosureClientsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetPlatformAccountClosureClientsBadRequest creates a AdminGetPlatformAccountClosureClientsBadRequest with default headers values
func NewAdminGetPlatformAccountClosureClientsBadRequest() *AdminGetPlatformAccountClosureClientsBadRequest {
	return &AdminGetPlatformAccountClosureClientsBadRequest{}
}

/*AdminGetPlatformAccountClosureClientsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetPlatformAccountClosureClientsBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientsBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsBadRequest) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientsUnauthorized creates a AdminGetPlatformAccountClosureClientsUnauthorized with default headers values
func NewAdminGetPlatformAccountClosureClientsUnauthorized() *AdminGetPlatformAccountClosureClientsUnauthorized {
	return &AdminGetPlatformAccountClosureClientsUnauthorized{}
}

/*AdminGetPlatformAccountClosureClientsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetPlatformAccountClosureClientsUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsUnauthorized) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientsForbidden creates a AdminGetPlatformAccountClosureClientsForbidden with default headers values
func NewAdminGetPlatformAccountClosureClientsForbidden() *AdminGetPlatformAccountClosureClientsForbidden {
	return &AdminGetPlatformAccountClosureClientsForbidden{}
}

/*AdminGetPlatformAccountClosureClientsForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetPlatformAccountClosureClientsForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientsForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsForbidden) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientsNotFound creates a AdminGetPlatformAccountClosureClientsNotFound with default headers values
func NewAdminGetPlatformAccountClosureClientsNotFound() *AdminGetPlatformAccountClosureClientsNotFound {
	return &AdminGetPlatformAccountClosureClientsNotFound{}
}

/*AdminGetPlatformAccountClosureClientsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetPlatformAccountClosureClientsNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientsNotFound) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsNotFound) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetPlatformAccountClosureClientsInternalServerError creates a AdminGetPlatformAccountClosureClientsInternalServerError with default headers values
func NewAdminGetPlatformAccountClosureClientsInternalServerError() *AdminGetPlatformAccountClosureClientsInternalServerError {
	return &AdminGetPlatformAccountClosureClientsInternalServerError{}
}

/*AdminGetPlatformAccountClosureClientsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetPlatformAccountClosureClientsInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetPlatformAccountClosureClientsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/platforms/closure/clients][%d] adminGetPlatformAccountClosureClientsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetPlatformAccountClosureClientsInternalServerError) ToJSONString() string {
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

func (o *AdminGetPlatformAccountClosureClientsInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetPlatformAccountClosureClientsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
