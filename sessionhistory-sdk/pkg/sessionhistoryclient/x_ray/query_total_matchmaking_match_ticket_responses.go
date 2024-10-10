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

// QueryTotalMatchmakingMatchTicketReader is a Reader for the QueryTotalMatchmakingMatchTicket structure.
type QueryTotalMatchmakingMatchTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalMatchmakingMatchTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalMatchmakingMatchTicketOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalMatchmakingMatchTicketBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalMatchmakingMatchTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalMatchmakingMatchTicketForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalMatchmakingMatchTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalMatchmakingMatchTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalMatchmakingMatchTicketOK creates a QueryTotalMatchmakingMatchTicketOK with default headers values
func NewQueryTotalMatchmakingMatchTicketOK() *QueryTotalMatchmakingMatchTicketOK {
	return &QueryTotalMatchmakingMatchTicketOK{}
}

/*QueryTotalMatchmakingMatchTicketOK handles this case with default header values.

  OK
*/
type QueryTotalMatchmakingMatchTicketOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingTicketQueryResponse
}

func (o *QueryTotalMatchmakingMatchTicketOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketOK) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingTicketQueryResponse {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalMatchmakingMatchTicketBadRequest creates a QueryTotalMatchmakingMatchTicketBadRequest with default headers values
func NewQueryTotalMatchmakingMatchTicketBadRequest() *QueryTotalMatchmakingMatchTicketBadRequest {
	return &QueryTotalMatchmakingMatchTicketBadRequest{}
}

/*QueryTotalMatchmakingMatchTicketBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalMatchmakingMatchTicketBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchTicketBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketBadRequest) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchTicketUnauthorized creates a QueryTotalMatchmakingMatchTicketUnauthorized with default headers values
func NewQueryTotalMatchmakingMatchTicketUnauthorized() *QueryTotalMatchmakingMatchTicketUnauthorized {
	return &QueryTotalMatchmakingMatchTicketUnauthorized{}
}

/*QueryTotalMatchmakingMatchTicketUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalMatchmakingMatchTicketUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchTicketUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketUnauthorized) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchTicketForbidden creates a QueryTotalMatchmakingMatchTicketForbidden with default headers values
func NewQueryTotalMatchmakingMatchTicketForbidden() *QueryTotalMatchmakingMatchTicketForbidden {
	return &QueryTotalMatchmakingMatchTicketForbidden{}
}

/*QueryTotalMatchmakingMatchTicketForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalMatchmakingMatchTicketForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchTicketForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketForbidden) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchTicketNotFound creates a QueryTotalMatchmakingMatchTicketNotFound with default headers values
func NewQueryTotalMatchmakingMatchTicketNotFound() *QueryTotalMatchmakingMatchTicketNotFound {
	return &QueryTotalMatchmakingMatchTicketNotFound{}
}

/*QueryTotalMatchmakingMatchTicketNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalMatchmakingMatchTicketNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchTicketNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketNotFound) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchTicketInternalServerError creates a QueryTotalMatchmakingMatchTicketInternalServerError with default headers values
func NewQueryTotalMatchmakingMatchTicketInternalServerError() *QueryTotalMatchmakingMatchTicketInternalServerError {
	return &QueryTotalMatchmakingMatchTicketInternalServerError{}
}

/*QueryTotalMatchmakingMatchTicketInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalMatchmakingMatchTicketInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchTicketInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match][%d] queryTotalMatchmakingMatchTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchTicketInternalServerError) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchTicketInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
