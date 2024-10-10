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

// QueryXrayMatchReader is a Reader for the QueryXrayMatch structure.
type QueryXrayMatchReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryXrayMatchReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryXrayMatchOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryXrayMatchBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryXrayMatchUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryXrayMatchForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryXrayMatchNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryXrayMatchInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryXrayMatchOK creates a QueryXrayMatchOK with default headers values
func NewQueryXrayMatchOK() *QueryXrayMatchOK {
	return &QueryXrayMatchOK{}
}

/*QueryXrayMatchOK handles this case with default header values.

  OK
*/
type QueryXrayMatchOK struct {
	Payload *sessionhistoryclientmodels.ApimodelsXRayMatchesQueryResponse
}

func (o *QueryXrayMatchOK) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchOK  %+v", 200, o.ToJSONString())
}

func (o *QueryXrayMatchOK) ToJSONString() string {
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

func (o *QueryXrayMatchOK) GetPayload() *sessionhistoryclientmodels.ApimodelsXRayMatchesQueryResponse {
	return o.Payload
}

func (o *QueryXrayMatchOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionhistoryclientmodels.ApimodelsXRayMatchesQueryResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryXrayMatchBadRequest creates a QueryXrayMatchBadRequest with default headers values
func NewQueryXrayMatchBadRequest() *QueryXrayMatchBadRequest {
	return &QueryXrayMatchBadRequest{}
}

/*QueryXrayMatchBadRequest handles this case with default header values.

  Bad Request
*/
type QueryXrayMatchBadRequest struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchBadRequest) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryXrayMatchBadRequest) ToJSONString() string {
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

func (o *QueryXrayMatchBadRequest) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchUnauthorized creates a QueryXrayMatchUnauthorized with default headers values
func NewQueryXrayMatchUnauthorized() *QueryXrayMatchUnauthorized {
	return &QueryXrayMatchUnauthorized{}
}

/*QueryXrayMatchUnauthorized handles this case with default header values.

  Unauthorized
*/
type QueryXrayMatchUnauthorized struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchUnauthorized) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryXrayMatchUnauthorized) ToJSONString() string {
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

func (o *QueryXrayMatchUnauthorized) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchForbidden creates a QueryXrayMatchForbidden with default headers values
func NewQueryXrayMatchForbidden() *QueryXrayMatchForbidden {
	return &QueryXrayMatchForbidden{}
}

/*QueryXrayMatchForbidden handles this case with default header values.

  Forbidden
*/
type QueryXrayMatchForbidden struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchForbidden) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryXrayMatchForbidden) ToJSONString() string {
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

func (o *QueryXrayMatchForbidden) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchNotFound creates a QueryXrayMatchNotFound with default headers values
func NewQueryXrayMatchNotFound() *QueryXrayMatchNotFound {
	return &QueryXrayMatchNotFound{}
}

/*QueryXrayMatchNotFound handles this case with default header values.

  Not Found
*/
type QueryXrayMatchNotFound struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchNotFound) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryXrayMatchNotFound) ToJSONString() string {
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

func (o *QueryXrayMatchNotFound) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewQueryXrayMatchInternalServerError creates a QueryXrayMatchInternalServerError with default headers values
func NewQueryXrayMatchInternalServerError() *QueryXrayMatchInternalServerError {
	return &QueryXrayMatchInternalServerError{}
}

/*QueryXrayMatchInternalServerError handles this case with default header values.

  Internal Server Error
*/
type QueryXrayMatchInternalServerError struct {
	Payload *sessionhistoryclientmodels.ResponseError
}

func (o *QueryXrayMatchInternalServerError) Error() string {
	return fmt.Sprintf("[GET /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets][%d] queryXrayMatchInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryXrayMatchInternalServerError) ToJSONString() string {
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

func (o *QueryXrayMatchInternalServerError) GetPayload() *sessionhistoryclientmodels.ResponseError {
	return o.Payload
}

func (o *QueryXrayMatchInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
