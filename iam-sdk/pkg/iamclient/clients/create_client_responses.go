// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// CreateClientReader is a Reader for the CreateClient structure.
type CreateClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateClientCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateClientBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateClientConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/clients returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateClientCreated creates a CreateClientCreated with default headers values
func NewCreateClientCreated() *CreateClientCreated {
	return &CreateClientCreated{}
}

/*CreateClientCreated handles this case with default header values.

  Created
*/
type CreateClientCreated struct {
	Payload *iamclientmodels.ClientmodelClientCreationResponse
}

func (o *CreateClientCreated) Error() string {
	return fmt.Sprintf("[POST /iam/clients][%d] createClientCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateClientCreated) ToJSONString() string {
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

func (o *CreateClientCreated) GetPayload() *iamclientmodels.ClientmodelClientCreationResponse {
	return o.Payload
}

func (o *CreateClientCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ClientmodelClientCreationResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateClientBadRequest creates a CreateClientBadRequest with default headers values
func NewCreateClientBadRequest() *CreateClientBadRequest {
	return &CreateClientBadRequest{}
}

/*CreateClientBadRequest handles this case with default header values.

  Invalid request
*/
type CreateClientBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/clients][%d] createClientBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateClientBadRequest) ToJSONString() string {
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

func (o *CreateClientBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateClientUnauthorized creates a CreateClientUnauthorized with default headers values
func NewCreateClientUnauthorized() *CreateClientUnauthorized {
	return &CreateClientUnauthorized{}
}

/*CreateClientUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateClientUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/clients][%d] createClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateClientUnauthorized) ToJSONString() string {
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

func (o *CreateClientUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateClientForbidden creates a CreateClientForbidden with default headers values
func NewCreateClientForbidden() *CreateClientForbidden {
	return &CreateClientForbidden{}
}

/*CreateClientForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateClientForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateClientForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/clients][%d] createClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateClientForbidden) ToJSONString() string {
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

func (o *CreateClientForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateClientConflict creates a CreateClientConflict with default headers values
func NewCreateClientConflict() *CreateClientConflict {
	return &CreateClientConflict{}
}

/*CreateClientConflict handles this case with default header values.

  Client exists
*/
type CreateClientConflict struct {
}

func (o *CreateClientConflict) Error() string {
	return fmt.Sprintf("[POST /iam/clients][%d] createClientConflict ", 409)
}

func (o *CreateClientConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
