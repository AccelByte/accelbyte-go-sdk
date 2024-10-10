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

// CreateMatchFunctionReader is a Reader for the CreateMatchFunction structure.
type CreateMatchFunctionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateMatchFunctionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateMatchFunctionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateMatchFunctionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateMatchFunctionUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateMatchFunctionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateMatchFunctionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateMatchFunctionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/match-functions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateMatchFunctionCreated creates a CreateMatchFunctionCreated with default headers values
func NewCreateMatchFunctionCreated() *CreateMatchFunctionCreated {
	return &CreateMatchFunctionCreated{}
}

/*CreateMatchFunctionCreated handles this case with default header values.

  Created
*/
type CreateMatchFunctionCreated struct {
}

func (o *CreateMatchFunctionCreated) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionCreated ", 201)
}

func (o *CreateMatchFunctionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateMatchFunctionBadRequest creates a CreateMatchFunctionBadRequest with default headers values
func NewCreateMatchFunctionBadRequest() *CreateMatchFunctionBadRequest {
	return &CreateMatchFunctionBadRequest{}
}

/*CreateMatchFunctionBadRequest handles this case with default header values.

  Bad Request
*/
type CreateMatchFunctionBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchFunctionBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateMatchFunctionBadRequest) ToJSONString() string {
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

func (o *CreateMatchFunctionBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchFunctionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMatchFunctionUnauthorized creates a CreateMatchFunctionUnauthorized with default headers values
func NewCreateMatchFunctionUnauthorized() *CreateMatchFunctionUnauthorized {
	return &CreateMatchFunctionUnauthorized{}
}

/*CreateMatchFunctionUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateMatchFunctionUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchFunctionUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateMatchFunctionUnauthorized) ToJSONString() string {
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

func (o *CreateMatchFunctionUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchFunctionUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMatchFunctionForbidden creates a CreateMatchFunctionForbidden with default headers values
func NewCreateMatchFunctionForbidden() *CreateMatchFunctionForbidden {
	return &CreateMatchFunctionForbidden{}
}

/*CreateMatchFunctionForbidden handles this case with default header values.

  Forbidden
*/
type CreateMatchFunctionForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchFunctionForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateMatchFunctionForbidden) ToJSONString() string {
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

func (o *CreateMatchFunctionForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchFunctionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMatchFunctionConflict creates a CreateMatchFunctionConflict with default headers values
func NewCreateMatchFunctionConflict() *CreateMatchFunctionConflict {
	return &CreateMatchFunctionConflict{}
}

/*CreateMatchFunctionConflict handles this case with default header values.

  Conflict
*/
type CreateMatchFunctionConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchFunctionConflict) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateMatchFunctionConflict) ToJSONString() string {
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

func (o *CreateMatchFunctionConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchFunctionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateMatchFunctionInternalServerError creates a CreateMatchFunctionInternalServerError with default headers values
func NewCreateMatchFunctionInternalServerError() *CreateMatchFunctionInternalServerError {
	return &CreateMatchFunctionInternalServerError{}
}

/*CreateMatchFunctionInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateMatchFunctionInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchFunctionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-functions][%d] createMatchFunctionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateMatchFunctionInternalServerError) ToJSONString() string {
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

func (o *CreateMatchFunctionInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchFunctionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
