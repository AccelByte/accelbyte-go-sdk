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

// QueryTotalMatchmakingCanceledReader is a Reader for the QueryTotalMatchmakingCanceled structure.
type QueryTotalMatchmakingCanceledReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalMatchmakingCanceledReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalMatchmakingCanceledOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalMatchmakingCanceledBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalMatchmakingCanceledUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalMatchmakingCanceledForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalMatchmakingCanceledNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalMatchmakingCanceledInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalMatchmakingCanceledOK creates a QueryTotalMatchmakingCanceledOK with default headers values
func NewQueryTotalMatchmakingCanceledOK() *QueryTotalMatchmakingCanceledOK {
	return &QueryTotalMatchmakingCanceledOK{}
}

/*QueryTotalMatchmakingCanceledOK handles this case with default header values.

  OK
*/
type QueryTotalMatchmakingCanceledOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayCanceledMatchmakingTicketQueryResponse
}

func (o *QueryTotalMatchmakingCanceledOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledOK) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayCanceledMatchmakingTicketQueryResponse {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayCanceledMatchmakingTicketQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalMatchmakingCanceledBadRequest creates a QueryTotalMatchmakingCanceledBadRequest with default headers values
func NewQueryTotalMatchmakingCanceledBadRequest() *QueryTotalMatchmakingCanceledBadRequest {
	return &QueryTotalMatchmakingCanceledBadRequest{}
}

/*QueryTotalMatchmakingCanceledBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalMatchmakingCanceledBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCanceledBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledBadRequest) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingCanceledUnauthorized creates a QueryTotalMatchmakingCanceledUnauthorized with default headers values
func NewQueryTotalMatchmakingCanceledUnauthorized() *QueryTotalMatchmakingCanceledUnauthorized {
	return &QueryTotalMatchmakingCanceledUnauthorized{}
}

/*QueryTotalMatchmakingCanceledUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalMatchmakingCanceledUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCanceledUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledUnauthorized) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingCanceledForbidden creates a QueryTotalMatchmakingCanceledForbidden with default headers values
func NewQueryTotalMatchmakingCanceledForbidden() *QueryTotalMatchmakingCanceledForbidden {
	return &QueryTotalMatchmakingCanceledForbidden{}
}

/*QueryTotalMatchmakingCanceledForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalMatchmakingCanceledForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCanceledForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledForbidden) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingCanceledNotFound creates a QueryTotalMatchmakingCanceledNotFound with default headers values
func NewQueryTotalMatchmakingCanceledNotFound() *QueryTotalMatchmakingCanceledNotFound {
	return &QueryTotalMatchmakingCanceledNotFound{}
}

/*QueryTotalMatchmakingCanceledNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalMatchmakingCanceledNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCanceledNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledNotFound) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingCanceledInternalServerError creates a QueryTotalMatchmakingCanceledInternalServerError with default headers values
func NewQueryTotalMatchmakingCanceledInternalServerError() *QueryTotalMatchmakingCanceledInternalServerError {
	return &QueryTotalMatchmakingCanceledInternalServerError{}
}

/*QueryTotalMatchmakingCanceledInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalMatchmakingCanceledInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingCanceledInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled][%d] queryTotalMatchmakingCanceledInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalMatchmakingCanceledInternalServerError) ToJSONString() string {
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

func (o *QueryTotalMatchmakingCanceledInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingCanceledInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
