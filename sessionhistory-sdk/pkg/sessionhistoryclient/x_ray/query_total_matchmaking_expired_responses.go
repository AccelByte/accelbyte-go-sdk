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

// QueryTotalMatchmakingExpiredReader is a Reader for the QueryTotalMatchmakingExpired structure.
type QueryTotalMatchmakingExpiredReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalMatchmakingExpiredReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalMatchmakingExpiredOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalMatchmakingExpiredBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalMatchmakingExpiredUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalMatchmakingExpiredForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalMatchmakingExpiredNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalMatchmakingExpiredInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalMatchmakingExpiredOK creates a QueryTotalMatchmakingExpiredOK with default headers values
func NewQueryTotalMatchmakingExpiredOK() *QueryTotalMatchmakingExpiredOK {
	return &QueryTotalMatchmakingExpiredOK{}
}

/*QueryTotalMatchmakingExpiredOK handles this case with default header values.

  OK
*/
type QueryTotalMatchmakingExpiredOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayExpiredMatchmakingTicketQueryResponse
}

func (o *QueryTotalMatchmakingExpiredOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredOK) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayExpiredMatchmakingTicketQueryResponse {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayExpiredMatchmakingTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalMatchmakingExpiredBadRequest creates a QueryTotalMatchmakingExpiredBadRequest with default headers values
func NewQueryTotalMatchmakingExpiredBadRequest() *QueryTotalMatchmakingExpiredBadRequest {
	return &QueryTotalMatchmakingExpiredBadRequest{}
}

/*QueryTotalMatchmakingExpiredBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalMatchmakingExpiredBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingExpiredBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredBadRequest) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingExpiredUnauthorized creates a QueryTotalMatchmakingExpiredUnauthorized with default headers values
func NewQueryTotalMatchmakingExpiredUnauthorized() *QueryTotalMatchmakingExpiredUnauthorized {
	return &QueryTotalMatchmakingExpiredUnauthorized{}
}

/*QueryTotalMatchmakingExpiredUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalMatchmakingExpiredUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingExpiredUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredUnauthorized) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingExpiredForbidden creates a QueryTotalMatchmakingExpiredForbidden with default headers values
func NewQueryTotalMatchmakingExpiredForbidden() *QueryTotalMatchmakingExpiredForbidden {
	return &QueryTotalMatchmakingExpiredForbidden{}
}

/*QueryTotalMatchmakingExpiredForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalMatchmakingExpiredForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingExpiredForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredForbidden) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingExpiredNotFound creates a QueryTotalMatchmakingExpiredNotFound with default headers values
func NewQueryTotalMatchmakingExpiredNotFound() *QueryTotalMatchmakingExpiredNotFound {
	return &QueryTotalMatchmakingExpiredNotFound{}
}

/*QueryTotalMatchmakingExpiredNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalMatchmakingExpiredNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingExpiredNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredNotFound) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingExpiredInternalServerError creates a QueryTotalMatchmakingExpiredInternalServerError with default headers values
func NewQueryTotalMatchmakingExpiredInternalServerError() *QueryTotalMatchmakingExpiredInternalServerError {
	return &QueryTotalMatchmakingExpiredInternalServerError{}
}

/*QueryTotalMatchmakingExpiredInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalMatchmakingExpiredInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingExpiredInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired][%d] queryTotalMatchmakingExpiredInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalMatchmakingExpiredInternalServerError) ToJSONString() string {
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

func (o *QueryTotalMatchmakingExpiredInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingExpiredInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
