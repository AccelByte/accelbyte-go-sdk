// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session_detail

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
)

// AdminTicketDetailGetByTicketIDReader is a Reader for the AdminTicketDetailGetByTicketID structure.
type AdminTicketDetailGetByTicketIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminTicketDetailGetByTicketIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminTicketDetailGetByTicketIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminTicketDetailGetByTicketIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminTicketDetailGetByTicketIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminTicketDetailGetByTicketIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminTicketDetailGetByTicketIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminTicketDetailGetByTicketIDOK creates a AdminTicketDetailGetByTicketIDOK with default headers values
func NewAdminTicketDetailGetByTicketIDOK() *AdminTicketDetailGetByTicketIDOK {
	return &AdminTicketDetailGetByTicketIDOK{}
}

/*AdminTicketDetailGetByTicketIDOK handles this case with default header values.

  OK
*/
type AdminTicketDetailGetByTicketIDOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsTicketObservabilityDetail
}

func (o *AdminTicketDetailGetByTicketIDOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] adminTicketDetailGetByTicketIdOK  %+v", 200, o.ToJSONString())
}

func (o *AdminTicketDetailGetByTicketIDOK) ToJSONString() string {
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

func (o *AdminTicketDetailGetByTicketIDOK) GetPayload() *sessionhistoryclientmodels.ApimodelsTicketObservabilityDetail {
	return o.Payload
}

func (o *AdminTicketDetailGetByTicketIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsTicketObservabilityDetail)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTicketDetailGetByTicketIDBadRequest creates a AdminTicketDetailGetByTicketIDBadRequest with default headers values
func NewAdminTicketDetailGetByTicketIDBadRequest() *AdminTicketDetailGetByTicketIDBadRequest {
	return &AdminTicketDetailGetByTicketIDBadRequest{}
}

/*AdminTicketDetailGetByTicketIDBadRequest handles this case with default header values.

  Bad Request
*/
type AdminTicketDetailGetByTicketIDBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminTicketDetailGetByTicketIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] adminTicketDetailGetByTicketIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminTicketDetailGetByTicketIDBadRequest) ToJSONString() string {
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

func (o *AdminTicketDetailGetByTicketIDBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminTicketDetailGetByTicketIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTicketDetailGetByTicketIDUnauthorized creates a AdminTicketDetailGetByTicketIDUnauthorized with default headers values
func NewAdminTicketDetailGetByTicketIDUnauthorized() *AdminTicketDetailGetByTicketIDUnauthorized {
	return &AdminTicketDetailGetByTicketIDUnauthorized{}
}

/*AdminTicketDetailGetByTicketIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminTicketDetailGetByTicketIDUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminTicketDetailGetByTicketIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] adminTicketDetailGetByTicketIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminTicketDetailGetByTicketIDUnauthorized) ToJSONString() string {
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

func (o *AdminTicketDetailGetByTicketIDUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminTicketDetailGetByTicketIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTicketDetailGetByTicketIDForbidden creates a AdminTicketDetailGetByTicketIDForbidden with default headers values
func NewAdminTicketDetailGetByTicketIDForbidden() *AdminTicketDetailGetByTicketIDForbidden {
	return &AdminTicketDetailGetByTicketIDForbidden{}
}

/*AdminTicketDetailGetByTicketIDForbidden handles this case with default header values.

  Forbidden
*/
type AdminTicketDetailGetByTicketIDForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminTicketDetailGetByTicketIDForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] adminTicketDetailGetByTicketIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminTicketDetailGetByTicketIDForbidden) ToJSONString() string {
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

func (o *AdminTicketDetailGetByTicketIDForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminTicketDetailGetByTicketIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminTicketDetailGetByTicketIDInternalServerError creates a AdminTicketDetailGetByTicketIDInternalServerError with default headers values
func NewAdminTicketDetailGetByTicketIDInternalServerError() *AdminTicketDetailGetByTicketIDInternalServerError {
	return &AdminTicketDetailGetByTicketIDInternalServerError{}
}

/*AdminTicketDetailGetByTicketIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminTicketDetailGetByTicketIDInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminTicketDetailGetByTicketIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}][%d] adminTicketDetailGetByTicketIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminTicketDetailGetByTicketIDInternalServerError) ToJSONString() string {
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

func (o *AdminTicketDetailGetByTicketIDInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminTicketDetailGetByTicketIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
