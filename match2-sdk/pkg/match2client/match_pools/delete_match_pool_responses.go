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

// DeleteMatchPoolReader is a Reader for the DeleteMatchPool structure.
type DeleteMatchPoolReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMatchPoolReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteMatchPoolNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMatchPoolUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMatchPoolForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMatchPoolNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMatchPoolInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMatchPoolNoContent creates a DeleteMatchPoolNoContent with default headers values
func NewDeleteMatchPoolNoContent() *DeleteMatchPoolNoContent {
	return &DeleteMatchPoolNoContent{}
}

/*DeleteMatchPoolNoContent handles this case with default header values.

  No Content
*/
type DeleteMatchPoolNoContent struct {
}

func (o *DeleteMatchPoolNoContent) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] deleteMatchPoolNoContent ", 204)
}

func (o *DeleteMatchPoolNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMatchPoolUnauthorized creates a DeleteMatchPoolUnauthorized with default headers values
func NewDeleteMatchPoolUnauthorized() *DeleteMatchPoolUnauthorized {
	return &DeleteMatchPoolUnauthorized{}
}

/*DeleteMatchPoolUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteMatchPoolUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchPoolUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] deleteMatchPoolUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMatchPoolUnauthorized) ToJSONString() string {
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

func (o *DeleteMatchPoolUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchPoolUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchPoolForbidden creates a DeleteMatchPoolForbidden with default headers values
func NewDeleteMatchPoolForbidden() *DeleteMatchPoolForbidden {
	return &DeleteMatchPoolForbidden{}
}

/*DeleteMatchPoolForbidden handles this case with default header values.

  Forbidden
*/
type DeleteMatchPoolForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchPoolForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] deleteMatchPoolForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMatchPoolForbidden) ToJSONString() string {
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

func (o *DeleteMatchPoolForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchPoolForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchPoolNotFound creates a DeleteMatchPoolNotFound with default headers values
func NewDeleteMatchPoolNotFound() *DeleteMatchPoolNotFound {
	return &DeleteMatchPoolNotFound{}
}

/*DeleteMatchPoolNotFound handles this case with default header values.

  Not Found
*/
type DeleteMatchPoolNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchPoolNotFound) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] deleteMatchPoolNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMatchPoolNotFound) ToJSONString() string {
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

func (o *DeleteMatchPoolNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchPoolNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchPoolInternalServerError creates a DeleteMatchPoolInternalServerError with default headers values
func NewDeleteMatchPoolInternalServerError() *DeleteMatchPoolInternalServerError {
	return &DeleteMatchPoolInternalServerError{}
}

/*DeleteMatchPoolInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMatchPoolInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchPoolInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-pools/{pool}][%d] deleteMatchPoolInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMatchPoolInternalServerError) ToJSONString() string {
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

func (o *DeleteMatchPoolInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchPoolInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
