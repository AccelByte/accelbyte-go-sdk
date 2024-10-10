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

// AdminGetMatchmakingDetailByTicketIDReader is a Reader for the AdminGetMatchmakingDetailByTicketID structure.
type AdminGetMatchmakingDetailByTicketIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetMatchmakingDetailByTicketIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetMatchmakingDetailByTicketIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetMatchmakingDetailByTicketIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetMatchmakingDetailByTicketIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetMatchmakingDetailByTicketIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetMatchmakingDetailByTicketIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetMatchmakingDetailByTicketIDOK creates a AdminGetMatchmakingDetailByTicketIDOK with default headers values
func NewAdminGetMatchmakingDetailByTicketIDOK() *AdminGetMatchmakingDetailByTicketIDOK {
	return &AdminGetMatchmakingDetailByTicketIDOK{}
}

/*AdminGetMatchmakingDetailByTicketIDOK handles this case with default header values.

  OK
*/
type AdminGetMatchmakingDetailByTicketIDOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsMatchmakingDetail
}

func (o *AdminGetMatchmakingDetailByTicketIDOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}][%d] adminGetMatchmakingDetailByTicketIdOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailByTicketIDOK) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailByTicketIDOK) GetPayload() *sessionhistoryclientmodels.ApimodelsMatchmakingDetail {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailByTicketIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsMatchmakingDetail)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetMatchmakingDetailByTicketIDBadRequest creates a AdminGetMatchmakingDetailByTicketIDBadRequest with default headers values
func NewAdminGetMatchmakingDetailByTicketIDBadRequest() *AdminGetMatchmakingDetailByTicketIDBadRequest {
	return &AdminGetMatchmakingDetailByTicketIDBadRequest{}
}

/*AdminGetMatchmakingDetailByTicketIDBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetMatchmakingDetailByTicketIDBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailByTicketIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}][%d] adminGetMatchmakingDetailByTicketIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailByTicketIDBadRequest) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailByTicketIDBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailByTicketIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailByTicketIDUnauthorized creates a AdminGetMatchmakingDetailByTicketIDUnauthorized with default headers values
func NewAdminGetMatchmakingDetailByTicketIDUnauthorized() *AdminGetMatchmakingDetailByTicketIDUnauthorized {
	return &AdminGetMatchmakingDetailByTicketIDUnauthorized{}
}

/*AdminGetMatchmakingDetailByTicketIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetMatchmakingDetailByTicketIDUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailByTicketIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}][%d] adminGetMatchmakingDetailByTicketIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailByTicketIDUnauthorized) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailByTicketIDUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailByTicketIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailByTicketIDForbidden creates a AdminGetMatchmakingDetailByTicketIDForbidden with default headers values
func NewAdminGetMatchmakingDetailByTicketIDForbidden() *AdminGetMatchmakingDetailByTicketIDForbidden {
	return &AdminGetMatchmakingDetailByTicketIDForbidden{}
}

/*AdminGetMatchmakingDetailByTicketIDForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetMatchmakingDetailByTicketIDForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailByTicketIDForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}][%d] adminGetMatchmakingDetailByTicketIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailByTicketIDForbidden) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailByTicketIDForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailByTicketIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetMatchmakingDetailByTicketIDInternalServerError creates a AdminGetMatchmakingDetailByTicketIDInternalServerError with default headers values
func NewAdminGetMatchmakingDetailByTicketIDInternalServerError() *AdminGetMatchmakingDetailByTicketIDInternalServerError {
	return &AdminGetMatchmakingDetailByTicketIDInternalServerError{}
}

/*AdminGetMatchmakingDetailByTicketIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetMatchmakingDetailByTicketIDInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *AdminGetMatchmakingDetailByTicketIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}][%d] adminGetMatchmakingDetailByTicketIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetMatchmakingDetailByTicketIDInternalServerError) ToJSONString() string {
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

func (o *AdminGetMatchmakingDetailByTicketIDInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetMatchmakingDetailByTicketIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
