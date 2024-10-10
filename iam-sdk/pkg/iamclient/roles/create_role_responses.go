// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// CreateRoleReader is a Reader for the CreateRole structure.
type CreateRoleReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateRoleReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateRoleCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateRoleBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateRoleUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateRoleForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateRoleCreated creates a CreateRoleCreated with default headers values
func NewCreateRoleCreated() *CreateRoleCreated {
	return &CreateRoleCreated{}
}

/*CreateRoleCreated handles this case with default header values.

  Created
*/
type CreateRoleCreated struct {
	Payload *iamclientmodels.AccountcommonRole
}

func (o *CreateRoleCreated) Error() string {
	return fmt.Sprintf("[POST /iam/roles][%d] createRoleCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateRoleCreated) ToJSONString() string {
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

func (o *CreateRoleCreated) GetPayload() *iamclientmodels.AccountcommonRole {
	return o.Payload
}

func (o *CreateRoleCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.AccountcommonRole)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateRoleBadRequest creates a CreateRoleBadRequest with default headers values
func NewCreateRoleBadRequest() *CreateRoleBadRequest {
	return &CreateRoleBadRequest{}
}

/*CreateRoleBadRequest handles this case with default header values.

  Invalid request
*/
type CreateRoleBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateRoleBadRequest) Error() string {
	return fmt.Sprintf("[POST /iam/roles][%d] createRoleBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateRoleBadRequest) ToJSONString() string {
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

func (o *CreateRoleBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateRoleBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRoleUnauthorized creates a CreateRoleUnauthorized with default headers values
func NewCreateRoleUnauthorized() *CreateRoleUnauthorized {
	return &CreateRoleUnauthorized{}
}

/*CreateRoleUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateRoleUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateRoleUnauthorized) Error() string {
	return fmt.Sprintf("[POST /iam/roles][%d] createRoleUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateRoleUnauthorized) ToJSONString() string {
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

func (o *CreateRoleUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateRoleUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateRoleForbidden creates a CreateRoleForbidden with default headers values
func NewCreateRoleForbidden() *CreateRoleForbidden {
	return &CreateRoleForbidden{}
}

/*CreateRoleForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateRoleForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CreateRoleForbidden) Error() string {
	return fmt.Sprintf("[POST /iam/roles][%d] createRoleForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateRoleForbidden) ToJSONString() string {
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

func (o *CreateRoleForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CreateRoleForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
