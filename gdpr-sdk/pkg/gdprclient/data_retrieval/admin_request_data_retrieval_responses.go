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

// AdminRequestDataRetrievalReader is a Reader for the AdminRequestDataRetrieval structure.
type AdminRequestDataRetrievalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRequestDataRetrievalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminRequestDataRetrievalCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRequestDataRetrievalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRequestDataRetrievalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminRequestDataRetrievalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewAdminRequestDataRetrievalTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRequestDataRetrievalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRequestDataRetrievalCreated creates a AdminRequestDataRetrievalCreated with default headers values
func NewAdminRequestDataRetrievalCreated() *AdminRequestDataRetrievalCreated {
	return &AdminRequestDataRetrievalCreated{}
}

/*AdminRequestDataRetrievalCreated handles this case with default header values.

  Created
*/
type AdminRequestDataRetrievalCreated struct {
	Payload *gdprclientmodels.ModelsDataRetrievalResponse
}

func (o *AdminRequestDataRetrievalCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalCreated) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalCreated) GetPayload() *gdprclientmodels.ModelsDataRetrievalResponse {
	return o.Payload
}

func (o *AdminRequestDataRetrievalCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDataRetrievalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRequestDataRetrievalBadRequest creates a AdminRequestDataRetrievalBadRequest with default headers values
func NewAdminRequestDataRetrievalBadRequest() *AdminRequestDataRetrievalBadRequest {
	return &AdminRequestDataRetrievalBadRequest{}
}

/*AdminRequestDataRetrievalBadRequest handles this case with default header values.

  Bad Request
*/
type AdminRequestDataRetrievalBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminRequestDataRetrievalBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalBadRequest) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRequestDataRetrievalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRequestDataRetrievalUnauthorized creates a AdminRequestDataRetrievalUnauthorized with default headers values
func NewAdminRequestDataRetrievalUnauthorized() *AdminRequestDataRetrievalUnauthorized {
	return &AdminRequestDataRetrievalUnauthorized{}
}

/*AdminRequestDataRetrievalUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminRequestDataRetrievalUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminRequestDataRetrievalUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalUnauthorized) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRequestDataRetrievalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRequestDataRetrievalNotFound creates a AdminRequestDataRetrievalNotFound with default headers values
func NewAdminRequestDataRetrievalNotFound() *AdminRequestDataRetrievalNotFound {
	return &AdminRequestDataRetrievalNotFound{}
}

/*AdminRequestDataRetrievalNotFound handles this case with default header values.

  Not Found
*/
type AdminRequestDataRetrievalNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminRequestDataRetrievalNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalNotFound) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRequestDataRetrievalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRequestDataRetrievalTooManyRequests creates a AdminRequestDataRetrievalTooManyRequests with default headers values
func NewAdminRequestDataRetrievalTooManyRequests() *AdminRequestDataRetrievalTooManyRequests {
	return &AdminRequestDataRetrievalTooManyRequests{}
}

/*AdminRequestDataRetrievalTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type AdminRequestDataRetrievalTooManyRequests struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminRequestDataRetrievalTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalTooManyRequests) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalTooManyRequests) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRequestDataRetrievalTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRequestDataRetrievalInternalServerError creates a AdminRequestDataRetrievalInternalServerError with default headers values
func NewAdminRequestDataRetrievalInternalServerError() *AdminRequestDataRetrievalInternalServerError {
	return &AdminRequestDataRetrievalInternalServerError{}
}

/*AdminRequestDataRetrievalInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminRequestDataRetrievalInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminRequestDataRetrievalInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/users/{userId}/requests][%d] adminRequestDataRetrievalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRequestDataRetrievalInternalServerError) ToJSONString() string {
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

func (o *AdminRequestDataRetrievalInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminRequestDataRetrievalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
