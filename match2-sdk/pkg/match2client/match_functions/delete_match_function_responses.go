// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_functions

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

// DeleteMatchFunctionReader is a Reader for the DeleteMatchFunction structure.
type DeleteMatchFunctionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteMatchFunctionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteMatchFunctionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteMatchFunctionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteMatchFunctionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteMatchFunctionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteMatchFunctionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /match2/v1/namespaces/{namespace}/match-functions/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteMatchFunctionOK creates a DeleteMatchFunctionOK with default headers values
func NewDeleteMatchFunctionOK() *DeleteMatchFunctionOK {
	return &DeleteMatchFunctionOK{}
}

/*DeleteMatchFunctionOK handles this case with default header values.

  OK
*/
type DeleteMatchFunctionOK struct {
}

func (o *DeleteMatchFunctionOK) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] deleteMatchFunctionOK ", 200)
}

func (o *DeleteMatchFunctionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteMatchFunctionUnauthorized creates a DeleteMatchFunctionUnauthorized with default headers values
func NewDeleteMatchFunctionUnauthorized() *DeleteMatchFunctionUnauthorized {
	return &DeleteMatchFunctionUnauthorized{}
}

/*DeleteMatchFunctionUnauthorized handles this case with default header values.

  Unauthorized
*/
type DeleteMatchFunctionUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchFunctionUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] deleteMatchFunctionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteMatchFunctionUnauthorized) ToJSONString() string {
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

func (o *DeleteMatchFunctionUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchFunctionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchFunctionForbidden creates a DeleteMatchFunctionForbidden with default headers values
func NewDeleteMatchFunctionForbidden() *DeleteMatchFunctionForbidden {
	return &DeleteMatchFunctionForbidden{}
}

/*DeleteMatchFunctionForbidden handles this case with default header values.

  Forbidden
*/
type DeleteMatchFunctionForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchFunctionForbidden) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] deleteMatchFunctionForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteMatchFunctionForbidden) ToJSONString() string {
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

func (o *DeleteMatchFunctionForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchFunctionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchFunctionNotFound creates a DeleteMatchFunctionNotFound with default headers values
func NewDeleteMatchFunctionNotFound() *DeleteMatchFunctionNotFound {
	return &DeleteMatchFunctionNotFound{}
}

/*DeleteMatchFunctionNotFound handles this case with default header values.

  Not Found
*/
type DeleteMatchFunctionNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchFunctionNotFound) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] deleteMatchFunctionNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteMatchFunctionNotFound) ToJSONString() string {
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

func (o *DeleteMatchFunctionNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchFunctionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteMatchFunctionInternalServerError creates a DeleteMatchFunctionInternalServerError with default headers values
func NewDeleteMatchFunctionInternalServerError() *DeleteMatchFunctionInternalServerError {
	return &DeleteMatchFunctionInternalServerError{}
}

/*DeleteMatchFunctionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteMatchFunctionInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *DeleteMatchFunctionInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] deleteMatchFunctionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteMatchFunctionInternalServerError) ToJSONString() string {
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

func (o *DeleteMatchFunctionInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteMatchFunctionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
