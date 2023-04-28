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

// AdminCancelUserPersonalDataRequestReader is a Reader for the AdminCancelUserPersonalDataRequest structure.
type AdminCancelUserPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCancelUserPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminCancelUserPersonalDataRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCancelUserPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminCancelUserPersonalDataRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCancelUserPersonalDataRequestConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCancelUserPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCancelUserPersonalDataRequestNoContent creates a AdminCancelUserPersonalDataRequestNoContent with default headers values
func NewAdminCancelUserPersonalDataRequestNoContent() *AdminCancelUserPersonalDataRequestNoContent {
	return &AdminCancelUserPersonalDataRequestNoContent{}
}

/*AdminCancelUserPersonalDataRequestNoContent handles this case with default header values.

  No Content
*/
type AdminCancelUserPersonalDataRequestNoContent struct {
}

func (o *AdminCancelUserPersonalDataRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] adminCancelUserPersonalDataRequestNoContent ", 204)
}

func (o *AdminCancelUserPersonalDataRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminCancelUserPersonalDataRequestUnauthorized creates a AdminCancelUserPersonalDataRequestUnauthorized with default headers values
func NewAdminCancelUserPersonalDataRequestUnauthorized() *AdminCancelUserPersonalDataRequestUnauthorized {
	return &AdminCancelUserPersonalDataRequestUnauthorized{}
}

/*AdminCancelUserPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminCancelUserPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] adminCancelUserPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCancelUserPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *AdminCancelUserPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCancelUserPersonalDataRequestNotFound creates a AdminCancelUserPersonalDataRequestNotFound with default headers values
func NewAdminCancelUserPersonalDataRequestNotFound() *AdminCancelUserPersonalDataRequestNotFound {
	return &AdminCancelUserPersonalDataRequestNotFound{}
}

/*AdminCancelUserPersonalDataRequestNotFound handles this case with default header values.

  Not Found
*/
type AdminCancelUserPersonalDataRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserPersonalDataRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] adminCancelUserPersonalDataRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminCancelUserPersonalDataRequestNotFound) ToJSONString() string {
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

func (o *AdminCancelUserPersonalDataRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserPersonalDataRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCancelUserPersonalDataRequestConflict creates a AdminCancelUserPersonalDataRequestConflict with default headers values
func NewAdminCancelUserPersonalDataRequestConflict() *AdminCancelUserPersonalDataRequestConflict {
	return &AdminCancelUserPersonalDataRequestConflict{}
}

/*AdminCancelUserPersonalDataRequestConflict handles this case with default header values.

  Conflict
*/
type AdminCancelUserPersonalDataRequestConflict struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserPersonalDataRequestConflict) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] adminCancelUserPersonalDataRequestConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCancelUserPersonalDataRequestConflict) ToJSONString() string {
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

func (o *AdminCancelUserPersonalDataRequestConflict) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserPersonalDataRequestConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCancelUserPersonalDataRequestInternalServerError creates a AdminCancelUserPersonalDataRequestInternalServerError with default headers values
func NewAdminCancelUserPersonalDataRequestInternalServerError() *AdminCancelUserPersonalDataRequestInternalServerError {
	return &AdminCancelUserPersonalDataRequestInternalServerError{}
}

/*AdminCancelUserPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminCancelUserPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminCancelUserPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/admin/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] adminCancelUserPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCancelUserPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *AdminCancelUserPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCancelUserPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
