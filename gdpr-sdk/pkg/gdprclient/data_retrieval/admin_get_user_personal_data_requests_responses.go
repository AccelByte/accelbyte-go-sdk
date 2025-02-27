// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

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

// AdminGetUserPersonalDataRequestsReader is a Reader for the AdminGetUserPersonalDataRequests structure.
type AdminGetUserPersonalDataRequestsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserPersonalDataRequestsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserPersonalDataRequestsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserPersonalDataRequestsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserPersonalDataRequestsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserPersonalDataRequestsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/users/{userId}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserPersonalDataRequestsOK creates a AdminGetUserPersonalDataRequestsOK with default headers values
func NewAdminGetUserPersonalDataRequestsOK() *AdminGetUserPersonalDataRequestsOK {
	return &AdminGetUserPersonalDataRequestsOK{}
}

/*AdminGetUserPersonalDataRequestsOK handles this case with default header values.

  OK
*/
type AdminGetUserPersonalDataRequestsOK struct {
	Payload *gdprclientmodels.ModelsUserPersonalDataResponse
}

func (o *AdminGetUserPersonalDataRequestsOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminGetUserPersonalDataRequestsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserPersonalDataRequestsOK) ToJSONString() string {
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

func (o *AdminGetUserPersonalDataRequestsOK) GetPayload() *gdprclientmodels.ModelsUserPersonalDataResponse {
	return o.Payload
}

func (o *AdminGetUserPersonalDataRequestsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsUserPersonalDataResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPersonalDataRequestsBadRequest creates a AdminGetUserPersonalDataRequestsBadRequest with default headers values
func NewAdminGetUserPersonalDataRequestsBadRequest() *AdminGetUserPersonalDataRequestsBadRequest {
	return &AdminGetUserPersonalDataRequestsBadRequest{}
}

/*AdminGetUserPersonalDataRequestsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetUserPersonalDataRequestsBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPersonalDataRequestsBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminGetUserPersonalDataRequestsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserPersonalDataRequestsBadRequest) ToJSONString() string {
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

func (o *AdminGetUserPersonalDataRequestsBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPersonalDataRequestsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserPersonalDataRequestsUnauthorized creates a AdminGetUserPersonalDataRequestsUnauthorized with default headers values
func NewAdminGetUserPersonalDataRequestsUnauthorized() *AdminGetUserPersonalDataRequestsUnauthorized {
	return &AdminGetUserPersonalDataRequestsUnauthorized{}
}

/*AdminGetUserPersonalDataRequestsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserPersonalDataRequestsUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPersonalDataRequestsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminGetUserPersonalDataRequestsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserPersonalDataRequestsUnauthorized) ToJSONString() string {
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

func (o *AdminGetUserPersonalDataRequestsUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPersonalDataRequestsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUserPersonalDataRequestsInternalServerError creates a AdminGetUserPersonalDataRequestsInternalServerError with default headers values
func NewAdminGetUserPersonalDataRequestsInternalServerError() *AdminGetUserPersonalDataRequestsInternalServerError {
	return &AdminGetUserPersonalDataRequestsInternalServerError{}
}

/*AdminGetUserPersonalDataRequestsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserPersonalDataRequestsInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPersonalDataRequestsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminGetUserPersonalDataRequestsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserPersonalDataRequestsInternalServerError) ToJSONString() string {
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

func (o *AdminGetUserPersonalDataRequestsInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPersonalDataRequestsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
