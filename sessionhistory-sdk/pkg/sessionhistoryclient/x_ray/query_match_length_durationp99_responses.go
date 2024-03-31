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

// QueryMatchLengthDurationp99Reader is a Reader for the QueryMatchLengthDurationp99 structure.
type QueryMatchLengthDurationp99Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryMatchLengthDurationp99Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryMatchLengthDurationp99OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryMatchLengthDurationp99BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryMatchLengthDurationp99Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryMatchLengthDurationp99Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryMatchLengthDurationp99NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryMatchLengthDurationp99InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99 returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryMatchLengthDurationp99OK creates a QueryMatchLengthDurationp99OK with default headers values
func NewQueryMatchLengthDurationp99OK() *QueryMatchLengthDurationp99OK {
	return &QueryMatchLengthDurationp99OK{}
}

/*QueryMatchLengthDurationp99OK handles this case with default header values.

  OK
*/
type QueryMatchLengthDurationp99OK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchLengthDurationQueryResponse
}

func (o *QueryMatchLengthDurationp99OK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99OK  %+v", 200, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99OK) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99OK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchLengthDurationQueryResponse {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchLengthDurationQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryMatchLengthDurationp99BadRequest creates a QueryMatchLengthDurationp99BadRequest with default headers values
func NewQueryMatchLengthDurationp99BadRequest() *QueryMatchLengthDurationp99BadRequest {
	return &QueryMatchLengthDurationp99BadRequest{}
}

/*QueryMatchLengthDurationp99BadRequest handles this case with default header values.

  Bad Request
*/
type QueryMatchLengthDurationp99BadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationp99BadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99BadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99BadRequest) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99BadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationp99Unauthorized creates a QueryMatchLengthDurationp99Unauthorized with default headers values
func NewQueryMatchLengthDurationp99Unauthorized() *QueryMatchLengthDurationp99Unauthorized {
	return &QueryMatchLengthDurationp99Unauthorized{}
}

/*QueryMatchLengthDurationp99Unauthorized handles this case with default header values.

  Unauthorized
*/
type QueryMatchLengthDurationp99Unauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationp99Unauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99Unauthorized) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99Unauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationp99Forbidden creates a QueryMatchLengthDurationp99Forbidden with default headers values
func NewQueryMatchLengthDurationp99Forbidden() *QueryMatchLengthDurationp99Forbidden {
	return &QueryMatchLengthDurationp99Forbidden{}
}

/*QueryMatchLengthDurationp99Forbidden handles this case with default header values.

  Forbidden
*/
type QueryMatchLengthDurationp99Forbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationp99Forbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99Forbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99Forbidden) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99Forbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationp99NotFound creates a QueryMatchLengthDurationp99NotFound with default headers values
func NewQueryMatchLengthDurationp99NotFound() *QueryMatchLengthDurationp99NotFound {
	return &QueryMatchLengthDurationp99NotFound{}
}

/*QueryMatchLengthDurationp99NotFound handles this case with default header values.

  Not Found
*/
type QueryMatchLengthDurationp99NotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationp99NotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99NotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99NotFound) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99NotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationp99InternalServerError creates a QueryMatchLengthDurationp99InternalServerError with default headers values
func NewQueryMatchLengthDurationp99InternalServerError() *QueryMatchLengthDurationp99InternalServerError {
	return &QueryMatchLengthDurationp99InternalServerError{}
}

/*QueryMatchLengthDurationp99InternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryMatchLengthDurationp99InternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationp99InternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99][%d] queryMatchLengthDurationp99InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryMatchLengthDurationp99InternalServerError) ToJSONString() string {
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

func (o *QueryMatchLengthDurationp99InternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationp99InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
