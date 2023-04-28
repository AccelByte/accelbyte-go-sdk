// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// CreateUserFromInvitationV3Reader is a Reader for the CreateUserFromInvitationV3 structure.
type CreateUserFromInvitationV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateUserFromInvitationV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateUserFromInvitationV3Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateUserFromInvitationV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCreateUserFromInvitationV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateUserFromInvitationV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateUserFromInvitationV3Created creates a CreateUserFromInvitationV3Created with default headers values
func NewCreateUserFromInvitationV3Created() *CreateUserFromInvitationV3Created {
	return &CreateUserFromInvitationV3Created{}
}

/*CreateUserFromInvitationV3Created handles this case with default header values.

  Created
*/
type CreateUserFromInvitationV3Created struct {
	Payload *iamclientmodels.ModelUserCreateResponseV3
}

func (o *CreateUserFromInvitationV3Created) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV3Created  %+v", 201, o.ToJSONString())
}

func (o *CreateUserFromInvitationV3Created) ToJSONString() string {
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

func (o *CreateUserFromInvitationV3Created) GetPayload() *iamclientmodels.ModelUserCreateResponseV3 {
	return o.Payload
}

func (o *CreateUserFromInvitationV3Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelUserCreateResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateUserFromInvitationV3BadRequest creates a CreateUserFromInvitationV3BadRequest with default headers values
func NewCreateUserFromInvitationV3BadRequest() *CreateUserFromInvitationV3BadRequest {
	return &CreateUserFromInvitationV3BadRequest{}
}

/*CreateUserFromInvitationV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>10130</td><td>user under age</td></tr></table>
*/
type CreateUserFromInvitationV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateUserFromInvitationV3BadRequest) ToJSONString() string {
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

func (o *CreateUserFromInvitationV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateUserFromInvitationV3NotFound creates a CreateUserFromInvitationV3NotFound with default headers values
func NewCreateUserFromInvitationV3NotFound() *CreateUserFromInvitationV3NotFound {
	return &CreateUserFromInvitationV3NotFound{}
}

/*CreateUserFromInvitationV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10180</td><td>admin invitation not found or expired</td></tr><tr><td>10154</td><td>country not found</td></tr></table>
*/
type CreateUserFromInvitationV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV3NotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *CreateUserFromInvitationV3NotFound) ToJSONString() string {
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

func (o *CreateUserFromInvitationV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewCreateUserFromInvitationV3InternalServerError creates a CreateUserFromInvitationV3InternalServerError with default headers values
func NewCreateUserFromInvitationV3InternalServerError() *CreateUserFromInvitationV3InternalServerError {
	return &CreateUserFromInvitationV3InternalServerError{}
}

/*CreateUserFromInvitationV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreateUserFromInvitationV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateUserFromInvitationV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/public/namespaces/{namespace}/users/invite/{invitationId}][%d] createUserFromInvitationV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateUserFromInvitationV3InternalServerError) ToJSONString() string {
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

func (o *CreateUserFromInvitationV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateUserFromInvitationV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
