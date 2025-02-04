// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_pools

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// PostMatchErrorMetricReader is a Reader for the PostMatchErrorMetric structure.
type PostMatchErrorMetricReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PostMatchErrorMetricReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPostMatchErrorMetricNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPostMatchErrorMetricBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPostMatchErrorMetricUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPostMatchErrorMetricForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPostMatchErrorMetricNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPostMatchErrorMetricInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPostMatchErrorMetricNoContent creates a PostMatchErrorMetricNoContent with default headers values
func NewPostMatchErrorMetricNoContent() *PostMatchErrorMetricNoContent {
	return &PostMatchErrorMetricNoContent{}
}

/*PostMatchErrorMetricNoContent handles this case with default header values.

  No Content
*/
type PostMatchErrorMetricNoContent struct {
}

func (o *PostMatchErrorMetricNoContent) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricNoContent ", 204)
}

func (o *PostMatchErrorMetricNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPostMatchErrorMetricBadRequest creates a PostMatchErrorMetricBadRequest with default headers values
func NewPostMatchErrorMetricBadRequest() *PostMatchErrorMetricBadRequest {
	return &PostMatchErrorMetricBadRequest{}
}

/*PostMatchErrorMetricBadRequest handles this case with default header values.

  Bad Request
*/
type PostMatchErrorMetricBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PostMatchErrorMetricBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PostMatchErrorMetricBadRequest) ToJSONString() string {
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

func (o *PostMatchErrorMetricBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PostMatchErrorMetricBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostMatchErrorMetricUnauthorized creates a PostMatchErrorMetricUnauthorized with default headers values
func NewPostMatchErrorMetricUnauthorized() *PostMatchErrorMetricUnauthorized {
	return &PostMatchErrorMetricUnauthorized{}
}

/*PostMatchErrorMetricUnauthorized handles this case with default header values.

  Unauthorized
*/
type PostMatchErrorMetricUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PostMatchErrorMetricUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PostMatchErrorMetricUnauthorized) ToJSONString() string {
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

func (o *PostMatchErrorMetricUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PostMatchErrorMetricUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostMatchErrorMetricForbidden creates a PostMatchErrorMetricForbidden with default headers values
func NewPostMatchErrorMetricForbidden() *PostMatchErrorMetricForbidden {
	return &PostMatchErrorMetricForbidden{}
}

/*PostMatchErrorMetricForbidden handles this case with default header values.

  Forbidden
*/
type PostMatchErrorMetricForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PostMatchErrorMetricForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricForbidden  %+v", 403, o.ToJSONString())
}

func (o *PostMatchErrorMetricForbidden) ToJSONString() string {
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

func (o *PostMatchErrorMetricForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PostMatchErrorMetricForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostMatchErrorMetricNotFound creates a PostMatchErrorMetricNotFound with default headers values
func NewPostMatchErrorMetricNotFound() *PostMatchErrorMetricNotFound {
	return &PostMatchErrorMetricNotFound{}
}

/*PostMatchErrorMetricNotFound handles this case with default header values.

  Not Found
*/
type PostMatchErrorMetricNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PostMatchErrorMetricNotFound) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricNotFound  %+v", 404, o.ToJSONString())
}

func (o *PostMatchErrorMetricNotFound) ToJSONString() string {
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

func (o *PostMatchErrorMetricNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PostMatchErrorMetricNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostMatchErrorMetricInternalServerError creates a PostMatchErrorMetricInternalServerError with default headers values
func NewPostMatchErrorMetricInternalServerError() *PostMatchErrorMetricInternalServerError {
	return &PostMatchErrorMetricInternalServerError{}
}

/*PostMatchErrorMetricInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PostMatchErrorMetricInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *PostMatchErrorMetricInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/external-failure][%d] postMatchErrorMetricInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PostMatchErrorMetricInternalServerError) ToJSONString() string {
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

func (o *PostMatchErrorMetricInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *PostMatchErrorMetricInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
