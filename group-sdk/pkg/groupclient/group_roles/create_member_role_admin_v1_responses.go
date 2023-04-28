// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_roles

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
)

// CreateMemberRoleAdminV1Reader is a Reader for the CreateMemberRoleAdminV1 structure.
type CreateMemberRoleAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateMemberRoleAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateMemberRoleAdminV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateMemberRoleAdminV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateMemberRoleAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateMemberRoleAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateMemberRoleAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /group/v1/admin/namespaces/{namespace}/roles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateMemberRoleAdminV1Created creates a CreateMemberRoleAdminV1Created with default headers values
func NewCreateMemberRoleAdminV1Created() *CreateMemberRoleAdminV1Created {
	return &CreateMemberRoleAdminV1Created{}
}

/*CreateMemberRoleAdminV1Created handles this case with default header values.

  Created
*/
type CreateMemberRoleAdminV1Created struct {
	Payload *groupclientmodels.ModelsMemberRoleResponseV1
}

func (o *CreateMemberRoleAdminV1Created) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/roles][%d] createMemberRoleAdminV1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateMemberRoleAdminV1Created) ToJSONString() string {
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

func (o *CreateMemberRoleAdminV1Created) GetPayload() *groupclientmodels.ModelsMemberRoleResponseV1 {
	return o.Payload
}

func (o *CreateMemberRoleAdminV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ModelsMemberRoleResponseV1)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateMemberRoleAdminV1BadRequest creates a CreateMemberRoleAdminV1BadRequest with default headers values
func NewCreateMemberRoleAdminV1BadRequest() *CreateMemberRoleAdminV1BadRequest {
	return &CreateMemberRoleAdminV1BadRequest{}
}

/*CreateMemberRoleAdminV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type CreateMemberRoleAdminV1BadRequest struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateMemberRoleAdminV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/roles][%d] createMemberRoleAdminV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateMemberRoleAdminV1BadRequest) ToJSONString() string {
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

func (o *CreateMemberRoleAdminV1BadRequest) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateMemberRoleAdminV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateMemberRoleAdminV1Unauthorized creates a CreateMemberRoleAdminV1Unauthorized with default headers values
func NewCreateMemberRoleAdminV1Unauthorized() *CreateMemberRoleAdminV1Unauthorized {
	return &CreateMemberRoleAdminV1Unauthorized{}
}

/*CreateMemberRoleAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateMemberRoleAdminV1Unauthorized struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateMemberRoleAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/roles][%d] createMemberRoleAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateMemberRoleAdminV1Unauthorized) ToJSONString() string {
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

func (o *CreateMemberRoleAdminV1Unauthorized) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateMemberRoleAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateMemberRoleAdminV1Forbidden creates a CreateMemberRoleAdminV1Forbidden with default headers values
func NewCreateMemberRoleAdminV1Forbidden() *CreateMemberRoleAdminV1Forbidden {
	return &CreateMemberRoleAdminV1Forbidden{}
}

/*CreateMemberRoleAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>20022</td><td>token is not user token</td></tr></table>
*/
type CreateMemberRoleAdminV1Forbidden struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateMemberRoleAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/roles][%d] createMemberRoleAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateMemberRoleAdminV1Forbidden) ToJSONString() string {
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

func (o *CreateMemberRoleAdminV1Forbidden) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateMemberRoleAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateMemberRoleAdminV1InternalServerError creates a CreateMemberRoleAdminV1InternalServerError with default headers values
func NewCreateMemberRoleAdminV1InternalServerError() *CreateMemberRoleAdminV1InternalServerError {
	return &CreateMemberRoleAdminV1InternalServerError{}
}

/*CreateMemberRoleAdminV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type CreateMemberRoleAdminV1InternalServerError struct {
	Payload *groupclientmodels.ResponseErrorResponse
}

func (o *CreateMemberRoleAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /group/v1/admin/namespaces/{namespace}/roles][%d] createMemberRoleAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateMemberRoleAdminV1InternalServerError) ToJSONString() string {
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

func (o *CreateMemberRoleAdminV1InternalServerError) GetPayload() *groupclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateMemberRoleAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(groupclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
