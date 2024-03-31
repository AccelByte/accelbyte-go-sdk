// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

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

// QueryXrayTimelineByTicketIDReader is a Reader for the QueryXrayTimelineByTicketID structure.
type QueryXrayTimelineByTicketIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryXrayTimelineByTicketIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryXrayTimelineByTicketIDOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryXrayTimelineByTicketIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryXrayTimelineByTicketIDUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryXrayTimelineByTicketIDForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryXrayTimelineByTicketIDNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryXrayTimelineByTicketIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryXrayTimelineByTicketIDOK creates a QueryXrayTimelineByTicketIDOK with default headers values
func NewQueryXrayTimelineByTicketIDOK() *QueryXrayTimelineByTicketIDOK {
	return &QueryXrayTimelineByTicketIDOK{}
}

/*QueryXrayTimelineByTicketIDOK handles this case with default header values.

  OK
*/
type QueryXrayTimelineByTicketIDOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse
}

func (o *QueryXrayTimelineByTicketIDOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdOK  %+v", 200, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDOK) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryXrayTimelineByTicketIDBadRequest creates a QueryXrayTimelineByTicketIDBadRequest with default headers values
func NewQueryXrayTimelineByTicketIDBadRequest() *QueryXrayTimelineByTicketIDBadRequest {
	return &QueryXrayTimelineByTicketIDBadRequest{}
}

/*QueryXrayTimelineByTicketIDBadRequest handles this case with default header values.

  Bad Request
*/
type QueryXrayTimelineByTicketIDBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByTicketIDBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDBadRequest) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryXrayTimelineByTicketIDUnauthorized creates a QueryXrayTimelineByTicketIDUnauthorized with default headers values
func NewQueryXrayTimelineByTicketIDUnauthorized() *QueryXrayTimelineByTicketIDUnauthorized {
	return &QueryXrayTimelineByTicketIDUnauthorized{}
}

/*QueryXrayTimelineByTicketIDUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryXrayTimelineByTicketIDUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByTicketIDUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDUnauthorized) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryXrayTimelineByTicketIDForbidden creates a QueryXrayTimelineByTicketIDForbidden with default headers values
func NewQueryXrayTimelineByTicketIDForbidden() *QueryXrayTimelineByTicketIDForbidden {
	return &QueryXrayTimelineByTicketIDForbidden{}
}

/*QueryXrayTimelineByTicketIDForbidden handles this case with default header values.

  Forbidden
*/
type QueryXrayTimelineByTicketIDForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByTicketIDForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDForbidden) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryXrayTimelineByTicketIDNotFound creates a QueryXrayTimelineByTicketIDNotFound with default headers values
func NewQueryXrayTimelineByTicketIDNotFound() *QueryXrayTimelineByTicketIDNotFound {
	return &QueryXrayTimelineByTicketIDNotFound{}
}

/*QueryXrayTimelineByTicketIDNotFound handles this case with default header values.

  Not Found
*/
type QueryXrayTimelineByTicketIDNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByTicketIDNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDNotFound) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryXrayTimelineByTicketIDInternalServerError creates a QueryXrayTimelineByTicketIDInternalServerError with default headers values
func NewQueryXrayTimelineByTicketIDInternalServerError() *QueryXrayTimelineByTicketIDInternalServerError {
	return &QueryXrayTimelineByTicketIDInternalServerError{}
}

/*QueryXrayTimelineByTicketIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryXrayTimelineByTicketIDInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayTimelineByTicketIDInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}][%d] queryXrayTimelineByTicketIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryXrayTimelineByTicketIDInternalServerError) ToJSONString() string {
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

func (o *QueryXrayTimelineByTicketIDInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayTimelineByTicketIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
