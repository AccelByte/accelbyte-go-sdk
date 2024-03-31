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

// QueryAcquiringDSWaitTimeAvgReader is a Reader for the QueryAcquiringDSWaitTimeAvg structure.
type QueryAcquiringDSWaitTimeAvgReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryAcquiringDSWaitTimeAvgReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryAcquiringDSWaitTimeAvgOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryAcquiringDSWaitTimeAvgBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryAcquiringDSWaitTimeAvgUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryAcquiringDSWaitTimeAvgForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryAcquiringDSWaitTimeAvgNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryAcquiringDSWaitTimeAvgInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryAcquiringDSWaitTimeAvgOK creates a QueryAcquiringDSWaitTimeAvgOK with default headers values
func NewQueryAcquiringDSWaitTimeAvgOK() *QueryAcquiringDSWaitTimeAvgOK {
	return &QueryAcquiringDSWaitTimeAvgOK{}
}

/*QueryAcquiringDSWaitTimeAvgOK handles this case with default header values.

  OK
*/
type QueryAcquiringDSWaitTimeAvgOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayAcquiringDsWaitTimeQueryResponse
}

func (o *QueryAcquiringDSWaitTimeAvgOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgOK  %+v", 200, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgOK) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayAcquiringDsWaitTimeQueryResponse {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayAcquiringDsWaitTimeQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryAcquiringDSWaitTimeAvgBadRequest creates a QueryAcquiringDSWaitTimeAvgBadRequest with default headers values
func NewQueryAcquiringDSWaitTimeAvgBadRequest() *QueryAcquiringDSWaitTimeAvgBadRequest {
	return &QueryAcquiringDSWaitTimeAvgBadRequest{}
}

/*QueryAcquiringDSWaitTimeAvgBadRequest handles this case with default header values.

  Bad Request
*/
type QueryAcquiringDSWaitTimeAvgBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSWaitTimeAvgBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgBadRequest) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryAcquiringDSWaitTimeAvgUnauthorized creates a QueryAcquiringDSWaitTimeAvgUnauthorized with default headers values
func NewQueryAcquiringDSWaitTimeAvgUnauthorized() *QueryAcquiringDSWaitTimeAvgUnauthorized {
	return &QueryAcquiringDSWaitTimeAvgUnauthorized{}
}

/*QueryAcquiringDSWaitTimeAvgUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryAcquiringDSWaitTimeAvgUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSWaitTimeAvgUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgUnauthorized) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryAcquiringDSWaitTimeAvgForbidden creates a QueryAcquiringDSWaitTimeAvgForbidden with default headers values
func NewQueryAcquiringDSWaitTimeAvgForbidden() *QueryAcquiringDSWaitTimeAvgForbidden {
	return &QueryAcquiringDSWaitTimeAvgForbidden{}
}

/*QueryAcquiringDSWaitTimeAvgForbidden handles this case with default header values.

  Forbidden
*/
type QueryAcquiringDSWaitTimeAvgForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSWaitTimeAvgForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgForbidden) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryAcquiringDSWaitTimeAvgNotFound creates a QueryAcquiringDSWaitTimeAvgNotFound with default headers values
func NewQueryAcquiringDSWaitTimeAvgNotFound() *QueryAcquiringDSWaitTimeAvgNotFound {
	return &QueryAcquiringDSWaitTimeAvgNotFound{}
}

/*QueryAcquiringDSWaitTimeAvgNotFound handles this case with default header values.

  Not Found
*/
type QueryAcquiringDSWaitTimeAvgNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSWaitTimeAvgNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgNotFound) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewQueryAcquiringDSWaitTimeAvgInternalServerError creates a QueryAcquiringDSWaitTimeAvgInternalServerError with default headers values
func NewQueryAcquiringDSWaitTimeAvgInternalServerError() *QueryAcquiringDSWaitTimeAvgInternalServerError {
	return &QueryAcquiringDSWaitTimeAvgInternalServerError{}
}

/*QueryAcquiringDSWaitTimeAvgInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryAcquiringDSWaitTimeAvgInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryAcquiringDSWaitTimeAvgInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg][%d] queryAcquiringDSWaitTimeAvgInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryAcquiringDSWaitTimeAvgInternalServerError) ToJSONString() string {
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

func (o *QueryAcquiringDSWaitTimeAvgInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryAcquiringDSWaitTimeAvgInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
