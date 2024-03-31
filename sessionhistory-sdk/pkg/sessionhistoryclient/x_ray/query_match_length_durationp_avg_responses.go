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

// QueryMatchLengthDurationpAvgReader is a Reader for the QueryMatchLengthDurationpAvg structure.
type QueryMatchLengthDurationpAvgReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryMatchLengthDurationpAvgReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryMatchLengthDurationpAvgOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryMatchLengthDurationpAvgBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryMatchLengthDurationpAvgUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryMatchLengthDurationpAvgForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryMatchLengthDurationpAvgNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryMatchLengthDurationpAvgInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryMatchLengthDurationpAvgOK creates a QueryMatchLengthDurationpAvgOK with default headers values
func NewQueryMatchLengthDurationpAvgOK() *QueryMatchLengthDurationpAvgOK {
	return &QueryMatchLengthDurationpAvgOK{}
}

/*QueryMatchLengthDurationpAvgOK handles this case with default header values.

  OK
*/
type QueryMatchLengthDurationpAvgOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchLengthDurationQueryResponse
}

func (o *QueryMatchLengthDurationpAvgOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgOK  %+v", 200, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgOK) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchLengthDurationQueryResponse {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationpAvgBadRequest creates a QueryMatchLengthDurationpAvgBadRequest with default headers values
func NewQueryMatchLengthDurationpAvgBadRequest() *QueryMatchLengthDurationpAvgBadRequest {
	return &QueryMatchLengthDurationpAvgBadRequest{}
}

/*QueryMatchLengthDurationpAvgBadRequest handles this case with default header values.

  Bad Request
*/
type QueryMatchLengthDurationpAvgBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationpAvgBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgBadRequest) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationpAvgUnauthorized creates a QueryMatchLengthDurationpAvgUnauthorized with default headers values
func NewQueryMatchLengthDurationpAvgUnauthorized() *QueryMatchLengthDurationpAvgUnauthorized {
	return &QueryMatchLengthDurationpAvgUnauthorized{}
}

/*QueryMatchLengthDurationpAvgUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryMatchLengthDurationpAvgUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationpAvgUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgUnauthorized) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationpAvgForbidden creates a QueryMatchLengthDurationpAvgForbidden with default headers values
func NewQueryMatchLengthDurationpAvgForbidden() *QueryMatchLengthDurationpAvgForbidden {
	return &QueryMatchLengthDurationpAvgForbidden{}
}

/*QueryMatchLengthDurationpAvgForbidden handles this case with default header values.

  Forbidden
*/
type QueryMatchLengthDurationpAvgForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationpAvgForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgForbidden) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationpAvgNotFound creates a QueryMatchLengthDurationpAvgNotFound with default headers values
func NewQueryMatchLengthDurationpAvgNotFound() *QueryMatchLengthDurationpAvgNotFound {
	return &QueryMatchLengthDurationpAvgNotFound{}
}

/*QueryMatchLengthDurationpAvgNotFound handles this case with default header values.

  Not Found
*/
type QueryMatchLengthDurationpAvgNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationpAvgNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgNotFound) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryMatchLengthDurationpAvgInternalServerError creates a QueryMatchLengthDurationpAvgInternalServerError with default headers values
func NewQueryMatchLengthDurationpAvgInternalServerError() *QueryMatchLengthDurationpAvgInternalServerError {
	return &QueryMatchLengthDurationpAvgInternalServerError{}
}

/*QueryMatchLengthDurationpAvgInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryMatchLengthDurationpAvgInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryMatchLengthDurationpAvgInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg][%d] queryMatchLengthDurationpAvgInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryMatchLengthDurationpAvgInternalServerError) ToJSONString() string {
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

func (o *QueryMatchLengthDurationpAvgInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryMatchLengthDurationpAvgInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
