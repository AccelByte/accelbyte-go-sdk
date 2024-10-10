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

// QueryXrayMatchPoolReader is a Reader for the QueryXrayMatchPool structure.
type QueryXrayMatchPoolReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryXrayMatchPoolReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryXrayMatchPoolOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryXrayMatchPoolBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryXrayMatchPoolUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryXrayMatchPoolForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryXrayMatchPoolNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryXrayMatchPoolInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryXrayMatchPoolOK creates a QueryXrayMatchPoolOK with default headers values
func NewQueryXrayMatchPoolOK() *QueryXrayMatchPoolOK {
	return &QueryXrayMatchPoolOK{}
}

/*QueryXrayMatchPoolOK handles this case with default header values.

  OK
*/
type QueryXrayMatchPoolOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchPoolQueryResponse
}

func (o *QueryXrayMatchPoolOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolOK  %+v", 200, o.ToJSONString())
}

func (o *QueryXrayMatchPoolOK) ToJSONString() string {
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

func (o *QueryXrayMatchPoolOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchPoolQueryResponse {
	return o.Payload
}

func (o *QueryXrayMatchPoolOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchPoolQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryXrayMatchPoolBadRequest creates a QueryXrayMatchPoolBadRequest with default headers values
func NewQueryXrayMatchPoolBadRequest() *QueryXrayMatchPoolBadRequest {
	return &QueryXrayMatchPoolBadRequest{}
}

/*QueryXrayMatchPoolBadRequest handles this case with default header values.

  Bad Request
*/
type QueryXrayMatchPoolBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchPoolBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryXrayMatchPoolBadRequest) ToJSONString() string {
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

func (o *QueryXrayMatchPoolBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchPoolBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchPoolUnauthorized creates a QueryXrayMatchPoolUnauthorized with default headers values
func NewQueryXrayMatchPoolUnauthorized() *QueryXrayMatchPoolUnauthorized {
	return &QueryXrayMatchPoolUnauthorized{}
}

/*QueryXrayMatchPoolUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryXrayMatchPoolUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchPoolUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryXrayMatchPoolUnauthorized) ToJSONString() string {
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

func (o *QueryXrayMatchPoolUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchPoolUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchPoolForbidden creates a QueryXrayMatchPoolForbidden with default headers values
func NewQueryXrayMatchPoolForbidden() *QueryXrayMatchPoolForbidden {
	return &QueryXrayMatchPoolForbidden{}
}

/*QueryXrayMatchPoolForbidden handles this case with default header values.

  Forbidden
*/
type QueryXrayMatchPoolForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchPoolForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryXrayMatchPoolForbidden) ToJSONString() string {
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

func (o *QueryXrayMatchPoolForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchPoolForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchPoolNotFound creates a QueryXrayMatchPoolNotFound with default headers values
func NewQueryXrayMatchPoolNotFound() *QueryXrayMatchPoolNotFound {
	return &QueryXrayMatchPoolNotFound{}
}

/*QueryXrayMatchPoolNotFound handles this case with default header values.

  Not Found
*/
type QueryXrayMatchPoolNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchPoolNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryXrayMatchPoolNotFound) ToJSONString() string {
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

func (o *QueryXrayMatchPoolNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchPoolNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchPoolInternalServerError creates a QueryXrayMatchPoolInternalServerError with default headers values
func NewQueryXrayMatchPoolInternalServerError() *QueryXrayMatchPoolInternalServerError {
	return &QueryXrayMatchPoolInternalServerError{}
}

/*QueryXrayMatchPoolInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryXrayMatchPoolInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchPoolInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}][%d] queryXrayMatchPoolInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryXrayMatchPoolInternalServerError) ToJSONString() string {
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

func (o *QueryXrayMatchPoolInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchPoolInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
