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

// QueryTotalMatchmakingMatchReader is a Reader for the QueryTotalMatchmakingMatch structure.
type QueryTotalMatchmakingMatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalMatchmakingMatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalMatchmakingMatchOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalMatchmakingMatchBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalMatchmakingMatchUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalMatchmakingMatchForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalMatchmakingMatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalMatchmakingMatchInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalMatchmakingMatchOK creates a QueryTotalMatchmakingMatchOK with default headers values
func NewQueryTotalMatchmakingMatchOK() *QueryTotalMatchmakingMatchOK {
	return &QueryTotalMatchmakingMatchOK{}
}

/*QueryTotalMatchmakingMatchOK handles this case with default header values.

  OK
*/
type QueryTotalMatchmakingMatchOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingQueryResponse
}

func (o *QueryTotalMatchmakingMatchOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchOK) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingQueryResponse {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchMatchmakingQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalMatchmakingMatchBadRequest creates a QueryTotalMatchmakingMatchBadRequest with default headers values
func NewQueryTotalMatchmakingMatchBadRequest() *QueryTotalMatchmakingMatchBadRequest {
	return &QueryTotalMatchmakingMatchBadRequest{}
}

/*QueryTotalMatchmakingMatchBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalMatchmakingMatchBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchBadRequest) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchUnauthorized creates a QueryTotalMatchmakingMatchUnauthorized with default headers values
func NewQueryTotalMatchmakingMatchUnauthorized() *QueryTotalMatchmakingMatchUnauthorized {
	return &QueryTotalMatchmakingMatchUnauthorized{}
}

/*QueryTotalMatchmakingMatchUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalMatchmakingMatchUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchUnauthorized) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchForbidden creates a QueryTotalMatchmakingMatchForbidden with default headers values
func NewQueryTotalMatchmakingMatchForbidden() *QueryTotalMatchmakingMatchForbidden {
	return &QueryTotalMatchmakingMatchForbidden{}
}

/*QueryTotalMatchmakingMatchForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalMatchmakingMatchForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchForbidden) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchNotFound creates a QueryTotalMatchmakingMatchNotFound with default headers values
func NewQueryTotalMatchmakingMatchNotFound() *QueryTotalMatchmakingMatchNotFound {
	return &QueryTotalMatchmakingMatchNotFound{}
}

/*QueryTotalMatchmakingMatchNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalMatchmakingMatchNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchNotFound) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalMatchmakingMatchInternalServerError creates a QueryTotalMatchmakingMatchInternalServerError with default headers values
func NewQueryTotalMatchmakingMatchInternalServerError() *QueryTotalMatchmakingMatchInternalServerError {
	return &QueryTotalMatchmakingMatchInternalServerError{}
}

/*QueryTotalMatchmakingMatchInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalMatchmakingMatchInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalMatchmakingMatchInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match][%d] queryTotalMatchmakingMatchInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalMatchmakingMatchInternalServerError) ToJSONString() string {
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

func (o *QueryTotalMatchmakingMatchInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalMatchmakingMatchInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
