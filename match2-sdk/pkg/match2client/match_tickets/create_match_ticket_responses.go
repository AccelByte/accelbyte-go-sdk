// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match_tickets

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

// CreateMatchTicketReader is a Reader for the CreateMatchTicket structure.
type CreateMatchTicketReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateMatchTicketReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateMatchTicketCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateMatchTicketBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateMatchTicketUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateMatchTicketForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateMatchTicketNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateMatchTicketConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateMatchTicketInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/match-tickets returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateMatchTicketCreated creates a CreateMatchTicketCreated with default headers values
func NewCreateMatchTicketCreated() *CreateMatchTicketCreated {
	return &CreateMatchTicketCreated{}
}

/*CreateMatchTicketCreated handles this case with default header values.

  Created
*/
type CreateMatchTicketCreated struct {
	Payload *match2clientmodels.APIMatchTicketResponse
}

func (o *CreateMatchTicketCreated) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateMatchTicketCreated) ToJSONString() string {
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

func (o *CreateMatchTicketCreated) GetPayload() *match2clientmodels.APIMatchTicketResponse {
	return o.Payload
}

func (o *CreateMatchTicketCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIMatchTicketResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateMatchTicketBadRequest creates a CreateMatchTicketBadRequest with default headers values
func NewCreateMatchTicketBadRequest() *CreateMatchTicketBadRequest {
	return &CreateMatchTicketBadRequest{}
}

/*CreateMatchTicketBadRequest handles this case with default header values.

  Bad Request
*/
type CreateMatchTicketBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateMatchTicketBadRequest) ToJSONString() string {
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

func (o *CreateMatchTicketBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchTicketUnauthorized creates a CreateMatchTicketUnauthorized with default headers values
func NewCreateMatchTicketUnauthorized() *CreateMatchTicketUnauthorized {
	return &CreateMatchTicketUnauthorized{}
}

/*CreateMatchTicketUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateMatchTicketUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateMatchTicketUnauthorized) ToJSONString() string {
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

func (o *CreateMatchTicketUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchTicketForbidden creates a CreateMatchTicketForbidden with default headers values
func NewCreateMatchTicketForbidden() *CreateMatchTicketForbidden {
	return &CreateMatchTicketForbidden{}
}

/*CreateMatchTicketForbidden handles this case with default header values.

  Forbidden
*/
type CreateMatchTicketForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateMatchTicketForbidden) ToJSONString() string {
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

func (o *CreateMatchTicketForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchTicketNotFound creates a CreateMatchTicketNotFound with default headers values
func NewCreateMatchTicketNotFound() *CreateMatchTicketNotFound {
	return &CreateMatchTicketNotFound{}
}

/*CreateMatchTicketNotFound handles this case with default header values.

  Not Found when the specified match pool does not exist
*/
type CreateMatchTicketNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketNotFound) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateMatchTicketNotFound) ToJSONString() string {
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

func (o *CreateMatchTicketNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchTicketConflict creates a CreateMatchTicketConflict with default headers values
func NewCreateMatchTicketConflict() *CreateMatchTicketConflict {
	return &CreateMatchTicketConflict{}
}

/*CreateMatchTicketConflict handles this case with default header values.

  Conflict
*/
type CreateMatchTicketConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketConflict) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateMatchTicketConflict) ToJSONString() string {
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

func (o *CreateMatchTicketConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchTicketInternalServerError creates a CreateMatchTicketInternalServerError with default headers values
func NewCreateMatchTicketInternalServerError() *CreateMatchTicketInternalServerError {
	return &CreateMatchTicketInternalServerError{}
}

/*CreateMatchTicketInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateMatchTicketInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchTicketInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-tickets][%d] createMatchTicketInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateMatchTicketInternalServerError) ToJSONString() string {
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

func (o *CreateMatchTicketInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchTicketInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
