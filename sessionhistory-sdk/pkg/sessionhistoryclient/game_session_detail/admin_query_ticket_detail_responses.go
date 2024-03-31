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

// AdminQueryTicketDetailReader is a Reader for the AdminQueryTicketDetail structure.
type AdminQueryTicketDetailReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminQueryTicketDetailReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminQueryTicketDetailOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminQueryTicketDetailBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminQueryTicketDetailUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminQueryTicketDetailForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminQueryTicketDetailInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminQueryTicketDetailOK creates a AdminQueryTicketDetailOK with default headers values
func NewAdminQueryTicketDetailOK() *AdminQueryTicketDetailOK {
	return &AdminQueryTicketDetailOK{}
}

/*AdminQueryTicketDetailOK handles this case with default header values.

  OK
*/
type AdminQueryTicketDetailOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsTicketDetailQueryResponse
}

func (o *AdminQueryTicketDetailOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets][%d] adminQueryTicketDetailOK  %+v", 200, o.ToJSONString())
}

func (o *AdminQueryTicketDetailOK) ToJSONString() string {
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

func (o *AdminQueryTicketDetailOK) GetPayload() *sessionhistoryclientmodels.ApimodelsTicketDetailQueryResponse {
	return o.Payload
}

func (o *AdminQueryTicketDetailOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsTicketDetailQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminQueryTicketDetailBadRequest creates a AdminQueryTicketDetailBadRequest with default headers values
func NewAdminQueryTicketDetailBadRequest() *AdminQueryTicketDetailBadRequest {
	return &AdminQueryTicketDetailBadRequest{}
}

/*AdminQueryTicketDetailBadRequest handles this case with default header values.

  Bad Request
*/
type AdminQueryTicketDetailBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryTicketDetailBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets][%d] adminQueryTicketDetailBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminQueryTicketDetailBadRequest) ToJSONString() string {
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

func (o *AdminQueryTicketDetailBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryTicketDetailBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTicketDetailUnauthorized creates a AdminQueryTicketDetailUnauthorized with default headers values
func NewAdminQueryTicketDetailUnauthorized() *AdminQueryTicketDetailUnauthorized {
	return &AdminQueryTicketDetailUnauthorized{}
}

/*AdminQueryTicketDetailUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminQueryTicketDetailUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryTicketDetailUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets][%d] adminQueryTicketDetailUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminQueryTicketDetailUnauthorized) ToJSONString() string {
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

func (o *AdminQueryTicketDetailUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryTicketDetailUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTicketDetailForbidden creates a AdminQueryTicketDetailForbidden with default headers values
func NewAdminQueryTicketDetailForbidden() *AdminQueryTicketDetailForbidden {
	return &AdminQueryTicketDetailForbidden{}
}

/*AdminQueryTicketDetailForbidden handles this case with default header values.

  Forbidden
*/
type AdminQueryTicketDetailForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryTicketDetailForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets][%d] adminQueryTicketDetailForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminQueryTicketDetailForbidden) ToJSONString() string {
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

func (o *AdminQueryTicketDetailForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryTicketDetailForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminQueryTicketDetailInternalServerError creates a AdminQueryTicketDetailInternalServerError with default headers values
func NewAdminQueryTicketDetailInternalServerError() *AdminQueryTicketDetailInternalServerError {
	return &AdminQueryTicketDetailInternalServerError{}
}

/*AdminQueryTicketDetailInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminQueryTicketDetailInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminQueryTicketDetailInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/tickets][%d] adminQueryTicketDetailInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminQueryTicketDetailInternalServerError) ToJSONString() string {
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

func (o *AdminQueryTicketDetailInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminQueryTicketDetailInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
