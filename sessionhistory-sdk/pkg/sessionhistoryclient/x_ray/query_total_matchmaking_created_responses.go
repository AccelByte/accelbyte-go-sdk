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

// QueryTotalMatchmakingCreatedReader is a Reader for the QueryTotalMatchmakingCreated structure.
type QueryTotalMatchmakingCreatedReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalMatchmakingCreatedReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalMatchmakingCreatedOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalMatchmakingCreatedBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalMatchmakingCreatedUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalMatchmakingCreatedForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalMatchmakingCreatedNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalMatchmakingCreatedInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalMatchmakingCreatedOK creates a QueryTotalMatchmakingCreatedOK with default headers values
func NewQueryTotalMatchmakingCreatedOK() *QueryTotalMatchmakingCreatedOK {
	return &QueryTotalMatchmakingCreatedOK{}
}

/*QueryTotalMatchmakingCreatedOK handles this case with default header values.

  OK
*/
type QueryTotalMatchmakingCreatedOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayCreatedMatchmakingTicketQueryResponse
}

func (o *QueryTotalMatchmakingCreatedOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedOK) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayCreatedMatchmakingTicketQueryResponse {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayCreatedMatchmakingTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalMatchmakingCreatedBadRequest creates a QueryTotalMatchmakingCreatedBadRequest with default headers values
func NewQueryTotalMatchmakingCreatedBadRequest() *QueryTotalMatchmakingCreatedBadRequest {
	return &QueryTotalMatchmakingCreatedBadRequest{}
}

/*QueryTotalMatchmakingCreatedBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalMatchmakingCreatedBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCreatedBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedBadRequest) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingCreatedUnauthorized creates a QueryTotalMatchmakingCreatedUnauthorized with default headers values
func NewQueryTotalMatchmakingCreatedUnauthorized() *QueryTotalMatchmakingCreatedUnauthorized {
	return &QueryTotalMatchmakingCreatedUnauthorized{}
}

/*QueryTotalMatchmakingCreatedUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalMatchmakingCreatedUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCreatedUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedUnauthorized) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingCreatedForbidden creates a QueryTotalMatchmakingCreatedForbidden with default headers values
func NewQueryTotalMatchmakingCreatedForbidden() *QueryTotalMatchmakingCreatedForbidden {
	return &QueryTotalMatchmakingCreatedForbidden{}
}

/*QueryTotalMatchmakingCreatedForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalMatchmakingCreatedForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCreatedForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedForbidden) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingCreatedNotFound creates a QueryTotalMatchmakingCreatedNotFound with default headers values
func NewQueryTotalMatchmakingCreatedNotFound() *QueryTotalMatchmakingCreatedNotFound {
	return &QueryTotalMatchmakingCreatedNotFound{}
}

/*QueryTotalMatchmakingCreatedNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalMatchmakingCreatedNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCreatedNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedNotFound) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryTotalMatchmakingCreatedInternalServerError creates a QueryTotalMatchmakingCreatedInternalServerError with default headers values
func NewQueryTotalMatchmakingCreatedInternalServerError() *QueryTotalMatchmakingCreatedInternalServerError {
	return &QueryTotalMatchmakingCreatedInternalServerError{}
}

/*QueryTotalMatchmakingCreatedInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalMatchmakingCreatedInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCreatedInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created][%d] queryTotalMatchmakingCreatedInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCreatedInternalServerError) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCreatedInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCreatedInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
