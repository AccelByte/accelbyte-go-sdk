// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package rule_sets

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

// CreateRuleSetReader is a Reader for the CreateRuleSet structure.
type CreateRuleSetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateRuleSetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateRuleSetCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateRuleSetBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateRuleSetUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateRuleSetForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateRuleSetConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateRuleSetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/rulesets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateRuleSetCreated creates a CreateRuleSetCreated with default headers values
func NewCreateRuleSetCreated() *CreateRuleSetCreated {
	return &CreateRuleSetCreated{}
}

/*CreateRuleSetCreated handles this case with default header values.

  Created
*/
type CreateRuleSetCreated struct {
}

func (o *CreateRuleSetCreated) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetCreated ", 201)
}

func (o *CreateRuleSetCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateRuleSetBadRequest creates a CreateRuleSetBadRequest with default headers values
func NewCreateRuleSetBadRequest() *CreateRuleSetBadRequest {
	return &CreateRuleSetBadRequest{}
}

/*CreateRuleSetBadRequest handles this case with default header values.

  Bad Request
*/
type CreateRuleSetBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateRuleSetBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateRuleSetBadRequest) ToJSONString() string {
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

func (o *CreateRuleSetBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRuleSetBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRuleSetUnauthorized creates a CreateRuleSetUnauthorized with default headers values
func NewCreateRuleSetUnauthorized() *CreateRuleSetUnauthorized {
	return &CreateRuleSetUnauthorized{}
}

/*CreateRuleSetUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateRuleSetUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateRuleSetUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateRuleSetUnauthorized) ToJSONString() string {
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

func (o *CreateRuleSetUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRuleSetUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRuleSetForbidden creates a CreateRuleSetForbidden with default headers values
func NewCreateRuleSetForbidden() *CreateRuleSetForbidden {
	return &CreateRuleSetForbidden{}
}

/*CreateRuleSetForbidden handles this case with default header values.

  Forbidden
*/
type CreateRuleSetForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateRuleSetForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateRuleSetForbidden) ToJSONString() string {
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

func (o *CreateRuleSetForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRuleSetForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRuleSetConflict creates a CreateRuleSetConflict with default headers values
func NewCreateRuleSetConflict() *CreateRuleSetConflict {
	return &CreateRuleSetConflict{}
}

/*CreateRuleSetConflict handles this case with default header values.

  Conflict
*/
type CreateRuleSetConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateRuleSetConflict) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateRuleSetConflict) ToJSONString() string {
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

func (o *CreateRuleSetConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRuleSetConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRuleSetInternalServerError creates a CreateRuleSetInternalServerError with default headers values
func NewCreateRuleSetInternalServerError() *CreateRuleSetInternalServerError {
	return &CreateRuleSetInternalServerError{}
}

/*CreateRuleSetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateRuleSetInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateRuleSetInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/rulesets][%d] createRuleSetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateRuleSetInternalServerError) ToJSONString() string {
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

func (o *CreateRuleSetInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateRuleSetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
