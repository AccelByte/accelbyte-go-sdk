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

// QueryMatchHistoriesReader is a Reader for the QueryMatchHistories structure.
type QueryMatchHistoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryMatchHistoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryMatchHistoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryMatchHistoriesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryMatchHistoriesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryMatchHistoriesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryMatchHistoriesNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryMatchHistoriesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryMatchHistoriesOK creates a QueryMatchHistoriesOK with default headers values
func NewQueryMatchHistoriesOK() *QueryMatchHistoriesOK {
	return &QueryMatchHistoriesOK{}
}

/*QueryMatchHistoriesOK handles this case with default header values.

  OK
*/
type QueryMatchHistoriesOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchHistorQueryResponse
}

func (o *QueryMatchHistoriesOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesOK  %+v", 200, o.ToJSONString())
}

func (o *QueryMatchHistoriesOK) ToJSONString() string {
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

func (o *QueryMatchHistoriesOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchHistorQueryResponse {
	return o.Payload
}

func (o *QueryMatchHistoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchHistorQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryMatchHistoriesBadRequest creates a QueryMatchHistoriesBadRequest with default headers values
func NewQueryMatchHistoriesBadRequest() *QueryMatchHistoriesBadRequest {
	return &QueryMatchHistoriesBadRequest{}
}

/*QueryMatchHistoriesBadRequest handles this case with default header values.

  Bad Request
*/
type QueryMatchHistoriesBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchHistoriesBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryMatchHistoriesBadRequest) ToJSONString() string {
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

func (o *QueryMatchHistoriesBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchHistoriesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchHistoriesUnauthorized creates a QueryMatchHistoriesUnauthorized with default headers values
func NewQueryMatchHistoriesUnauthorized() *QueryMatchHistoriesUnauthorized {
	return &QueryMatchHistoriesUnauthorized{}
}

/*QueryMatchHistoriesUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryMatchHistoriesUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchHistoriesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryMatchHistoriesUnauthorized) ToJSONString() string {
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

func (o *QueryMatchHistoriesUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchHistoriesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchHistoriesForbidden creates a QueryMatchHistoriesForbidden with default headers values
func NewQueryMatchHistoriesForbidden() *QueryMatchHistoriesForbidden {
	return &QueryMatchHistoriesForbidden{}
}

/*QueryMatchHistoriesForbidden handles this case with default header values.

  Forbidden
*/
type QueryMatchHistoriesForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchHistoriesForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryMatchHistoriesForbidden) ToJSONString() string {
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

func (o *QueryMatchHistoriesForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchHistoriesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchHistoriesNotFound creates a QueryMatchHistoriesNotFound with default headers values
func NewQueryMatchHistoriesNotFound() *QueryMatchHistoriesNotFound {
	return &QueryMatchHistoriesNotFound{}
}

/*QueryMatchHistoriesNotFound handles this case with default header values.

  Not Found
*/
type QueryMatchHistoriesNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchHistoriesNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryMatchHistoriesNotFound) ToJSONString() string {
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

func (o *QueryMatchHistoriesNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchHistoriesNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchHistoriesInternalServerError creates a QueryMatchHistoriesInternalServerError with default headers values
func NewQueryMatchHistoriesInternalServerError() *QueryMatchHistoriesInternalServerError {
	return &QueryMatchHistoriesInternalServerError{}
}

/*QueryMatchHistoriesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryMatchHistoriesInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchHistoriesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories][%d] queryMatchHistoriesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryMatchHistoriesInternalServerError) ToJSONString() string {
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

func (o *QueryMatchHistoriesInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchHistoriesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
