// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

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

// CreateBackfillReader is a Reader for the CreateBackfill structure.
type CreateBackfillReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateBackfillReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateBackfillCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateBackfillBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateBackfillUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateBackfillForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateBackfillNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateBackfillConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateBackfillInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/backfill returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateBackfillCreated creates a CreateBackfillCreated with default headers values
func NewCreateBackfillCreated() *CreateBackfillCreated {
	return &CreateBackfillCreated{}
}

/*CreateBackfillCreated handles this case with default header values.

  Created
*/
type CreateBackfillCreated struct {
	Payload *match2clientmodels.APIBackfillCreateResponse
}

func (o *CreateBackfillCreated) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateBackfillCreated) ToJSONString() string {
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

func (o *CreateBackfillCreated) GetPayload() *match2clientmodels.APIBackfillCreateResponse {
	return o.Payload
}

func (o *CreateBackfillCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(match2clientmodels.APIBackfillCreateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateBackfillBadRequest creates a CreateBackfillBadRequest with default headers values
func NewCreateBackfillBadRequest() *CreateBackfillBadRequest {
	return &CreateBackfillBadRequest{}
}

/*CreateBackfillBadRequest handles this case with default header values.

  Bad Request
*/
type CreateBackfillBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateBackfillBadRequest) ToJSONString() string {
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

func (o *CreateBackfillBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateBackfillUnauthorized creates a CreateBackfillUnauthorized with default headers values
func NewCreateBackfillUnauthorized() *CreateBackfillUnauthorized {
	return &CreateBackfillUnauthorized{}
}

/*CreateBackfillUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateBackfillUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateBackfillUnauthorized) ToJSONString() string {
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

func (o *CreateBackfillUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateBackfillForbidden creates a CreateBackfillForbidden with default headers values
func NewCreateBackfillForbidden() *CreateBackfillForbidden {
	return &CreateBackfillForbidden{}
}

/*CreateBackfillForbidden handles this case with default header values.

  Forbidden
*/
type CreateBackfillForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateBackfillForbidden) ToJSONString() string {
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

func (o *CreateBackfillForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateBackfillNotFound creates a CreateBackfillNotFound with default headers values
func NewCreateBackfillNotFound() *CreateBackfillNotFound {
	return &CreateBackfillNotFound{}
}

/*CreateBackfillNotFound handles this case with default header values.

  Not Found
*/
type CreateBackfillNotFound struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillNotFound) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillNotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateBackfillNotFound) ToJSONString() string {
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

func (o *CreateBackfillNotFound) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateBackfillConflict creates a CreateBackfillConflict with default headers values
func NewCreateBackfillConflict() *CreateBackfillConflict {
	return &CreateBackfillConflict{}
}

/*CreateBackfillConflict handles this case with default header values.

  Conflict
*/
type CreateBackfillConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillConflict) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateBackfillConflict) ToJSONString() string {
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

func (o *CreateBackfillConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateBackfillInternalServerError creates a CreateBackfillInternalServerError with default headers values
func NewCreateBackfillInternalServerError() *CreateBackfillInternalServerError {
	return &CreateBackfillInternalServerError{}
}

/*CreateBackfillInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateBackfillInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateBackfillInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/backfill][%d] createBackfillInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateBackfillInternalServerError) ToJSONString() string {
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

func (o *CreateBackfillInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateBackfillInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
