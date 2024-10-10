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

// UpdateMatchFunctionReader is a Reader for the UpdateMatchFunction structure.
type UpdateMatchFunctionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateMatchFunctionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateMatchFunctionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateMatchFunctionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewUpdateMatchFunctionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateMatchFunctionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdateMatchFunctionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateMatchFunctionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /match2/v1/namespaces/{namespace}/match-functions/{name} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateMatchFunctionOK creates a UpdateMatchFunctionOK with default headers values
func NewUpdateMatchFunctionOK() *UpdateMatchFunctionOK {
	return &UpdateMatchFunctionOK{}
}

/*UpdateMatchFunctionOK handles this case with default header values.

  OK
*/
type UpdateMatchFunctionOK struct {
	Payload *match2clientmodels.APIMatchFunctionConfig
}

func (o *UpdateMatchFunctionOK) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateMatchFunctionOK) ToJSONString() string {
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

func (o *UpdateMatchFunctionOK) GetPayload() *match2clientmodels.APIMatchFunctionConfig {
	return o.Payload
}

func (o *UpdateMatchFunctionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchFunctionConfig)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateMatchFunctionBadRequest creates a UpdateMatchFunctionBadRequest with default headers values
func NewUpdateMatchFunctionBadRequest() *UpdateMatchFunctionBadRequest {
	return &UpdateMatchFunctionBadRequest{}
}

/*UpdateMatchFunctionBadRequest handles this case with default header values.

  Bad Request
*/
type UpdateMatchFunctionBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchFunctionBadRequest) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateMatchFunctionBadRequest) ToJSONString() string {
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

func (o *UpdateMatchFunctionBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchFunctionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMatchFunctionUnauthorized creates a UpdateMatchFunctionUnauthorized with default headers values
func NewUpdateMatchFunctionUnauthorized() *UpdateMatchFunctionUnauthorized {
	return &UpdateMatchFunctionUnauthorized{}
}

/*UpdateMatchFunctionUnauthorized handles this case with default header values.

  Unauthorized
*/
type UpdateMatchFunctionUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchFunctionUnauthorized) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *UpdateMatchFunctionUnauthorized) ToJSONString() string {
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

func (o *UpdateMatchFunctionUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchFunctionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMatchFunctionNotFound creates a UpdateMatchFunctionNotFound with default headers values
func NewUpdateMatchFunctionNotFound() *UpdateMatchFunctionNotFound {
	return &UpdateMatchFunctionNotFound{}
}

/*UpdateMatchFunctionNotFound handles this case with default header values.

  Not Found
*/
type UpdateMatchFunctionNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchFunctionNotFound) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateMatchFunctionNotFound) ToJSONString() string {
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

func (o *UpdateMatchFunctionNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchFunctionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMatchFunctionConflict creates a UpdateMatchFunctionConflict with default headers values
func NewUpdateMatchFunctionConflict() *UpdateMatchFunctionConflict {
	return &UpdateMatchFunctionConflict{}
}

/*UpdateMatchFunctionConflict handles this case with default header values.

  Conflict
*/
type UpdateMatchFunctionConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchFunctionConflict) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdateMatchFunctionConflict) ToJSONString() string {
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

func (o *UpdateMatchFunctionConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchFunctionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdateMatchFunctionInternalServerError creates a UpdateMatchFunctionInternalServerError with default headers values
func NewUpdateMatchFunctionInternalServerError() *UpdateMatchFunctionInternalServerError {
	return &UpdateMatchFunctionInternalServerError{}
}

/*UpdateMatchFunctionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateMatchFunctionInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *UpdateMatchFunctionInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /match2/v1/namespaces/{namespace}/match-functions/{name}][%d] updateMatchFunctionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateMatchFunctionInternalServerError) ToJSONString() string {
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

func (o *UpdateMatchFunctionInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *UpdateMatchFunctionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
