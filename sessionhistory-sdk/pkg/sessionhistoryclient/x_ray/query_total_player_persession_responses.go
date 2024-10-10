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

// QueryTotalPlayerPersessionReader is a Reader for the QueryTotalPlayerPersession structure.
type QueryTotalPlayerPersessionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTotalPlayerPersessionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTotalPlayerPersessionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTotalPlayerPersessionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryTotalPlayerPersessionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryTotalPlayerPersessionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTotalPlayerPersessionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryTotalPlayerPersessionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTotalPlayerPersessionOK creates a QueryTotalPlayerPersessionOK with default headers values
func NewQueryTotalPlayerPersessionOK() *QueryTotalPlayerPersessionOK {
	return &QueryTotalPlayerPersessionOK{}
}

/*QueryTotalPlayerPersessionOK handles this case with default header values.

  OK
*/
type QueryTotalPlayerPersessionOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayTotalPlayerPersessionAVGQueryResponse
}

func (o *QueryTotalPlayerPersessionOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionOK) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayTotalPlayerPersessionAVGQueryResponse {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayTotalPlayerPersessionAVGQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTotalPlayerPersessionBadRequest creates a QueryTotalPlayerPersessionBadRequest with default headers values
func NewQueryTotalPlayerPersessionBadRequest() *QueryTotalPlayerPersessionBadRequest {
	return &QueryTotalPlayerPersessionBadRequest{}
}

/*QueryTotalPlayerPersessionBadRequest handles this case with default header values.

  Bad Request
*/
type QueryTotalPlayerPersessionBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalPlayerPersessionBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionBadRequest) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalPlayerPersessionUnauthorized creates a QueryTotalPlayerPersessionUnauthorized with default headers values
func NewQueryTotalPlayerPersessionUnauthorized() *QueryTotalPlayerPersessionUnauthorized {
	return &QueryTotalPlayerPersessionUnauthorized{}
}

/*QueryTotalPlayerPersessionUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryTotalPlayerPersessionUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalPlayerPersessionUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionUnauthorized) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalPlayerPersessionForbidden creates a QueryTotalPlayerPersessionForbidden with default headers values
func NewQueryTotalPlayerPersessionForbidden() *QueryTotalPlayerPersessionForbidden {
	return &QueryTotalPlayerPersessionForbidden{}
}

/*QueryTotalPlayerPersessionForbidden handles this case with default header values.

  Forbidden
*/
type QueryTotalPlayerPersessionForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalPlayerPersessionForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionForbidden) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalPlayerPersessionNotFound creates a QueryTotalPlayerPersessionNotFound with default headers values
func NewQueryTotalPlayerPersessionNotFound() *QueryTotalPlayerPersessionNotFound {
	return &QueryTotalPlayerPersessionNotFound{}
}

/*QueryTotalPlayerPersessionNotFound handles this case with default header values.

  Not Found
*/
type QueryTotalPlayerPersessionNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalPlayerPersessionNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionNotFound) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryTotalPlayerPersessionInternalServerError creates a QueryTotalPlayerPersessionInternalServerError with default headers values
func NewQueryTotalPlayerPersessionInternalServerError() *QueryTotalPlayerPersessionInternalServerError {
	return &QueryTotalPlayerPersessionInternalServerError{}
}

/*QueryTotalPlayerPersessionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryTotalPlayerPersessionInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryTotalPlayerPersessionInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg][%d] queryTotalPlayerPersessionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryTotalPlayerPersessionInternalServerError) ToJSONString() string {
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

func (o *QueryTotalPlayerPersessionInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryTotalPlayerPersessionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
