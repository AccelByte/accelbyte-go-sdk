// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// AdminDeleteBulkPartiesReader is a Reader for the AdminDeleteBulkParties structure.
type AdminDeleteBulkPartiesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminDeleteBulkPartiesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminDeleteBulkPartiesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminDeleteBulkPartiesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminDeleteBulkPartiesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminDeleteBulkPartiesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminDeleteBulkPartiesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminDeleteBulkPartiesOK creates a AdminDeleteBulkPartiesOK with default headers values
func NewAdminDeleteBulkPartiesOK() *AdminDeleteBulkPartiesOK {
	return &AdminDeleteBulkPartiesOK{}
}

/*AdminDeleteBulkPartiesOK handles this case with default header values.

  OK
*/
type AdminDeleteBulkPartiesOK struct {
	Payload *sessionclientmodels.ApimodelsDeleteBulkPartySessionsAPIResponse
}

func (o *AdminDeleteBulkPartiesOK) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk][%d] adminDeleteBulkPartiesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminDeleteBulkPartiesOK) ToJSONString() string {
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

func (o *AdminDeleteBulkPartiesOK) GetPayload() *sessionclientmodels.ApimodelsDeleteBulkPartySessionsAPIResponse {
	return o.Payload
}

func (o *AdminDeleteBulkPartiesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ApimodelsDeleteBulkPartySessionsAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteBulkPartiesBadRequest creates a AdminDeleteBulkPartiesBadRequest with default headers values
func NewAdminDeleteBulkPartiesBadRequest() *AdminDeleteBulkPartiesBadRequest {
	return &AdminDeleteBulkPartiesBadRequest{}
}

/*AdminDeleteBulkPartiesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminDeleteBulkPartiesBadRequest struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkPartiesBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk][%d] adminDeleteBulkPartiesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminDeleteBulkPartiesBadRequest) ToJSONString() string {
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

func (o *AdminDeleteBulkPartiesBadRequest) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkPartiesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteBulkPartiesUnauthorized creates a AdminDeleteBulkPartiesUnauthorized with default headers values
func NewAdminDeleteBulkPartiesUnauthorized() *AdminDeleteBulkPartiesUnauthorized {
	return &AdminDeleteBulkPartiesUnauthorized{}
}

/*AdminDeleteBulkPartiesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminDeleteBulkPartiesUnauthorized struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkPartiesUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk][%d] adminDeleteBulkPartiesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminDeleteBulkPartiesUnauthorized) ToJSONString() string {
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

func (o *AdminDeleteBulkPartiesUnauthorized) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkPartiesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteBulkPartiesForbidden creates a AdminDeleteBulkPartiesForbidden with default headers values
func NewAdminDeleteBulkPartiesForbidden() *AdminDeleteBulkPartiesForbidden {
	return &AdminDeleteBulkPartiesForbidden{}
}

/*AdminDeleteBulkPartiesForbidden handles this case with default header values.

  Forbidden
*/
type AdminDeleteBulkPartiesForbidden struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkPartiesForbidden) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk][%d] adminDeleteBulkPartiesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminDeleteBulkPartiesForbidden) ToJSONString() string {
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

func (o *AdminDeleteBulkPartiesForbidden) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkPartiesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminDeleteBulkPartiesInternalServerError creates a AdminDeleteBulkPartiesInternalServerError with default headers values
func NewAdminDeleteBulkPartiesInternalServerError() *AdminDeleteBulkPartiesInternalServerError {
	return &AdminDeleteBulkPartiesInternalServerError{}
}

/*AdminDeleteBulkPartiesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminDeleteBulkPartiesInternalServerError struct {
	Payload *sessionclientmodels.ResponseError
}

func (o *AdminDeleteBulkPartiesInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /session/v1/admin/namespaces/{namespace}/parties/bulk][%d] adminDeleteBulkPartiesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminDeleteBulkPartiesInternalServerError) ToJSONString() string {
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

func (o *AdminDeleteBulkPartiesInternalServerError) GetPayload() *sessionclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminDeleteBulkPartiesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
