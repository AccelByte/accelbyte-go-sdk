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

// QueryMatchTicketHistoriesReader is a Reader for the QueryMatchTicketHistories structure.
type QueryMatchTicketHistoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryMatchTicketHistoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryMatchTicketHistoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryMatchTicketHistoriesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryMatchTicketHistoriesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryMatchTicketHistoriesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryMatchTicketHistoriesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryMatchTicketHistoriesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryMatchTicketHistoriesOK creates a QueryMatchTicketHistoriesOK with default headers values
func NewQueryMatchTicketHistoriesOK() *QueryMatchTicketHistoriesOK {
	return &QueryMatchTicketHistoriesOK{}
}

/*QueryMatchTicketHistoriesOK handles this case with default header values.

  OK
*/
type QueryMatchTicketHistoriesOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchTicketHistoryQueryResponse
}

func (o *QueryMatchTicketHistoriesOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesOK  %+v", 200, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesOK) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchTicketHistoryQueryResponse {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchTicketHistoryQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryMatchTicketHistoriesBadRequest creates a QueryMatchTicketHistoriesBadRequest with default headers values
func NewQueryMatchTicketHistoriesBadRequest() *QueryMatchTicketHistoriesBadRequest {
	return &QueryMatchTicketHistoriesBadRequest{}
}

/*QueryMatchTicketHistoriesBadRequest handles this case with default header values.

  Bad Request
*/
type QueryMatchTicketHistoriesBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchTicketHistoriesBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesBadRequest) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchTicketHistoriesUnauthorized creates a QueryMatchTicketHistoriesUnauthorized with default headers values
func NewQueryMatchTicketHistoriesUnauthorized() *QueryMatchTicketHistoriesUnauthorized {
	return &QueryMatchTicketHistoriesUnauthorized{}
}

/*QueryMatchTicketHistoriesUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryMatchTicketHistoriesUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchTicketHistoriesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesUnauthorized) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchTicketHistoriesForbidden creates a QueryMatchTicketHistoriesForbidden with default headers values
func NewQueryMatchTicketHistoriesForbidden() *QueryMatchTicketHistoriesForbidden {
	return &QueryMatchTicketHistoriesForbidden{}
}

/*QueryMatchTicketHistoriesForbidden handles this case with default header values.

  Forbidden
*/
type QueryMatchTicketHistoriesForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchTicketHistoriesForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesForbidden) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchTicketHistoriesNotFound creates a QueryMatchTicketHistoriesNotFound with default headers values
func NewQueryMatchTicketHistoriesNotFound() *QueryMatchTicketHistoriesNotFound {
	return &QueryMatchTicketHistoriesNotFound{}
}

/*QueryMatchTicketHistoriesNotFound handles this case with default header values.

  Not Found
*/
type QueryMatchTicketHistoriesNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchTicketHistoriesNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesNotFound) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchTicketHistoriesInternalServerError creates a QueryMatchTicketHistoriesInternalServerError with default headers values
func NewQueryMatchTicketHistoriesInternalServerError() *QueryMatchTicketHistoriesInternalServerError {
	return &QueryMatchTicketHistoriesInternalServerError{}
}

/*QueryMatchTicketHistoriesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryMatchTicketHistoriesInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchTicketHistoriesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories][%d] queryMatchTicketHistoriesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryMatchTicketHistoriesInternalServerError) ToJSONString() string {
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

func (o *QueryMatchTicketHistoriesInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchTicketHistoriesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
