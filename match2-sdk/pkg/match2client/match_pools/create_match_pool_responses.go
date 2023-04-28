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

// CreateMatchPoolReader is a Reader for the CreateMatchPool structure.
type CreateMatchPoolReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateMatchPoolReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateMatchPoolCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateMatchPoolBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateMatchPoolUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateMatchPoolForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateMatchPoolConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateMatchPoolInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /match2/v1/namespaces/{namespace}/match-pools returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateMatchPoolCreated creates a CreateMatchPoolCreated with default headers values
func NewCreateMatchPoolCreated() *CreateMatchPoolCreated {
	return &CreateMatchPoolCreated{}
}

/*CreateMatchPoolCreated handles this case with default header values.

  Created
*/
type CreateMatchPoolCreated struct {
}

func (o *CreateMatchPoolCreated) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolCreated ", 201)
}

func (o *CreateMatchPoolCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateMatchPoolBadRequest creates a CreateMatchPoolBadRequest with default headers values
func NewCreateMatchPoolBadRequest() *CreateMatchPoolBadRequest {
	return &CreateMatchPoolBadRequest{}
}

/*CreateMatchPoolBadRequest handles this case with default header values.

  Bad Request
*/
type CreateMatchPoolBadRequest struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchPoolBadRequest) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateMatchPoolBadRequest) ToJSONString() string {
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

func (o *CreateMatchPoolBadRequest) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchPoolBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchPoolUnauthorized creates a CreateMatchPoolUnauthorized with default headers values
func NewCreateMatchPoolUnauthorized() *CreateMatchPoolUnauthorized {
	return &CreateMatchPoolUnauthorized{}
}

/*CreateMatchPoolUnauthorized handles this case with default header values.

  Unauthorized
*/
type CreateMatchPoolUnauthorized struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchPoolUnauthorized) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateMatchPoolUnauthorized) ToJSONString() string {
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

func (o *CreateMatchPoolUnauthorized) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchPoolUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchPoolForbidden creates a CreateMatchPoolForbidden with default headers values
func NewCreateMatchPoolForbidden() *CreateMatchPoolForbidden {
	return &CreateMatchPoolForbidden{}
}

/*CreateMatchPoolForbidden handles this case with default header values.

  Forbidden
*/
type CreateMatchPoolForbidden struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchPoolForbidden) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateMatchPoolForbidden) ToJSONString() string {
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

func (o *CreateMatchPoolForbidden) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchPoolForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchPoolConflict creates a CreateMatchPoolConflict with default headers values
func NewCreateMatchPoolConflict() *CreateMatchPoolConflict {
	return &CreateMatchPoolConflict{}
}

/*CreateMatchPoolConflict handles this case with default header values.

  Conflict
*/
type CreateMatchPoolConflict struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchPoolConflict) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateMatchPoolConflict) ToJSONString() string {
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

func (o *CreateMatchPoolConflict) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchPoolConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateMatchPoolInternalServerError creates a CreateMatchPoolInternalServerError with default headers values
func NewCreateMatchPoolInternalServerError() *CreateMatchPoolInternalServerError {
	return &CreateMatchPoolInternalServerError{}
}

/*CreateMatchPoolInternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateMatchPoolInternalServerError struct {
	Payload *match2clientmodels.ResponseError
}

func (o *CreateMatchPoolInternalServerError) Error() string {
	return fmt.Sprintf("[POST /match2/v1/namespaces/{namespace}/match-pools][%d] createMatchPoolInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateMatchPoolInternalServerError) ToJSONString() string {
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

func (o *CreateMatchPoolInternalServerError) GetPayload() *match2clientmodels.ResponseError {
	return o.Payload
}

func (o *CreateMatchPoolInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
